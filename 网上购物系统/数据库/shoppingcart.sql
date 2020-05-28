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

 Date: 26/05/2020 18:44:56
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `sid` int(11) NOT NULL DEFAULT '',
  `uid` int(11) NULL DEFAULT NULL,
  `gid` int(11) NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  `Sdate` datetime NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`sid`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
