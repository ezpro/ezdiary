-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 10 月 19 日 22:12
-- 服务器版本: 5.1.49
-- PHP 版本: 5.3.3-1ubuntu9.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ez`
--

-- --------------------------------------------------------

--
-- 表的结构 `announce`
--

CREATE TABLE IF NOT EXISTS `announce` (
  `announce_id` int(11) NOT NULL AUTO_INCREMENT,
  `announce_content` text COLLATE utf8_unicode_ci NOT NULL,
  `announce_date` datetime NOT NULL,
  `announce_visible` int(11) NOT NULL,
  PRIMARY KEY (`announce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `announce`
--


-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `comment_visible` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `diary`
--

CREATE TABLE IF NOT EXISTS `diary` (
  `diary_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `diary_date` datetime NOT NULL,
  `diary_content` text COLLATE utf8_unicode_ci NOT NULL,
  `diary_visible` int(11) NOT NULL,
  PRIMARY KEY (`diary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `diary`
--


-- --------------------------------------------------------

--
-- 表的结构 `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_nick` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_pic` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `userinfo`
--


-- --------------------------------------------------------

--
-- 表的结构 `userpass`
--

CREATE TABLE IF NOT EXISTS `userpass` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` char(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `userpass`
--

