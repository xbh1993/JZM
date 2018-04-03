-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-01-26 16:36:56
-- 服务器版本： 5.5.58-log
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lotus_one`
--

-- --------------------------------------------------------

--
-- 表的结构 `lotus_api`
--

CREATE TABLE IF NOT EXISTS `lotus_api` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `is_token` varchar(255) DEFAULT '0',
  `app_id` int(11) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lotus_api`
--

INSERT INTO `lotus_api` (`id`, `name`, `base_url`, `hash`, `method`, `is_token`, `app_id`, `param`, `key`, `value`, `create_time`, `update_time`) VALUES
(1, 'test', 'https://www.lotusadmin.top/index/index/testPost.html', 'NGPJPXYFLBFCTASBXYMYJ97R5', 'no_limit', '0', NULL, 'id:2|name:999919999999999999999999999999999', NULL, NULL, 1511938273, 1516843876),
(45, '轮播图', 'https://www.lotusadmin.top/index/index/testPost.html', 'INW2BZIXLBZJXHZ4QD4QGBLQ2', 'no_limit', '1', NULL, 'id:1|name:活动1|image:http://www.baidu.com', NULL, NULL, 1516413527, 1516694611);

-- --------------------------------------------------------

--
-- 表的结构 `lotus_app`
--

CREATE TABLE IF NOT EXISTS `lotus_app` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `app_id` int(11) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lotus_app`
--

INSERT INTO `lotus_app` (`id`, `name`, `app_id`, `secret`, `create_time`, `update_time`) VALUES
(48, '67890', 83315454, 'T5TIKY52PXW92KI8T47YNCPY2', 1512900450, 1514554017),
(49, 'jjj', 89701605, 'CSOS6G1EX3PBE5QLWVOKJ4S4N', 1513262603, 1516368208),
(51, '33213213', 36632265, 'SJXMOASBN1F7ZD85V44FPFZD5', 1513749512, 1513749512),
(52, '66', 41119516, 'VG57ZSSDC1PN66QWHTQ167BXW', 1514170106, 1514170106),
(54, 'fff', 35381515, 'FW8R3HD2DK7UVSK1UNPWUX3VR', 1514337763, 1514337763),
(55, 'gggg', 17816116, 'V42T5EVD39Y19PHVQVKAP6AAM', 1514337920, 1514337920),
(61, '888', 82758191, '2584LUAXGDEF2OFJESDQKPAVC', 1515790384, 1515790384),
(62, '首页测试数据', 85221630, 'B3IXA9U7PRKQPBIJPJWBI6OVX', 1516412439, 1516412439),
(63, 'frsfsd', 62661704, 'LZ8UTZOZO6QFB8EY6HIX2UJC2', 1516606772, 1516606772),
(65, 'test11', 67203101, 'EA3NX4PARMR63RUMATX27A5IY', 1516694560, 1516694560),
(66, 'test11', 42597693, 'JGBRGA7EXDY8T5INDBJO6PHCE', 1516756425, 1516756425),
(67, 'ssdfgsdf', 62128950, 'IG4NT2KGVA72E1VRDEDFZBZUL', 1516760748, 1516760748),
(68, '11111111', 82120651, 'OPYRD3BIOUXV75556X34DAYCR', 1516760764, 1516760764);

-- --------------------------------------------------------

--
-- 表的结构 `lotus_article`
--

CREATE TABLE IF NOT EXISTS `lotus_article` (
  `id` int(10) unsigned NOT NULL COMMENT '文章ID',
  `cid` smallint(5) unsigned NOT NULL COMMENT '分类ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '内容',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 待审核  1 审核',
  `reading` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `is_recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐  0 不推荐  1 推荐',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime NOT NULL COMMENT '发布时间'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `lotus_article`
--

INSERT INTO `lotus_article` (`id`, `cid`, `title`, `introduction`, `content`, `author`, `status`, `reading`, `thumb`, `photo`, `is_top`, `is_recommend`, `sort`, `create_time`, `publish_time`) VALUES
(1, 1, '测试文章一', '', '<p>测试内容</p>', 'admin', 1, 0, '', NULL, 0, 0, 0, '2017-04-11 14:10:10', '2017-04-11 14:09:45');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_auth_group`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_group` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID'
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='权限组表';

--
-- 转存表中的数据 `lotus_auth_group`
--

INSERT INTO `lotus_auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理组', 1, '1,2,3,103'),
(185, '123', 1, '1,2,3,4,5,6,7,8,202,203,204'),
(186, '1111', 0, '5,6,211,7,8'),
(187, 'asdasdasd', 1, '1,2,3,5,6,7,8,202,203,209,210'),
(191, 'faff', 0, '5,6,7,8');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';

--
-- 转存表中的数据 `lotus_auth_group_access`
--

INSERT INTO `lotus_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(27, 2),
(28, 2),
(29, 50),
(30, 52),
(31, 54),
(32, 2),
(33, 64),
(34, 1),
(35, 52),
(36, 35),
(37, 52),
(38, 65),
(39, 59),
(40, 69),
(41, 69),
(42, 69),
(43, 61),
(44, 62),
(45, 64),
(46, 69),
(47, 70),
(48, 70),
(49, 70),
(50, 69),
(51, 70),
(52, 70),
(53, 70),
(54, 70),
(55, 1),
(56, 1),
(57, 72),
(58, 72),
(59, 72),
(60, 72),
(61, 1),
(62, 78),
(63, 78),
(64, 1),
(65, 117),
(66, 90),
(67, 90),
(68, 102),
(69, 102),
(70, 102),
(71, 106),
(72, 106),
(73, 112),
(74, 111),
(75, 78),
(76, 126),
(77, 1),
(78, 123),
(79, 1),
(80, 123),
(81, 129),
(82, 135),
(83, 129),
(84, 138),
(85, 137),
(86, 1),
(87, 138),
(88, 138),
(89, 138),
(90, 138),
(91, 117),
(92, 156),
(93, 156),
(94, 163),
(95, 164),
(96, 145),
(97, 172),
(98, 175),
(99, 1),
(100, 173),
(101, 180),
(102, 181),
(103, 185),
(104, 187),
(105, 187),
(106, 187);

-- --------------------------------------------------------

--
-- 表的结构 `lotus_auth_rule`
--

CREATE TABLE IF NOT EXISTS `lotus_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父级ID',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `sort` int(50) unsigned NOT NULL COMMENT '排序',
  `condition` char(100) DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 COMMENT='规则表';

--
-- 转存表中的数据 `lotus_auth_rule`
--

INSERT INTO `lotus_auth_rule` (`id`, `name`, `title`, `type`, `status`, `pid`, `icon`, `sort`, `condition`) VALUES
(1, 'admin/user/default', '用户管理', 1, 1, 0, 'xe68e', 10, ''),
(2, 'admin/user/userlist', '用户列表', 1, 1, 1, '', 0, ''),
(3, 'admin/auth/index', '权限管理', 1, 1, 1, '', 0, ''),
(4, 'admin/auth/showRole', '角色列表', 1, 1, 1, '', 0, ''),
(8, 'admin/api/app_list', '接口仓库', 1, 1, 7, '', 0, ''),
(5, 'admin/DbManage/default', '数据库', 1, 1, 0, 'xe631', 0, ''),
(6, 'admin/DbManage/index', '优化', 1, 1, 5, '', 0, ''),
(7, 'admin/api/default', '接口管理', 1, 1, 0, 'xe857', 100, ''),
(202, 'admin/file_system/index', '文件管理', 1, 1, 0, 'xe61d', 200, ''),
(203, 'sadasd', '一级菜单', 1, 1, 0, 'xe609', 20, ''),
(209, 'jhgjhghj', '二级', 1, 1, 203, 'xe660', 0, ''),
(210, 'jkjkh', '三级菜单', 1, 1, 209, '', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_category`
--

CREATE TABLE IF NOT EXISTS `lotus_category` (
  `id` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `alias` varchar(50) DEFAULT '' COMMENT '导航别名',
  `content` longtext COMMENT '分类内容',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `icon` varchar(20) DEFAULT '' COMMENT '分类图标',
  `list_template` varchar(50) DEFAULT '' COMMENT '分类列表模板',
  `detail_template` varchar(50) DEFAULT '' COMMENT '分类详情模板',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类类型  1  列表  2 单页',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  `create_time` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分类表';

--
-- 转存表中的数据 `lotus_category`
--

INSERT INTO `lotus_category` (`id`, `name`, `alias`, `content`, `thumb`, `icon`, `list_template`, `detail_template`, `type`, `sort`, `pid`, `path`, `create_time`) VALUES
(1, '分类一', '', '', '', '', '', '', 1, 0, 0, '0,', '2016-12-22 18:22:24');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_file`
--

CREATE TABLE IF NOT EXISTS `lotus_file` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lotus_file`
--

INSERT INTO `lotus_file` (`id`, `url`, `size`) VALUES
(78, '/public/uploads/20180122/110b27950ae3e564d25d444bed1d49f2.jpg', '25k'),
(79, '/public/uploads/20180122/f2490bd3510643a2a678f0050548ac4a.jpg', '157k');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_link`
--

CREATE TABLE IF NOT EXISTS `lotus_link` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) DEFAULT '' COMMENT '链接图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 显示  2 隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- --------------------------------------------------------

--
-- 表的结构 `lotus_nav`
--

CREATE TABLE IF NOT EXISTS `lotus_nav` (
  `id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  0 隐藏  1 显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

-- --------------------------------------------------------

--
-- 表的结构 `lotus_options`
--

CREATE TABLE IF NOT EXISTS `lotus_options` (
  `option_value` varchar(255) NOT NULL,
  `option_name` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lotus_slide`
--

CREATE TABLE IF NOT EXISTS `lotus_slide` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '轮播图名称',
  `description` varchar(255) DEFAULT '' COMMENT '说明',
  `link` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '轮播图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1 显示  0  隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- --------------------------------------------------------

--
-- 表的结构 `lotus_slide_category`
--

CREATE TABLE IF NOT EXISTS `lotus_slide_category` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

--
-- 转存表中的数据 `lotus_slide_category`
--

INSERT INTO `lotus_slide_category` (`id`, `name`) VALUES
(1, '首页轮播');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_system`
--

CREATE TABLE IF NOT EXISTS `lotus_system` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

--
-- 转存表中的数据 `lotus_system`
--

INSERT INTO `lotus_system` (`id`, `name`, `value`) VALUES
(1, 'site_config', 'a:7:{s:10:"site_title";s:30:"Think Admin 后台管理系统";s:9:"seo_title";s:0:"";s:11:"seo_keyword";s:0:"";s:15:"seo_description";s:0:"";s:14:"site_copyright";s:0:"";s:8:"site_icp";s:0:"";s:11:"site_tongji";s:0:"";}');

-- --------------------------------------------------------

--
-- 表的结构 `lotus_user`
--

CREATE TABLE IF NOT EXISTS `lotus_user` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态  1 正常  2 禁止',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP'
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lotus_api`
--
ALTER TABLE `lotus_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_app`
--
ALTER TABLE `lotus_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `lotus_article`
--
ALTER TABLE `lotus_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_auth_group`
--
ALTER TABLE `lotus_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_auth_group_access`
--
ALTER TABLE `lotus_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `lotus_auth_rule`
--
ALTER TABLE `lotus_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `lotus_category`
--
ALTER TABLE `lotus_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_file`
--
ALTER TABLE `lotus_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_link`
--
ALTER TABLE `lotus_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_nav`
--
ALTER TABLE `lotus_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_options`
--
ALTER TABLE `lotus_options`
  ADD PRIMARY KEY (`option_value`);

--
-- Indexes for table `lotus_slide`
--
ALTER TABLE `lotus_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_slide_category`
--
ALTER TABLE `lotus_slide_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_system`
--
ALTER TABLE `lotus_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lotus_user`
--
ALTER TABLE `lotus_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lotus_api`
--
ALTER TABLE `lotus_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `lotus_app`
--
ALTER TABLE `lotus_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `lotus_article`
--
ALTER TABLE `lotus_article`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_auth_group`
--
ALTER TABLE `lotus_auth_group`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `lotus_auth_rule`
--
ALTER TABLE `lotus_auth_rule`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `lotus_category`
--
ALTER TABLE `lotus_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_file`
--
ALTER TABLE `lotus_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `lotus_link`
--
ALTER TABLE `lotus_link`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotus_nav`
--
ALTER TABLE `lotus_nav`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotus_slide`
--
ALTER TABLE `lotus_slide`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotus_slide_category`
--
ALTER TABLE `lotus_slide_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_system`
--
ALTER TABLE `lotus_system`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lotus_user`
--
ALTER TABLE `lotus_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;

