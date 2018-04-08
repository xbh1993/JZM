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
        $lists=Db::name('orderlist')->paginate(8);
        if(!empty($lists['img_url'])){
            $lists['img_url']=explode(',',$lists['img_url']);
        }
        $this->assign('lists',$lists);
        return $this->fetch();
    }
}
