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
        halt(12131);
    }
    public function addtest(){
        halt(123);
    }
}