/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : lymm

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-30 09:30:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(44) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('lee', '3344', null);
INSERT INTO `admin` VALUES ('yq', '2233', null);
INSERT INTO `admin` VALUES ('zhang', '1122', null);

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('1', 'zhang', '儿科', '13891579375', '博士生');
INSERT INTO `doctor` VALUES ('2', 'li', '妇产科', '15121545623', '主任');
INSERT INTO `doctor` VALUES ('3', 'y', 'demo', '565456465', 'Hello');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trueName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', 'zhang', '0000-00-00', null);
INSERT INTO `orders` VALUES ('2', 'HRLLO', 'LI', '0000-00-00', null);
INSERT INTO `orders` VALUES ('4', 'Hello', 'y', '2017-03-27', 'demo');
INSERT INTO `orders` VALUES ('5', 'Hello', 'y', '2017-03-27', 'demo');
INSERT INTO `orders` VALUES ('6', 'zhang', 'li', null, '?');
INSERT INTO `orders` VALUES ('7', 'zhang', 'li', null, '?');
INSERT INTO `orders` VALUES ('8', 'zhang', 'li', null, '?');
INSERT INTO `orders` VALUES ('9', 'zhang', 'li', null, '?');
INSERT INTO `orders` VALUES ('10', '???', '?', null, '?');
INSERT INTO `orders` VALUES ('11', '很干净很简单', '爱的色放的', null, '手动阀');
INSERT INTO `orders` VALUES ('12', '按计划', '里', null, '吗');
INSERT INTO `orders` VALUES ('13', '按计划', '里', null, '吗');
INSERT INTO `orders` VALUES ('18', 'Hello', 'zhang', '2017-03-27', 'å¿ç§');
INSERT INTO `orders` VALUES ('19', 'Hello', 'zhang', '2017-03-27', 'å¿ç§');
INSERT INTO `orders` VALUES ('20', null, 'zhang', '2017-03-27', 'å¿ç§');
INSERT INTO `orders` VALUES ('21', null, 'zhang', '2017-03-27', 'å¿ç§');
INSERT INTO `orders` VALUES ('22', null, 'zhang', '2017-03-27', 'å¿ç§');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trueName` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'zhang', '123', '564545', 'ak');
