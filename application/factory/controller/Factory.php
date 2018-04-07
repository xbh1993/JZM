<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/4 0004
 * Time: 上午 10:25
 */
namespace app\factory\controller;

use think\Controller;
use think\Db;
use  \app\common\controller\Main;

class factory extends Main
{
    public function lists()
    {
        $lists = Db::name('company')->paginate(8);
        $this->assign('lists', $lists);
        return $this->fetch();
    }

    public function showAdd()
    {
        if (request()->isPost()) {
            $d = request()->post();
            if (empty($d)) return json_code(0, '参数错误');
            if (empty($d['img_urls'])) return json_code(0, '参数错误');
            $d['img_urls'] = serialize($d['img_urls']);
            $validate = validate('company');
            if (!$validate->check($d)) return json_code(0, $validate->getError());
            try {
                unset($d['images']);
                $d['create_time'] = time();
                Db::name('company')->insert($d);
                return json_code(200, '上传成功');
            } catch (\Exception $e) {
                return json_code(0, '系统错误');
            }

        }
        return $this->fetch('add');
    }

    public function uploadimg()
    {
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('images');
        // 移动到框架应用根目录/public/uploads/ 目录下
        if ($file) {
            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if ($info) {
                $url = $info->getSaveName();
                $urls = '/public/uploads/' . $url;
                return json_code(200, 'success', ['url' => $urls]);
            } else {
                // 上传失败获取错误信息
                echo $file->getError();
            }
        }
    }

    public function edit()
    {
        if (request()->isGet()) {
            $id = request()->get('id');
            if (empty($id)) return json_code(0, '系统错误');
            $info = Db::name('company')->find($id);
            $info['img_urls'] = unserialize($info['img_urls']);
            $this->assign('info', $info);
            return $this->fetch();
        }
        if (request()->isPost()) {
            $d = request()->post();
            $validate = validate('company');
            unset($d['images']);
            $d['img_urls'] = serialize($d['img_urls']);
            if (!$validate->check($d)) return json_code(0, $validate->getError());
            try {
                $d['update_time'] = time();
                Db::name('company')->update($d);
                return json_code(200, '修改成功');
            } catch (\Exception $e) {

            }
        }
    }

    public function delCompany()
    {
        if (request()->isPost()) {
            $d = request()->post();
            $where=[];
            if (empty($d)) return json_code(0, '参数错误');
            if (isset($d['id']) && is_numeric($d['id'])) {
                $where['id'] = $d['id'];
            }
            if (isset($d['data']) && !empty($d['data'])) {
                $where['id'] = ['in',  $d['data']];
            }
            try {
                $info= Db::name('company')->where($where)->update(['types'=>0]);
                return json_code(200, '修改成功');
            } catch (\Exception $e) {
                return json_code(0, '系统错误');
            }
        }
    }
}