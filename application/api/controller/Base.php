<?php
namespace app\api\controller;

use think\Controller;
use think\Request;
use think\Loader;

class Base extends Controller
{
	/**
     * 构造函数
     * @param Request $request Request对象
     * @access public
    */
    public function _initialize()
    {
       $str='ok';
    }

}