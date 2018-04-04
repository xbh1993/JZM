<?php
namespace app\admin\controller;
use  \app\common\controller\Main;
class System extends Main
{
	/**
     * 配置页面展示
    */
    public function siteConfig()
    {
        return $this->fetch();
    }

}
