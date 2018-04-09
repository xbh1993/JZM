<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/4 0004
 * Time: 下午 3:43
 */

namespace app\admin\controller;
use think\Db;
use app\common\controller\Main;


class Company extends Main
{
    public function infos(){
        $cen=Db::name('company')->find();
        $this->assign('cen',$cen);
        return $this->fetch();

    }

}