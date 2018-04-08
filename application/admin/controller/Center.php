<?php
namespace app\admin\controller;

use \think\Db;
use \think\Reuquest;
use  \app\common\controller\Main;
use \app\admin\model\Api as ApiModel;
use \app\admin\model\App as AppModel;

class Center extends Main{
    public function info(){
        if(request()->isPost()){
            $d=request()->post();
            $validate=validate('Center');
           if(!$validate->check($d)){
               $msg=$validate->getError();
               return json_code(0,$msg);
           }
            unset($d['images']);
            $d['img_url']=implode(',',$d['img_url']);
            try{
                Db::name('center')->update($d);
                return json_code(200,'修改成功');
            }catch (\Exception $e){
                return json_code(0,'修改失败');
            }
        }
    $cen=Db::name('center')->find();
    if(!empty($cen['img_url'])){
        $cen['img_url']=explode(',',$cen['img_url']);
    }
    $this->assign('cen',$cen);
       return $this->fetch();
    }
}