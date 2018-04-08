<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/7 0007
 * Time: 上午 11:49
 */
namespace  app\admin\validate;
use  think\Validate;
class Center extends Validate{
    protected $rule=[
        'name'=>'require|min:2|max:40',
        'mobile'=>'require|number',
        'address'=>'require',
        'text'=>'require',
        'img_url'=>'require'
    ];
    protected  $message=[
        'name.require'=>'公司名称不能为空',
        'name.min'=>'公司名称不能少于两个字符',
        'name.max'=>'公司名称不能多于40个字符',
        'mobile.require'=>'联系方式不能不空',
        'mobile.number'=>'联系方式必须为数字',
        'text.require'=>'公司详情不能为空',
        'img_url.require'=>'轮播图不能为空',
        'address.require'=>'公司地址不能为空'
    ];
}