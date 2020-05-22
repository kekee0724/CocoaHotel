/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-05-24 21:00:46
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `normalPrice` int(11) DEFAULT NULL,
  `memberPrice` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT '空闲',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('610', 'single', '小红', '123456', '2017-1-1', '150', '130', '入住', '2');
INSERT INTO `room` VALUES ('611', 'double', '小王', '123456', '2017-1-2', '200', '160', '入住', '3');
INSERT INTO `room` VALUES ('611', 'single', '小刚', '1500000', '2018-2-3', '150', '130', '入住', '8');
INSERT INTO `room` VALUES ('507', 'double', '暂无', '暂无', '暂无', '200', '160', '空闲', '9');
INSERT INTO `room` VALUES ('404', 'deluxe', '王红', '1990023', '2019-2-3', '500', '440', '空闲', '10');
INSERT INTO `room` VALUES ('707', 'single', '暂无', '暂无', '暂无', '150', '130', '空闲', '11');
INSERT INTO `room` VALUES ('105', 'deluxe', '暂无', '暂无', '暂无', '500', '440', '空闲', '12');
INSERT INTO `room` VALUES ('1', 'double', '暂无', '暂无', '暂无', '1', '1', '空闲', '13');
