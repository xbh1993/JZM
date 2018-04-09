<?php

use think\Route;

Route::post('getopenid','api/index/getopenid');//获取openid，

Route::post('getuserinfo','api/index/getuserinfo');//获取保存用户信息

Route::get('getindex','api/index/getindex');//获取首页信息

Route::get('getcompany','api/index/getcompany');//获取工厂信息

Route::get('getcompanydetail','api/index/getcompanydetail');//获取工厂信息



