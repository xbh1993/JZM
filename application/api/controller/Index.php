<?php
namespace app\api\controller;

use think\Request;
use think\Db;
class Index extends Base
{

    protected $Appid = 'wx5eec1f3c640836ec';
    protected $AppSecret = "61394d9ee699b99d92bc11119ee8c01e";

    public function getopenid()
    {
        $code = request()->post('code');
        $url = 'https://api.weixin.qq.com/sns/jscode2session?appid=' . $this->Appid . '&secret=' . $this->AppSecret . '&js_code=' . $code . '&grant_type=authorization_code';
        $data = file_get_contents($url);
        $data = json_decode($data, true);
        return json_code(0, 'success', $data);
    }

    public function getuserinfo(){
        if(request()->isPost()){
            $d=request()->post();
            if(empty($d)) return json_code(0,'fail');
            $data=json_decode($d['data'],true);
            $arr=['nickName'=>$data['nickName'],'gender'=>$data['gender'],'avatarUrl'=>$data['avatarUrl'],'openid'=>$data['openid']];
            if(!$info=Db::name('vip')->where(['openid'=>$arr['openid']])->find()){
                Db::name('vip')->insert($arr);
            }
            return json_code(0,'success');
        }
    }

    public function getindex(){
        $info=Db::name('center')->where('id',1)->find();
        $location=explode(',',$info['location']);
        $info['img_url']=explode(',',$info['img_url']);
       $info['latitude']=$location[0];
        $info['longitude']=$location[1];
        return json_code(0,'success',$info);
    }
    public function  getcompany(){
        $info=Db::name('company')->select();
        return json_code(0,'success',$info);

    }
    public function getcompanydetail(){
        $data=request()->get();
        $id=$data['id'];
        $info=Db::name('company')->where('id',$id)->find();
        return json_code(0,'success',$info);
    }

    public function baoming(){
        if(request()->isPost()){
            $d=request()->post();
            $data=json_decode($d['data'],true);
           $validate=validate('Orderlist');
           if(!$validate->check($data)){
               $msg=$validate->getError();
               return json_code(0,$msg);
           }
           try{
               $data['create_time']=time();
               Db::name('orderlist')->insert($data);
               return json_code(1,'报名成功');
           }catch (\Exception $e){
               return json_code(0,'报名失败');
           }
        }
    }
}
