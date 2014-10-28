/*
Navicat MySQL Data Transfer

Source Server         : fcs
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : wp

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2014-08-26 22:05:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `author` varchar(20) default NULL,
  `publishId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_book` (`publishId`),
  CONSTRAINT `fk_book` FOREIGN KEY (`publishId`) REFERENCES `publish` (`pub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'think in java', 'stvten', '1');
INSERT INTO `book` VALUES ('2', 'think in c++', 'Bruck', '2');
INSERT INTO `book` VALUES ('6', '妹妹坐船头', '我写的', '1');
INSERT INTO `book` VALUES ('9', '马航', '詹姆斯', '2');
INSERT INTO `book` VALUES ('11', '隐身', '撒贝宁', '5');
INSERT INTO `book` VALUES ('12', 'Java之父', '詹姆斯格林', '3');
INSERT INTO `book` VALUES ('13', '风清扬', '格林', '1');
INSERT INTO `book` VALUES ('14', '风神', '盛大', '2');
INSERT INTO `book` VALUES ('15', '风雷镇', 'ssd', '4');
INSERT INTO `book` VALUES ('16', '风华', '流沙', '5');
INSERT INTO `book` VALUES ('18', 'java编程思想', 'Bruck', '3');
INSERT INTO `book` VALUES ('19', '操作系统', '牛', '4');
INSERT INTO `book` VALUES ('20', 'C专家编程', '国外', '2');
INSERT INTO `book` VALUES ('23', '逢赌必输', '冯长晟', '3');
INSERT INTO `book` VALUES ('24', '风清扬', '冯长晟', '2');
INSERT INTO `book` VALUES ('25', '深入理解Java虚拟机', '周志明', '6');
INSERT INTO `book` VALUES ('27', '深入理解Java虚拟机', '周志明', '1');
INSERT INTO `book` VALUES ('28', '大唐双龙传', '金庸', '1');

-- ----------------------------
-- Table structure for `publish`
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish` (
  `pub_id` int(11) NOT NULL,
  `pub_name` varchar(50) default NULL,
  PRIMARY KEY  (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publish
-- ----------------------------
INSERT INTO `publish` VALUES ('1', '中信出版社');
INSERT INTO `publish` VALUES ('2', '清华大学出版社');
INSERT INTO `publish` VALUES ('3', '华章出版社');
INSERT INTO `publish` VALUES ('4', '铁道出版社');
INSERT INTO `publish` VALUES ('5', '高等教育出版社');
INSERT INTO `publish` VALUES ('6', '大晟出版社');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL auto_increment,
  `u_name` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'admin@qq.com');
INSERT INTO `user` VALUES ('4', 'fcs', '123', 'fec@qq.com');
INSERT INTO `user` VALUES ('5', 'sbxyz', '123', 'sbxxx@126.com');
