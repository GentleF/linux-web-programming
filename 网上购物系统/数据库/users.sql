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

 Date: 26/05/2020 18:45:11
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL DEFAULT '' AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastlogin` datetime NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`uid`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'linux', '1127929514@qq.com', '123457', '2020-05-26 18:33:38');
INSERT INTO `users` VALUES (7, 'shoppingtest', '9876543210@qq.com', '123456', '2020-05-26 18:41:43');

SET FOREIGN_KEY_CHECKS = 1;
