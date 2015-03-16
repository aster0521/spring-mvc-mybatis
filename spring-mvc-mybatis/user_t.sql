/*
Navicat MySQL Data Transfer

Source Server         : aster
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-03-16 14:12:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_t`
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', 'aster', 'sfasgfaf1', '20');
INSERT INTO `user_t` VALUES ('2', '测试1', 'sfasgfaf2', '21');
INSERT INTO `user_t` VALUES ('3', '测试2', 'sfasgfaf3', '22');
INSERT INTO `user_t` VALUES ('4', '测试3', 'sfasgfaf4', '23');
INSERT INTO `user_t` VALUES ('5', '测试4', 'sfasgfaf5', '24');
INSERT INTO `user_t` VALUES ('6', '测试5', 'sfasgfaf6', '25');
INSERT INTO `user_t` VALUES ('7', '测试6', 'sfasgfaf7', '26');
INSERT INTO `user_t` VALUES ('8', '测试7', 'sfasgfaf8', '27');
INSERT INTO `user_t` VALUES ('9', '测试8', 'sfasgfaf9', '28');
INSERT INTO `user_t` VALUES ('10', '测试9', 'sfasgfaf10', '29');
