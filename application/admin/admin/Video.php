<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;
use app\common\model\SystemAnnex as AnnexModel;

class Video extends Admin
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

            $data['data'] = Db::table('c_videos')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();
            foreach ($data['data'] as $k => $v){
                $data['data'][$k]['image'] = "<img src='".$v['image']."' style='width:100px;' />";
                $data['data'][$k]['vc_id'] = Db::table('c_video_category')->where('id' , $v['vc_id'])->value('name');
                if ($v['type'] == 1){
                    $data['data'][$k]['type'] = '维修案例';
                }
                if ($v['type'] == 2){
                    $data['data'][$k]['type'] = '产品讲解';
                }
            }
            $data['count'] = Db::table('c_videos')->where($where)->count('id');
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

            $res = Db::table("c_videos")->insert($data);

            if (!$res) {
                return $this->error('添加失败');
            }
            return $this->success('添加成功');
        }

        $category_list = Db::table('c_video_category')->select();
        $this->assign('category_list' , $category_list);
        return $this->fetch();
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

            $res = Db::table("c_videos")->update($data);

            if (!$res) {
                return $this->error('修改失败');
            }
            return $this->success('修改成功');
        }

        $id = get_num();
        $info = Db::table("c_videos")->where('id' , $id)->find();


        $category_list = Db::table('c_video_category')->select();
        $this->assign('category_list' , $category_list);
        $this->assign('info' , $info);
        return $this->fetch();
    }

    public function upload($from = 'input', $group = 'sys', $water = '', $thumb = '', $thumb_type = '', $input = 'file'){
        $arr = AnnexModel::upload($from, $group, $water, $thumb, $thumb_type, $input);

//        print_r($arr);die;
        if ($arr['code'] == 1){
            $new_arr = [
                "code"  =>  0,
                "msg"   =>  $arr['msg'],
                "data"  =>  [
                    "src"   =>  $arr['data']['file'],
                ],
            ];
        }
        return json($new_arr);
    }

    public function upload_file($type = ""){
//        var_dump($_FILES["file"]["name"]);
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move('./upload/laboratory/'.$type.'/');
//        echo $info->getSaveName();
//        die();
        if ( $info ){
            // 成功上传后 获取上传信息
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            return json(['path' => '/upload/laboratory/'.$type.'/' . str_replace('\\','/',$info->getSaveName())]);
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
            $res = Db::table('c_videos')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_videos')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }

    //设置主推视频列表
    public function main(){
        if ($this->request->isAjax()) {
            $where      = $data = [];
            $page       = $this->request->param('page/d', 1);
            $limit      = $this->request->param('limit/d' , 200);

//            echo $keyword;
            $where[]    = ['1' , 'eq' , 1];

            $data['data'] = Db::table('c_video_main')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();
            foreach ($data['data'] as $k => $v){
                $data['data'][$k]['image'] = "<img src='".$v['image']."' style='width:100px;' />";
                $data['data'][$k]['data_id'] = Db::table('c_videos')->where('id' , $v['data_id'])->value('video_name');
            }
            $data['count'] = Db::table('c_video_main')->where($where)->count('id');
            $data['code'] = 0;
            $data['msg'] = '';
            return json($data);
        }

        return $this->fetch();
    }

    /**
     * 添加主推视频操作
     * isPost内执行添加操作
     * 下面是显示添加页面
     */
    public function add_main(){
        if ($this->request->isPost()) {
            $data = $this->request->post();

            $data['c_time'] = time();

            $res = Db::table("c_video_main")->insert($data);

            if (!$res) {
                return $this->error('添加失败');
            }
            return $this->success('添加成功');
        }

        $video_list = Db::table('c_videos')->select();
        $this->assign('video_list' , $video_list);
        return $this->fetch();
    }


    /**
     * 编辑主推视频操作
     * isPost内执行修改操作
     * get_num()调取公共方法，默认取值为id如有改变参数请填写
     * 下面是显示修改页面
     */
    public function edit_main(){
        if ($this->request->isPost()) {
            $data = $this->request->post();

            $data['c_time'] = time();

            $res = Db::table("c_video_main")->update($data);

            if (!$res) {
                return $this->error('修改失败');
            }
            return $this->success('修改成功');
        }

        $id = get_num();
        $info = Db::table("c_video_main")->where('id' , $id)->find();


        $video_list = Db::table('c_videos')->select();
        $this->assign('video_list' , $video_list);
        $this->assign('info' , $info);
        return $this->fetch();
    }
}