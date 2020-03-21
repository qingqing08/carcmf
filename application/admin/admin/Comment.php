<?php
namespace app\admin\admin;
use app\system\admin\Admin;
use think\Db;

class Comment extends Admin
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
            $type      = $this->request->param('type/s');
            $date       = $this->request->param('date/s');

//            echo $keyword;
            $where[]    = ['1' , 'eq' , 1];
            if (!empty($type)){
                $where[]    = ['type' , '=' , $type];
            }

            if ($date) {
                $arr = explode('-' , $date);
                $where[] = ['c_time', 'between', strtotime(trim($arr[0] , ' '))."," .strtotime(trim($arr[1] , ' '))];
            }

            $data['data'] = Db::table('c_comment')->where($where)->page($page)->limit($limit)->order('c_time' , 'desc')->select();
//            print_r($data['data']);die;
            foreach ($data['data'] as $key=>$val){
                $data['data'][$key]['user_id'] = urldecode(Db::table('c_wx_user')->where('id' , $val['user_id'])->value('nickname'));
                switch ($val['type']){
                    case 1:
                        $data['data'][$key]['data_id'] = Db::table('c_product')->where('id' , $val['data_id'])->value('product_name');
                        $data['data'][$key]['type'] = "产品";
                        break;
                    case 2:
                        $data['data'][$key]['data_id'] = Db::table('c_laboratory')->where('id' , $val['data_id'])->value('laboratory_name');
                        $data['data'][$key]['type'] = "实训室";
                        break;
                    case 3:
                        $data['data'][$key]['data_id'] = Db::table('c_case')->where('id' , $val['data_id'])->value('title');
                        $data['data'][$key]['type'] = "案例";
                        break;
                    case 4:
                        $data['data'][$key]['data_id'] = Db::table('c_videos')->where('id' , $val['data_id'])->value('video_name');
                        $data['data'][$key]['type'] = "视频库";
                        break;
                }
                $data['data'][$key]['c_time'] = date("Y-m-d H:i:s" , $val['c_time']);
            }

            $data['count'] = Db::table('c_comment')->where($where)->count('id');
            $data['code'] = 0;
            $data['msg'] = '';
            return json($data);
        }

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
            $res = Db::table('c_comment')->where('id' , 'in' , $id_str)->delete();
            if (!$res){
                return $this->error('删除失败');
            }

            return $this->success("删除成功");
        }
        $id = get_num();

        $res = Db::table('c_comment')->where('id' , $id)->delete();
        if (!$res){
            return $this->error('删除失败');
        }

        return $this->success('删除成功');
    }
}