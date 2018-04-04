<?php
namespace app\admin\controller;

use \think\Db;
use \think\Reuquest;
use  \app\common\controller\Main;
use \app\admin\model\Api as ApiModel;
use \app\admin\model\App as AppModel;

class Center extends Main{
    public function info(){
    $cen=Db::name('center')->find();
    $this->assign('cen',$cen);
    dump($cen);
       return $this->fetch();
    }
}