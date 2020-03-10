<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;

class Cases extends Admin
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

            $data['data'] = Db::table('c_case')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();

            foreach ($data['data'] as $key=>$val){
                $data['data'][$key]['category_id'] = Db::table('c_case_category')->where('id' , $val['category_id'])->value('name');
                $data['data'][$key]['image'] = "<img src='".$val['image']."' style='width:100px;' />";
            }
            $data['count'] = Db::table('c_case')->where($where)->count('id');
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

            $res = Db::table("c_case")->insert($data);

            if (!$res) {
                return $this->error('添加失败');
            }
            return $this->success('添加成功');
        }

        $category_list = Db::table('c_case_category')->select();

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

//            $data['image'] = str_replace('/warehouse/hisiphp/public' , '' , $data['image']);
            $data['c_time'] = time();

            $res = Db::table("c_case")->update($data);

            if (!$res) {
                return $this->error('修改失败');
            }
            return $this->success('修改成功');
        }

        $id = get_num();
        $info = Db::table("c_case")->where('id' , $id)->find();


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
            $res = Db::table('c_case')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_case')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }
}