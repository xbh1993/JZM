<?php
namespace app\common\controller;
use think\Db;
use think\Controller;
class Upload extends  Controller{
    public  function uploadimg(){
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('images');
        // 移动到框架应用根目录/public/uploads/ 目录下
        if($file){
            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                $str=$info->getSaveName();
               $url='/public/uploads/'.$str;
               return json_code(200,'success',['url'=>$url]);
            }else{
                // 上传失败获取错误信息
                echo $file->getError();
            }
        }
    }
}

