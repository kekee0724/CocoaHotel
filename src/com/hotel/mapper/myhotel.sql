/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : myhotel

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 23/05/2019 21:29:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `c_type_id` int(11) NOT NULL,
  `m_id` varchar(20) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `zj_no` varchar(20) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `remark` varchar(40) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for roominfo
-- ----------------------------
DROP TABLE IF EXISTS `roominfo`;
CREATE TABLE `roominfo` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) NOT NULL,
  `r_type_id` int(11) NOT NULL,
  `states` int(11) NOT NULL DEFAULT '1',
  `r_tel` varchar(20) NOT NULL,
  `remark` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `roomtype` varchar(20) NOT NULL,
  `bed` int(11) NOT NULL,
  `price` float NOT NULL,
  `foregift` float NOT NULL,
  `cl_room` varchar(20) NOT NULL DEFAULT 'N',
  `cl_price` float DEFAULT NULL,
  `remark` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', 'admin');
INSERT INTO `user` VALUES (2, 'test', 'test');
INSERT INTO `user` VALUES (3, 'Cocoa', 'Cocoa');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
