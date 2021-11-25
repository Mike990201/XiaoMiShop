-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-25 10:55:37
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mi`
--

-- --------------------------------------------------------

--
-- 表的结构 `bannerlist`
--

CREATE TABLE `bannerlist` (
  `id` int(10) NOT NULL,
  `blname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `bannerlist`
--

INSERT INTO `bannerlist` (`id`, `blname`) VALUES
(0, '手机 电话卡'),
(1, '电视 盒子'),
(2, '笔记本 显示器'),
(3, '家电 插线板'),
(4, '出行 穿戴'),
(5, '智能 路由器'),
(6, '电源 配件'),
(7, '健康 儿童'),
(8, '耳机 音箱'),
(9, '生活 箱包');

-- --------------------------------------------------------

--
-- 表的结构 `hnav`
--

CREATE TABLE `hnav` (
  `id` int(10) NOT NULL,
  `hnavname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `hnav`
--

INSERT INTO `hnav` (`id`, `hnavname`) VALUES
(0, '小米手机'),
(1, 'Redmi 红米'),
(2, '电视'),
(3, '笔记本'),
(4, '家电'),
(5, '路由器'),
(6, '智能硬件'),
(7, '服务'),
(8, '社区');

-- --------------------------------------------------------

--
-- 表的结构 `jdcontent`
--

CREATE TABLE `jdcontent` (
  `id` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `rname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rdesc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fprice` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `rprice` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `rsrc` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `jdcontent`
--

INSERT INTO `jdcontent` (`id`, `type`, `rname`, `rdesc`, `fprice`, `rprice`, `rsrc`) VALUES
(0, 1, '小米全面屏电视65英寸 E65X', '全面屏设计', '2999元', '3299元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/03a9e7e96a09d256ca1badeec186c859.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(1, 1, '全面屏电视E43K', '全面屏设计,海量内容', '1399元', '1599元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/20d36fbaa18625e4fe507af31e4e9f83.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(2, 1, '小米电视4A 70英寸', '大屏更享受', '3599元', '3999元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9d8674cd21c486feff5328772ab9cf01.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(3, 1, '米家互联网对开门冰箱 540L', '重磅新品福利特惠', '2899元', '3699元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6bed167fc905bab57dee478bcf1e5e0d.JPG?thumb=1&w=200&h=200&f=webp&q=90'),
(4, 1, 'Redmi全自动波轮洗衣机1A 8kg', '一键操作,父母都爱用', '799元', '899元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b8c63a2024528fe5410ebe669b7d2407.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(5, 1, '米家互联网烟灶套装(天然气)', '点火排烟,风随火动', '1999元', '2298元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7e5f89adf98ab3fccb34012b5209cd58.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(6, 1, '米家电烤箱', '全能烘焙体验', '299元', '', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1612c93ad4756215774a0dbec7a81bb2.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(7, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(8, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(9, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(10, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(11, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(12, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(13, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(14, 2, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(15, 3, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '699元', '999元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(16, 3, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '699元', '999元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(17, 3, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '699元', '999元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(18, 3, 'Redmi AirDots 2真无线蓝牙耳机', '支持蓝牙5.0，自动秒连，拿起就能用', '699元', '999元', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d9e8308f5f55bfa69c5c7fadc7cb4aa.jpg?thumb=1&w=200&h=200&f=webp&q=90'),
(19, 4, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(20, 4, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(21, 4, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg'),
(22, 4, '米兔折叠婴儿推车', '出发去向往的地方', '699元', '999元', 'https://i8.mifile.cn/b2c-mimall-media/18a82e7cda6ecbc22ecee7ac927d6ff9!200x200.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `jdlist`
--

CREATE TABLE `jdlist` (
  `id` int(10) NOT NULL,
  `src` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `jdlist`
--

INSERT INTO `jdlist` (`id`, `src`, `title`) VALUES
(0, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/431e5fd6bfd1b67d096928248be18303.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '手机'),
(1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/41d16e66381cfeda7b6b39ab67678d5e.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '家电'),
(2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/59e8fc8ba9718c266882719fb4bbcedd.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '智能'),
(3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1c79d1e322e91e187cfc40af08e47977.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '搭配'),
(4, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/89c2a209b742fce9b10d9d196149d634.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '配件'),
(5, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/66523a1accdc72e01c01d4761a26fbb9.jpg?thumb=1&w=1226&h=120&f=webp&q=90', '视频');

-- --------------------------------------------------------

--
-- 表的结构 `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `login`
--

INSERT INTO `login` (`id`, `username`, `pwd`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `nav`
--

CREATE TABLE `nav` (
  `id` int(10) NOT NULL,
  `navname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `nav`
--

INSERT INTO `nav` (`id`, `navname`) VALUES
(0, '小米商城'),
(1, 'MIUI'),
(2, 'loT'),
(3, '云服务'),
(4, '天星数科'),
(5, '有品'),
(6, '小爱开放平台'),
(7, '企业团购'),
(8, '资质证照'),
(9, '协议规则'),
(10, '下载app'),
(11, '智能生活'),
(12, 'Select Location');

-- --------------------------------------------------------

--
-- 表的结构 `swiper`
--

CREATE TABLE `swiper` (
  `id` int(10) NOT NULL,
  `src` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `swiper`
--

INSERT INTO `swiper` (`id`, `src`) VALUES
(0, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/268aadece1368da98fcf5553b657cdb3.jpg?w=2452&h=920'),
(1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7f2e0acc18c3d9b6a9c1ab9e8281fbd6.jpg?thumb=1&w=1226&h=460&f=webp&q=90'),
(2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1c3e97686468231f3f78048d7f2b7fdc.jpg?thumb=1&w=1226&h=460&f=webp&q=90'),
(3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/5e896d87c53a449509c14701673098bb.jpg?thumb=1&w=1226&h=460&f=webp&q=90');

--
-- 转储表的索引
--

--
-- 表的索引 `bannerlist`
--
ALTER TABLE `bannerlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `hnav`
--
ALTER TABLE `hnav`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `jdcontent`
--
ALTER TABLE `jdcontent`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `jdlist`
--
ALTER TABLE `jdlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
