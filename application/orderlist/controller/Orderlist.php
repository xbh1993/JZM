<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/4 0004
 * Time: 上午 10:25
 */
namespace  app\orderlist\controller;
use think\Db;
use think\Controller;
use think\Request;
use  \app\common\controller\Main;
class orderlist extends Main{
    public function lists(){
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
        $lists=Db::name('center')->find();
        if(!empty($lists['img_url'])){
            $lists['img_url']=explode(',',$lists['img_url']);
        }
        $this->assign('lists',$lists);
        return $this->fetch();
    }
}
