<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;

class Feedback extends Admin
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

            $data['data'] = Db::table('c_feedback')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();

            $data['count'] = Db::table('c_feedback')->where($where)->count('id');
            $data['code'] = 0;
            $data['msg'] = '';
            return json($data);
        }

        return $this->fetch();
    }

    public function info(){
        $id = get_num();
        $info = Db::table("c_feedback")->where('id' , $id)->find();


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
            $res = Db::table('c_feedback')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_feedback')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }
}