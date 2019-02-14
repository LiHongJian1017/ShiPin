/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : shipin

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-02-14 11:11:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for certification
-- ----------------------------
DROP TABLE IF EXISTS `certification`;
CREATE TABLE `certification` (
  `userid` int(11) NOT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `certificatename` varchar(255) DEFAULT NULL,
  `certificateno` varchar(255) DEFAULT NULL,
  `certificateimg` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `userid` int(11) NOT NULL,
  `positionid` int(11) NOT NULL,
  `updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `companyfeatures` varchar(255) DEFAULT NULL,
  `companyintroduce` varchar(2000) DEFAULT NULL,
  `companytype` varchar(255) DEFAULT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `companysize` varchar(255) DEFAULT NULL,
  `companyceoname` varchar(255) DEFAULT NULL,
  `companyceologo` varchar(255) DEFAULT NULL,
  `companyceoposition` varchar(255) DEFAULT NULL,
  `companyceoweibo` varchar(255) DEFAULT NULL,
  `companyceoremark` varchar(1000) DEFAULT NULL,
  `companyweb` varchar(255) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `companytag1` varchar(255) DEFAULT NULL,
  `companytag2` varchar(255) DEFAULT NULL,
  `companytag3` varchar(255) DEFAULT NULL,
  `companytag4` varchar(255) DEFAULT NULL,
  `companytag5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery` (
  `deliveryid` int(11) NOT NULL AUTO_INCREMENT,
  `positionid` int(11) NOT NULL,
  `positionname` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `jianliname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `workstatus` varchar(255) DEFAULT NULL,
  `workaddress` varchar(255) DEFAULT NULL,
  `positionnature` varchar(255) DEFAULT NULL,
  `hopepositionname` varchar(255) DEFAULT NULL,
  `salarymin` int(11) DEFAULT NULL,
  `salarymax` int(11) DEFAULT NULL,
  `workexperience` varchar(1000) DEFAULT NULL,
  `schoolname` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `yearstart` varchar(255) DEFAULT NULL,
  `yearend` varchar(255) DEFAULT NULL,
  `selfdescription` varchar(1000) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`deliveryid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jianli
-- ----------------------------
DROP TABLE IF EXISTS `jianli`;
CREATE TABLE `jianli` (
  `jianliid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `jianliname` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `workstatus` varchar(255) DEFAULT NULL,
  `workaddress` varchar(255) DEFAULT NULL,
  `positionnature` varchar(255) DEFAULT NULL,
  `hopepositionname` varchar(255) DEFAULT NULL,
  `salarymin` int(11) DEFAULT NULL,
  `salarymax` int(11) DEFAULT NULL,
  `workexperience` varchar(1000) DEFAULT NULL,
  `schoolname` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `yearstart` varchar(255) DEFAULT NULL,
  `yearend` varchar(255) DEFAULT NULL,
  `selfdescription` varchar(1000) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`jianliid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for lianheposition
-- ----------------------------
DROP TABLE IF EXISTS `lianheposition`;
CREATE TABLE `lianheposition` (
  `positionid` int(11) NOT NULL AUTO_INCREMENT,
  `positiontype` varchar(255) NOT NULL,
  `positionname` varchar(255) NOT NULL,
  `positionnature` varchar(255) NOT NULL,
  `positiondetail` varchar(255) DEFAULT NULL,
  `workaddress` varchar(255) NOT NULL,
  `positionaddress` varchar(255) DEFAULT NULL,
  `salarymin` int(11) NOT NULL,
  `salarymax` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `positionadvantage` varchar(255) DEFAULT NULL,
  `releasetime` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  PRIMARY KEY (`positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `positionid` int(11) NOT NULL AUTO_INCREMENT,
  `positiontype` varchar(255) NOT NULL,
  `positionname` varchar(255) NOT NULL,
  `positionnature` varchar(255) NOT NULL,
  `positiondetail` varchar(255) NOT NULL,
  `workaddress` varchar(255) NOT NULL,
  `positionaddress` varchar(255) NOT NULL,
  `salarymin` int(11) NOT NULL,
  `salarymax` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `positionadvantage` varchar(255) NOT NULL,
  `releasetime` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `companyid` int(11) NOT NULL,
  PRIMARY KEY (`positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
