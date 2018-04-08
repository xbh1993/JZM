<?php
namespace app\factory\validate;
use think\Validate;
class Company extends Validate{
    protected $rule=[
        'name'=>'require|min:2|max:43',
        'wages'=>'require',
        'times'=>'require',
        'address'=>'require',
        'img_urls'=>'require',
        'text'=>'require',
        'location'=>'require|min:12'
    ];
    protected $message=[
        'name.require'=>'工厂名称不能为空',
        'name.min'=>'工厂名称不能少于两个字符',
        'name.max'=>'工厂名称不能超过43字符',
        'wages.require'=>'薪资标准不能为空',
        'times.require'=>'工作时间不能为空',
        'address.require'=>'地址不能为空',
        'img_urls.require'=>'轮播图不能为空',
        'text.require'=>'详情介绍不能为空',
        'location.require'=>'地理位置不能为空',
        'location.min'=>'地理位置参数错误'
    ];
}