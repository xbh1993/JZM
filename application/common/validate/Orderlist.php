<?php
namespace app\common\validate;
use think\Validate;
class Orderlist extends Validate{
    protected $rule=[
        'name'=>'require|min:2|max:43',
        'mobile'=>'require|number',
        'id_card'=>'require',
        'school'=>'require',
        'qq'=>'require|number',
    ];
    protected $message=[
        'name.require'=>'姓名不能为空',
        'name.min'=>'姓名不能少于两个字符',
        'name.max'=>'姓名不能超过43字符',
        'mobile.require'=>'手机号码不能为空',
        'mobile.number'=>'手机号码必须为数字',
        'id_card.require'=>'身份证号码不能为空',
        'school.require'=>'所属学校不能为空',
        'qq.require'=>'QQ不能为空',
        'qq.number'=>'QQ必须为数字'
    ];
}