<?php
namespace app\admin\controller;

use \think\Db;
use \think\Reuquest;
use  \app\common\controller\Main;
use \app\admin\model\Api as ApiModel;
use \app\admin\model\App as AppModel;

class Center extends Main{
    public function info(){

       return $this->fetch();
    }
}