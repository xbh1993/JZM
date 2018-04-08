<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/8 0008
 * Time: 下午 2:15
 */
namespace app\orderlist\validate;
use think\Validate;
class Orderlist extends Validate
{
    protected $rule=[
        'name'=>'require|min:2|max:40',
        'gender'=>'require',
        'mobile'=>'require|number|min:9|max:11',
        'school'=>'school',
        'qq'=>'require',
    ];
    protected  $message=[
        'name.require'=>'公司名称不能为空',
        'name.min'=>'公司名称不能少于两个字符',
        'name.max'=>'公司名称不能多于40个字符',
        'gender.require'=>'性别不能为空',
        'mobile.require'=>'联系方式不能不空',
        'mobile.number'=>'联系方式必须为数字',
        'qq.require'=>'qq不能为空',
        'school.require'=>'学校不能为空',
        'mobile.min'=>'电话号码最少为9位数字',
        'mobile.max'=>'电话号码最多11位数字'
    ];
}