<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;
use app\common\model\SystemAnnex as AnnexModel;

class Broadcast extends Admin
{
    protected $hisiModel = '';//模型名称[通用添加、修改专用]
    protected $hisiTable = '';//表名称[通用添加、修改专用]
    protected $hisiAddScene = '';//添加数据验证场景名
    protected $hisiEditScene = '';//更新数据验证场景名

    public function index(){
        if ($this->request->isAjax()) {
            $where      = $data = [];
            $page       = $this->request->param('page/d', 1);
            $limit      = $this->request->param('limit/d' , 200);

//            echo $keyword;
            $where[]    = ['1' , 'eq' , 1];

            $data['data'] = Db::table('c_broadcast')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();
            foreach ($data['data'] as $k => $v){
                $data['data'][$k]['image'] = "<img src='".$v['image']."' style='width:100px;' />";
                $data['data'][$k]['video'] = "<a target='_blank' style='text-decoration:underline;' href='".$v['video']."'>点击播放</a>";
            }
            $data['count'] = Db::table('c_broadcast')->where($where)->count('id');
            $data['code'] = 0;
            $data['msg'] = '';
            return json($data);
        }

        return $this->fetch();
    }


    /**
     * 添加操作
     * isPost内执行添加操作
     * 下面是显示添加页面
     */
    public function add(){
        if ($this->request->isPost()) {
            $data = $this->request->post();

            $data['c_time'] = time();

            $res = Db::table("c_broadcast")->insert($data);

            if (!$res) {
                return $this->error('添加失败');
            }
            return $this->success('添加成功');
        }

        return $this->fetch();
    }

    //是否在首页展示
    public function status(){
        if ($this->request->isAjax()) {
            $where      = $data = [];
            $id       = $this->request->param('id/d', 1);
            $value      = $this->request->param('val/d');

//            return $id.'----'.$value;
//            echo $keyword;
            $data['id'] = $id;
            $data['status'] = $value;

            $result = Db::table('c_broadcast')->update($data);
            if ($result){
                $data['code'] = 1;
                $data['msg'] = '操作成功';
            } else {
                $data['code'] = 0;
                $data['msg'] = '操作失败';
            }
            return json($data);
        }
    }

    /**
     * 编辑操作
     * isPost内执行修改操作
     * get_num()调取公共方法，默认取值为id如有改变参数请填写
     * 下面是显示修改页面
     */
    public function edit(){
        if ($this->request->isPost()) {
            $data = $this->request->post();

            $data['c_time'] = time();

            $res = Db::table("c_broadcast")->update($data);

            if (!$res) {
                return $this->error('修改失败');
            }
            return $this->success('修改成功');
        }

        $id = get_num();
        $info = Db::table("c_broadcast")->where('id' , $id)->find();

        $this->assign('info' , $info);
        return $this->fetch();
    }

    public function upload_file($type = ""){
//        var_dump($_FILES["file"]["name"]);
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move('./upload/broadcast/'.$type.'/');
//        echo $info->getSaveName();
//        die();
        if ( $info ){
            // 成功上传后 获取上传信息
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            return json(['path' => '/upload/broadcast/'.$type.'/' . str_replace('\\','/',$info->getSaveName())]);
        } else {
            // 上传失败获取错误信息
            return 'cuowu';
        }
    }

    /* *
     * 删除方法
     * isPost内是多条件删除
     * get_num()调取公共方法，默认取值为id如有改变参数请填写
     * 下面是单条件删除
     */
    public function del(){

        if ($this->request->isPost()){
            $ids = $this->request->post('id');

            $id_str = implode(',' , $ids);
            $res = Db::table('c_broadcast')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_broadcast')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }

}