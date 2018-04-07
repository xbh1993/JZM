<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/4 0004
 * Time: 上午 10:25
 */
namespace  app\vip\controller;
use think\Controller;
use think\Db;
use  \app\common\controller\Main;
class vip extends Main{
    public function agent(){
       $lists=Db::name('vip')->paginate(8);
       $this->assign('lists',$lists);
       return $this->fetch();
    }
    public function normalvip(){
        $lists=Db::name('vip')->paginate(8);
        $this->assign('lists',$lists);
        return $this->fetch();
    }
}