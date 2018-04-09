<?php
namespace app\api\controller;

use think\Request;

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
            if(!$info=Db::name('appuser')->where(['openid'=>$arr['openid']])->find()){
                Db::name('appuser')->insert($arr);
            }
            return json_code(0,'success');
        }
    }

}
