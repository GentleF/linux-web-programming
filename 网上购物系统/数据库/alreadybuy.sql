/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50022
 Source Host           : localhost:3306
 Source Schema         : shoppingtest

 Target Server Type    : MySQL
 Target Server Version : 50022
 File Encoding         : 65001

 Date: 26/05/2020 18:44:40
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alreadybuy
-- ----------------------------
DROP TABLE IF EXISTS `alreadybuy`;
CREATE TABLE `alreadybuy`  (
  `Aid` int(11) NOT NULL DEFAULT 0 AUTO_INCREMENT,
  `Gid` int(11) NULL DEFAULT NULL,
  `Uid` int(11) NULL DEFAULT NULL,
  `Number` int(11) NULL DEFAULT NULL,
  `Buytime` datetime NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`Aid`)
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of alreadybuy
-- ----------------------------
INSERT INTO `alreadybuy` VALUES (21, 6, 15, 1, '2016-06-04 21:12:06');
INSERT INTO `alreadybuy` VALUES (22, 6, 14, 2, '2016-06-04 21:12:06');
INSERT INTO `alreadybuy` VALUES (23, 14, 6, 2, '2020-05-26 18:17:12');

SET FOREIGN_KEY_CHECKS = 1;
