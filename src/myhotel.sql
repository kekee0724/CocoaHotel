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

 Date: 09/06/2019 14:16:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `c_type_id` int(11) NOT NULL,
  `m_id` varchar(20) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `zj_no` varchar(20) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `remark` varchar(40) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
BEGIN;
INSERT INTO `customer` VALUES (1, '123', '1234', 111, 'Q11', '211', '1', '3365', '555', '555');
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `c_type_id` int(11) NOT NULL,
  `m_id` varchar(20) NOT NULL,
  `r_type_id` int(11) NOT NULL,
  `r_no` varchar(20) NOT NULL,
  `ord_time` varchar(20) NOT NULL,
  `remark` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, 1, '1', 6, '1', '', '1');
INSERT INTO `orders` VALUES (2, 1, '1', 6, '1', '', '122');
INSERT INTO `orders` VALUES (3, 1, '1', 7, '1', '', '1');
INSERT INTO `orders` VALUES (4, 1, '2', 7, '520', '', '还不错');
COMMIT;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `roomNumber` int(11) NOT NULL,
  `roomType` varchar(255) DEFAULT 'single',
  `guestName` varchar(255) DEFAULT '暂无',
  `phonenumber` varchar(255) DEFAULT '暂无',
  `checkInDate` varchar(255) DEFAULT '暂无',
  `normalPrice` int(11) DEFAULT '0',
  `memberPrice` int(11) DEFAULT '0',
  `status` varchar(255) DEFAULT '空闲',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of room
-- ----------------------------
BEGIN;
INSERT INTO `room` VALUES (1, 'single', '暂无', '暂无', '暂无', 1, 1, '空闲', 1);
INSERT INTO `room` VALUES (101, 'single', '暂无', '暂无', '暂无', 150, 130, '空闲', 17);
INSERT INTO `room` VALUES (103, 'deluxe', '暂无', '暂无', '暂无', 500, 450, '空闲', 19);
INSERT INTO `room` VALUES (201, 'single', '光酱', '134', '2019-05-29', 150, 130, '入住', 20);
INSERT INTO `room` VALUES (202, 'double', '小王', '123', '2019-05-29', 300, 270, '入住', 21);
INSERT INTO `room` VALUES (203, 'double', '小光', '12231', '2019-05-31', 500, 450, '入住', 22);
INSERT INTO `room` VALUES (77, 'single', '小明', '1321', '2019-05-31', 77, 77, '入住', 23);
INSERT INTO `room` VALUES (305, 'double', '小强', '123', '2019-05-29', 300, 250, '入住', 24);
INSERT INTO `room` VALUES (1111, 'single', '暂无', '暂无', '暂无', 31, 313, '空闲', 25);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', 'admin');
INSERT INTO `user` VALUES (2, 'test', 'test');
INSERT INTO `user` VALUES (3, 'Cocoa', 'Cocoa');
INSERT INTO `user` VALUES (11, '1', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
