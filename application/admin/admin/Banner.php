<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;

class Banner extends Admin
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

            $data['data'] = Db::table('c_banner')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();
            foreach ($data['data'] as $k => $v){
                $data['data'][$k]['image'] = "<img src='".$v['image']."' style='width:100px;' />";
                if ($v['type'] == 1){
                    $data['data'][$k]['data_id'] = Db::table('c_product')->where('id' , $v['data_id'])->value('product_name');
                    $data['data'][$k]['type'] = '产品';
                } else if ($v['type'] == 2){
                    $data['data'][$k]['data_id'] = Db::table('c_laboratory')->where('id' , $v['data_id'])->value('laboratory_name');
                    $data['data'][$k]['type'] = '实训室';
                } else if ($v['type'] == 3){
                    $data['data'][$k]['data_id'] = Db::table('c_case')->where('id' , $v['data_id'])->value('title');
                    $data['data'][$k]['type'] = '院校案例';
                } else {
                    $data['data'][$k]['data_id'] = '未知';
                    $data['data'][$k]['type'] = '未知';
                }
            }
            $data['count'] = Db::table('c_banner')->where($where)->count('id');
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

//            $data['image'] = str_replace('/warehouse/hisiphp/public' , '' , $data['image']);
            $data['c_time'] = time();

            $res = Db::table("c_banner")->insert($data);

            if (!$res) {
                return $this->error('添加失败');
            }
            return $this->success('添加成功');
        }
        return $this->fetch();
    }

    //根据type类型获取数据
    function get_data(){
        $type = $this->request->post('type');

        switch ($type){
            case 1:
                $list = Db::table('c_product')->field(['id' , 'product_name'])->select();
                break;
            case 2:
                $list = Db::table('c_laboratory')->field(['id' , 'laboratory_name'])->select();
                break;
            case 3:
                $list = Db::table('c_case')->field(['id' , 'title'])->select();
                break;
            case 0:
                $list = '';
                break;
        }

        return $list;
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

//            $data['image'] = str_replace('/warehouse/hisiphp/public' , '' , $data['image']);
            $data['c_time'] = time();

            $res = Db::table("c_banner")->update($data);

            if (!$res) {
                return $this->error('修改失败');
            }
            return $this->success('修改成功');
        }

        $id = get_num();
        $info = Db::table("c_banner")->where('id' , $id)->find();


        $this->assign('info' , $info);
        return $this->fetch();
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
            $res = Db::table('c_banner')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_banner')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }
}