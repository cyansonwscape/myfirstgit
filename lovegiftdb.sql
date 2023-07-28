/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : lovegiftdb

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 28/07/2023 08:23:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for all_user
-- ----------------------------
DROP TABLE IF EXISTS `all_user`;
CREATE TABLE `all_user`  (
  `user_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `user_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '123456' COMMENT '用户密码',
  `nick_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '小龙人儿' COMMENT '用户昵称',
  `gender` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '型别      1-boy;0-girl',
  `registration_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `birthday` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '生日',
  `head_img_src` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/images/avatar/default.jpg' COMMENT '头像路径',
  `user_state` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户状态：0-normal 1-封号 2-注销',
  `user_type` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户身份：0-user 1-admin',
  `user_account` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '饭都花园3206室' COMMENT '用户地址',
  `follow_count` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关注人数',
  `fans_count` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '粉丝人数',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `unique_uaccount`(`user_account`) USING BTREE COMMENT '用户账号索引，唯一',
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of all_user
-- ----------------------------
INSERT INTO `all_user` VALUES (00001006, 'd41d8cd98f00b204e9800998ecf8427e', '123456', 1, '2002-01-16 16:55:07', '2000-07-06 23:15:37', '/images/avatar/1689417328704.jpg', 0, 0, 'w', '1906047', '456', 0, 0);
INSERT INTO `all_user` VALUES (00001009, 'd41d8cd98f00b204e9800998ecf8427e', 'q', 1, '2018-07-25 22:56:31', '2003-02-05 03:55:22', '/images/avatar/1689416931183.jpg', 0, 1, 'q', '108038510', '饭都花园320,饭都花园320', 0, 0);
INSERT INTO `all_user` VALUES (00001010, 'd41d8cd98f00b204e9800998ecf8427e', '彭詩涵', 0, '2021-03-26 16:48:58', '2001-04-12 07:25:40', '/images/avatar/default.jpg', 1, 0, 'Ov1Zif', '15841726680', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001011, 'd41d8cd98f00b204e9800998ecf8427e', '你好吗测试类', 1, '2015-06-29 21:27:35', '2000-07-05 16:56:06', '/images/avatar/1689417714190.jpg', 0, 0, 'aOAZHU', '281852408', '没有家的孩子,没有家的孩子', 0, 0);
INSERT INTO `all_user` VALUES (00001012, 'd41d8cd98f00b204e9800998ecf8427e', '何宇宁', 0, '2004-06-20 11:37:39', '2001-04-10 17:35:23', '/images/avatar/1689419282131.jpg', 0, 1, 'tocPM2OOnR', '14205975568', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001013, 'd41d8cd98f00b204e9800998ecf8427e', '蔡宇', 0, '2009-08-03 17:06:03', '2001-10-29 14:00:10', '/images/avatar/1689418505146.jpg', 2, 1, 'FVq73sI7He', '102000366', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001014, 'd41d8cd98f00b204e9800998ecf8427e', '雷岚', 1, '2008-01-26 14:06:25', '2001-10-01 13:02:22', '/images/avatar/1689427082356.jpg', 2, 1, 'Xd7D5lBbUW', '19191746793', '饭都花园3206,饭都花园3206', 0, 0);
INSERT INTO `all_user` VALUES (00001015, 'xj7XCCkwFy', '吴秀英', 0, '2014-11-24 13:43:04', '2003-02-25 14:28:58', '/images/avatar/default.jpg', 2, 1, '87fXuFfXeI', '1013644677', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001016, '6BksaKdp9E', '周杰宏', 0, '2009-04-19 17:37:44', '2002-02-27 19:29:42', '/images/avatar/default.jpg', 1, 1, 'YPpqMFc362', '16374849888', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001017, 'F5eYblZ5iq', '邵杰宏', 1, '2017-07-27 06:09:33', '2001-03-29 03:03:48', '/images/avatar/default.jpg', 1, 0, 'VcPVjqM0WQ', '76957053726', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001018, '6y7pOdL4gV', '杜云熙', 0, '2004-05-21 06:42:49', '2001-01-17 03:24:09', '/images/avatar/default.jpg', 1, 1, 'Kd7q1NAmx2', '13224012166', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001019, 'd41d8cd98f00b204e9800998ecf8427e', '林子异', 1, '2013-07-16 10:02:09', '2002-06-06 23:27:28', '/images/avatar/1689420872763.jpg', 1, 0, '4EosInHHkk', '7557312980', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001020, 'SereUchEDc', '尹璐', 1, '2010-08-07 04:10:56', '2002-06-13 19:12:17', '/images/avatar/default.jpg', 1, 1, 'ikxgPj8l3h', '19850891757', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001021, 'QcjX95v5gV', '贾云熙', 1, '2019-01-13 12:24:39', '2001-09-12 19:32:52', '/images/avatar/default.jpg', 2, 1, 'oHyEL471Lt', '18054349015', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001022, '6UUHjOMuGt', '汪云熙', 0, '2009-06-12 07:51:21', '2002-03-15 03:48:32', '/images/avatar/default.jpg', 0, 1, 'xOEcZtJ2OB', '7556531139', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001023, 'qpd0epnCo0', '邵子异', 1, '2003-08-11 12:56:09', '2003-01-12 14:25:46', '/images/avatar/default.jpg', 1, 1, 'OZ9KPLJVgr', '19376219081', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001024, 'MsODB3sQQZ', '陶安琪', 0, '2022-09-09 13:08:44', '2002-05-08 08:35:18', '/images/avatar/default.jpg', 1, 1, 'csrePL1RGb', '217489086', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001025, 'eHWpdm5AIw', '陶宇宁', 0, '2005-08-16 01:15:58', '2001-04-20 04:42:43', '/images/avatar/default.jpg', 1, 1, 'WGbfNvdWLP', '76948367501', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001026, 'lOgv5rZ0Fq', '雷子异', 0, '2000-03-10 18:17:22', '2002-02-15 05:56:29', '/images/avatar/default.jpg', 0, 1, 'cD014JOliS', '283151329', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001027, 'X5RPq8hmUW', '曾云熙', 1, '2015-07-30 01:19:02', '2000-01-07 06:13:08', '/images/avatar/default.jpg', 1, 0, 'iwYx7pnm7D', '75594420830', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001028, '95OPZxxbCQ', '王嘉伦', 1, '2011-02-19 07:36:49', '2002-03-05 14:36:19', '/images/avatar/default.jpg', 0, 1, 'ZQuBo4T0F4', '2079447890', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001029, 'd41d8cd98f00b204e9800998ecf8427e', '邓睿', 0, '2003-08-29 12:15:06', '2000-07-26 10:34:35', '/images/avatar/default.jpg', 0, 1, '5tW1aCM9U5', '14523334924', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001030, 'd41d8cd98f00b204e9800998ecf8427e', '谢震南', 1, '2014-05-08 02:10:24', '2002-07-07 08:37:31', '/images/avatar/default.jpg', 0, 0, 'OdGmwl4Jri', '203237041', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001031, 'RGV7GYWcI9', '何睿', 0, '2022-07-13 16:22:40', '2002-10-16 10:41:21', '/images/avatar/default.jpg', 0, 0, 'GMfXDcPT2A', '212293752', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001032, 'd41d8cd98f00b204e9800998ecf8427e', '韦安琪', 0, '2017-04-10 09:17:01', '2000-05-24 16:27:11', '/images/avatar/default.jpg', 0, 1, 'jvZxkPuM4k', '19217723787', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001033, 'XGKz4yK0oh', '何安琪', 0, '2019-02-10 03:55:55', '2000-06-10 20:01:10', '/images/avatar/default.jpg', 1, 1, 'GiDDd7DBcT', '18280533445', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001034, 'AKqxiSgvEu', '夏致远', 1, '2005-04-11 05:59:20', '2001-07-30 13:18:32', '/images/avatar/default.jpg', 1, 0, 'T7tw5ZY6nb', '14786036521', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001035, 'l3Gh8YPIVg', '汤宇宁', 0, '2006-09-06 23:01:32', '2001-10-16 03:52:50', '/images/avatar/default.jpg', 0, 1, 'sBYcgZdDZU', '17911345577', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001036, 'lu1t1qf3By', '钟嘉伦', 1, '2014-06-17 01:59:23', '2000-01-09 08:56:58', '/images/avatar/default.jpg', 0, 0, 'U9d0VLhW1a', '7699156551', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001037, 'kz8IyTUOt5', '王子韬', 1, '2008-02-19 09:19:20', '2000-02-02 04:29:55', '/images/avatar/default.jpg', 0, 1, 'dJAWUVYj0f', '17120488339', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001038, '5jcVd1IRAS', '石嘉伦', 1, '2020-10-03 22:00:59', '2002-08-05 21:15:26', '/images/avatar/default.jpg', 1, 0, '75oZdoJca8', '17033757499', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001039, 'kqpLY8yuv1', '王岚', 1, '2014-07-09 12:26:00', '2002-05-10 19:27:15', '/images/avatar/default.jpg', 2, 1, 'uApp9qBKrL', '206641063', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001040, 'e4nhlYndHm', '邱岚', 0, '2016-01-23 19:31:34', '2001-02-06 11:06:30', '/images/avatar/default.jpg', 1, 0, 'gmgVavUyTR', '2805887628', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001041, 'd41d8cd98f00b204e9800998ecf8427e', '朱晓明', 1, '2006-10-31 07:54:34', '2002-11-07 08:00:25', '/images/avatar/default.jpg', 1, 0, 'pZcC9STtsj', '17589341618', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001042, 'fp7xx2XTAT', '邓子异', 1, '2014-12-11 02:49:44', '2002-07-29 19:26:37', '/images/avatar/default.jpg', 1, 1, '3uhwon6vRj', '76027143681', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001043, 'GmGHlcCZG4', '侯秀英', 0, '2006-01-28 07:24:42', '2001-06-18 19:40:22', '/images/avatar/default.jpg', 1, 0, '3AQzMVq4s0', '101944735', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001044, 'W4iFdZP43Q', '林致远', 0, '2007-05-16 04:37:29', '2002-07-28 05:47:06', '/images/avatar/default.jpg', 2, 0, 'HW3JAF0F7M', '101306605', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001045, 'LF4cD5dS0p', '戴云熙', 0, '2019-05-16 07:30:30', '2001-02-07 10:47:57', '/images/avatar/default.jpg', 1, 0, 'BfqDcR2SmQ', '1061151622', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001046, 'kzl0MlCBjP', '薛子韬', 1, '2008-05-30 20:52:01', '2001-02-28 19:57:06', '/images/avatar/default.jpg', 0, 0, 'P9ZzJStXJj', '14468314518', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001047, 'gZfZOcP1lO', '冯岚', 1, '2003-10-08 00:05:05', '2000-12-18 22:44:13', '/images/avatar/default.jpg', 1, 0, '37gFAiOIiK', '19066559404', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001048, 'd41d8cd98f00b204e9800998ecf8427e', '袁子韬', 0, '2008-05-13 06:46:41', '2001-06-27 06:51:07', '/images/avatar/default.jpg', 0, 0, 'kYQ8GoY3rC', '75554494008', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001049, 'd41d8cd98f00b204e9800998ecf8427e', '萧晓明', 1, '2000-05-26 15:42:32', '2000-02-08 09:06:12', '/images/avatar/default.jpg', 1, 0, '4ZMQluyJqn', '102294925', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001050, 'd41d8cd98f00b204e9800998ecf8427e', '黄睿', 0, '2019-04-11 02:24:46', '2000-02-01 20:56:12', '/images/avatar/default.jpg', 2, 0, 'e3WASCMsyl', '1054844471', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001051, 'd41d8cd98f00b204e9800998ecf8427e', '曾子异', 1, '2011-07-04 23:35:25', '2002-05-28 16:10:42', '/images/avatar/default.jpg', 0, 0, '4a5UBAXa88', '7603000052', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001052, '6ILb8RvnX5', '方晓明', 1, '2005-02-27 17:04:36', '2002-06-17 08:33:50', '/images/avatar/default.jpg', 2, 0, 'D1uFvORFHY', '14147083550', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001053, 'qNJHCjiv6i', '韩秀英', 0, '2005-08-08 13:02:59', '2001-01-04 22:43:39', '/images/avatar/default.jpg', 1, 1, 'ddWdj3IfuF', '2073587394', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001054, 'PWcyuwfCrh', '钟岚', 1, '2017-12-03 05:29:35', '2001-07-06 09:17:10', '/images/avatar/default.jpg', 1, 1, 'lG8dqjKJhJ', '13644991759', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001055, 'fW869PBkrG', '汤致远', 1, '2013-10-25 06:11:18', '2001-05-30 12:51:33', '/images/avatar/default.jpg', 0, 1, 'k4v2Budh0E', '18327928003', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001056, 'Vvau7OSzjE', '郭晓明', 0, '2004-06-14 05:53:07', '2000-09-30 13:56:29', '/images/avatar/default.jpg', 1, 1, 'PFUT8YNP8Z', '2092660332', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001057, 'J7thXZpTus', '秦杰宏', 0, '2022-08-03 03:42:09', '2000-04-11 17:33:19', '/images/avatar/default.jpg', 2, 0, 't8atiPtbXc', '13815525970', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001058, 'GJD9PT04yl', '周秀英', 0, '2002-11-05 15:43:18', '2000-08-24 08:47:36', '/images/avatar/default.jpg', 2, 0, 'GbYWV4gccn', '2029466848', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001059, 'KF3BmLqZsH', '周晓明', 0, '2001-09-19 15:03:30', '2001-07-20 01:15:14', '/images/avatar/default.jpg', 1, 1, 'Z74Uc9jIBt', '1050287518', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001060, 'TC7Y2tfAOP', '邱睿', 1, '2022-06-20 02:50:28', '2001-09-04 17:22:49', '/images/avatar/default.jpg', 0, 1, 'SlqmKvvItc', '13261065607', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001061, 'O4X7cYb3wV', '谭嘉伦', 0, '2021-11-21 21:38:40', '2001-09-28 14:18:03', '/images/avatar/default.jpg', 2, 0, 'RAsVgA95SC', '1011056670', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001062, 'ndBR3JfcDh', '秦子异', 0, '2003-07-10 10:07:14', '2000-10-01 17:01:34', '/images/avatar/default.jpg', 1, 0, 'rYF5dZSjGk', '287388067', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001063, 'zXEcS0d8oK', '杜宇宁', 0, '2015-03-21 08:05:32', '2000-08-11 10:51:07', '/images/avatar/default.jpg', 0, 0, 'YJaJlsPtSk', '15958075330', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001064, 'IXWwMxTPYm', '廖杰宏', 1, '2002-07-07 00:09:19', '2000-08-16 09:14:08', '/images/avatar/default.jpg', 2, 1, 'FiCTB2ugAE', '18992655064', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001065, '0iIIkokHFI', '韩杰宏', 0, '2013-07-09 15:30:11', '2002-07-16 23:32:46', '/images/avatar/default.jpg', 0, 1, 'iLi6Tc9VHW', '2158794810', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001066, 'U0Hh6GChFh', '方璐', 1, '2019-12-14 21:03:22', '2002-05-07 19:18:53', '/images/avatar/default.jpg', 1, 0, 'DFpLj7w42G', '15400175036', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001067, 'eYuPpz0OqJ', '叶璐', 1, '2004-04-08 08:31:27', '2002-03-13 02:31:35', '/images/avatar/default.jpg', 1, 0, 'H4Pnb0Oazr', '76064288714', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001068, 'zFQfBXVzd8', '董宇宁', 0, '2019-06-02 16:14:41', '2002-02-14 02:13:33', '/images/avatar/default.jpg', 2, 1, 'ZtYgD7RL2C', '76903048993', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001069, 'R1mJEbV0N4', '于震南', 1, '2003-08-30 21:01:55', '2001-12-18 12:04:04', '/images/avatar/default.jpg', 2, 0, 'Ib9ZcB4naz', '13357923060', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001070, 'bZkn3zPtSn', '姜安琪', 1, '2007-06-18 22:47:37', '2000-09-01 14:14:02', '/images/avatar/default.jpg', 1, 0, 'ZJdbgRCmXw', '13984260906', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001071, 'rs0RrtBBAQ', '雷子韬', 1, '2001-01-04 10:11:36', '2002-11-19 12:34:40', '/images/avatar/default.jpg', 1, 0, 'kqm3UM4J2t', '1049228841', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001072, 'SBUpqzm6CG', '彭睿', 0, '2007-09-05 03:09:43', '2000-09-23 18:09:04', '/images/avatar/default.jpg', 2, 0, 'fRdH1B4HnH', '19755839950', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001073, '6CdPk6hDUA', '沈晓明', 1, '2008-08-13 04:04:13', '2001-03-27 11:09:05', '/images/avatar/default.jpg', 0, 0, 'jhEkS3Nsqe', '17504448433', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001074, 'cslJCkHFhh', '何璐', 1, '2007-01-22 18:22:35', '2001-03-29 01:05:36', '/images/avatar/default.jpg', 2, 0, 'FK9rCscrmF', '1097557915', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001075, '8ElF0Z1acv', '唐子异', 1, '2005-03-20 08:11:31', '2001-12-04 01:04:52', '/images/avatar/default.jpg', 0, 0, 'GpZAO3DFWH', '200062892', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001076, '6dZGWWl4hF', '孙晓明', 0, '2003-02-03 07:03:08', '2000-02-18 11:52:45', '/images/avatar/default.jpg', 1, 0, 'y30uoFurRb', '2851658707', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001077, '5y3tO5nqzq', '邵子韬', 0, '2006-09-07 10:53:59', '2000-01-12 15:37:47', '/images/avatar/default.jpg', 1, 1, 'vBxUBsnxJ3', '2107925453', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001078, 'd41d8cd98f00b204e9800998ecf8427e', '毛杰宏', 0, '2011-08-13 21:38:01', '2002-06-09 04:10:36', '/images/avatar/default.jpg', 0, 1, 'kRA4rhwTuX', '7606841864', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001079, 'd41d8cd98f00b204e9800998ecf8427e', '邱震南', 1, '2013-10-19 11:36:29', '2000-08-10 01:52:59', '/images/avatar/default.jpg', 0, 1, '39LVrz1DGM', '76930198041', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001080, 'd41d8cd98f00b204e9800998ecf8427e', '林子韬', 1, '2012-10-24 04:57:30', '2002-08-12 17:22:58', '/images/avatar/default.jpg', 1, 0, 'L9O6IiEbql', '19106779548', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001081, 'd41d8cd98f00b204e9800998ecf8427e', '邱宇宁', 1, '2006-05-10 09:11:12', '2001-06-11 13:47:01', '/images/avatar/default.jpg', 0, 1, 'ieq2mSR5DP', '19246724456', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001082, 'd41d8cd98f00b204e9800998ecf8427e', '卢致远', 0, '2002-06-20 05:39:28', '2003-02-26 19:12:05', '/images/avatar/default.jpg', 0, 1, 'KKO0DKmDGx', '16699758905', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001083, 'ACssbG4VOj', '邵岚', 1, '2022-12-17 05:45:19', '2002-07-04 17:11:10', '/images/avatar/default.jpg', 1, 1, 'f6TdxpNmaL', '14682302883', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001084, 'UEYcBlKSX8', '余嘉伦', 0, '2021-06-17 23:39:55', '2000-01-29 22:06:14', '/images/avatar/default.jpg', 1, 0, 'fpVkfwCtsn', '14318767081', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001085, 'GgokojCkTY', '梁子韬', 0, '2020-03-17 20:07:46', '2002-05-06 22:41:23', '/images/avatar/default.jpg', 1, 0, '33UGLqZ9gV', '1039364154', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001086, 'BQD4Mngare', '汪詩涵', 0, '2018-07-25 00:17:21', '2002-10-22 06:59:50', '/images/avatar/default.jpg', 0, 1, '3e1OAqvhIu', '102672059', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001087, 'jUdTkp4B6p', '田致远', 0, '2013-01-17 21:31:11', '2002-02-16 10:05:00', '/images/avatar/default.jpg', 1, 1, 'rCtPiw6I5j', '18843821405', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001088, 'sr6782x7GF', '苏云熙', 0, '2012-09-28 03:55:37', '2001-05-23 08:29:54', '/images/avatar/default.jpg', 2, 0, 'ALy6Whn81t', '14364825534', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001089, 'J0blohT6sh', '林震南', 1, '2014-08-27 14:54:45', '2002-10-08 23:45:32', '/images/avatar/default.jpg', 2, 0, 'QoBN7d9wIU', '2820968084', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001090, '7NEpiOX0xq', '林晓明', 0, '2004-12-21 19:44:00', '2003-01-21 00:21:27', '/images/avatar/default.jpg', 0, 0, 'E6dL7SPfrl', '14224835137', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001091, 'LCCizHuNuK', '尹子异', 1, '2006-07-15 02:24:48', '2002-12-08 01:09:57', '/images/avatar/default.jpg', 2, 1, 'y2hmEKjRWV', '17960889878', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001092, 'p11Sa97hCs', '韩岚', 0, '2014-12-01 23:45:54', '2003-02-19 23:35:42', '/images/avatar/default.jpg', 1, 0, 'afG6U81un2', '17262843364', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001093, 'U2UMQFAZP8', '汤晓明', 0, '2007-10-23 09:34:41', '2002-12-09 19:59:49', '/images/avatar/default.jpg', 2, 1, 'Rkhd1dVjtX', '13506284541', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001094, 'd41d8cd98f00b204e9800998ecf8427e', '王致远', 1, '2008-01-13 10:28:57', '2000-05-01 00:53:24', '/images/avatar/default.jpg', 1, 1, '57xgAIkSLe', '13006026724', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001095, 'd41d8cd98f00b204e9800998ecf8427e', '常岚', 1, '2017-10-19 11:14:37', '2002-10-25 06:06:15', '/images/avatar/default.jpg', 1, 1, 'uXG1Ttz9Ez', '14251793658', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001096, 'd41d8cd98f00b204e9800998ecf8427e', '孙安琪', 0, '2001-04-23 13:53:17', '2000-08-01 20:07:05', '/images/avatar/default.jpg', 1, 1, 'zdoqgCRiNB', '18935664863', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001097, 'd41d8cd98f00b204e9800998ecf8427e', '叶震南', 1, '2010-04-25 10:55:12', '2002-09-05 00:18:32', '/images/avatar/default.jpg', 1, 1, 'UyfXtvaWr3', '108789775', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001098, 'd41d8cd98f00b204e9800998ecf8427e', '陈晓明', 0, '2012-12-10 03:13:36', '2001-05-20 02:49:47', '/images/avatar/default.jpg', 0, 1, '2XZ5w3hPGe', '14756677001', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001099, 'd41d8cd98f00b204e9800998ecf8427e', '尹岚', 0, '2012-12-29 23:01:12', '2002-03-13 17:08:21', '/images/avatar/default.jpg', 2, 1, 'DilePgB4sU', '281139350', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001100, 'k7bYvAbg1K', '夏嘉伦', 1, '2014-11-22 13:27:59', '2000-07-12 09:31:54', '/images/avatar/default.jpg', 1, 1, 'ALpYBGURxZ', '2039369886', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001101, 'eYYVEHzq0R', '范宇宁', 1, '2008-07-04 23:32:47', '2001-11-03 05:58:49', '/images/avatar/default.jpg', 0, 1, 'KAbLAhdxYU', '7602867974', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001102, 'd41d8cd98f00b204e9800998ecf8427e', '王宇宁', 1, '2005-03-08 19:10:03', '2002-10-10 06:58:02', '/images/avatar/default.jpg', 1, 1, 'u3DQAc0Fxb', '209694557', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001103, 'sWBmj9h3h8', '徐詩涵', 0, '2001-11-12 11:53:56', '2002-12-17 18:27:26', '/images/avatar/default.jpg', 1, 1, 'uP94OZXL6d', '15839816024', '饭都花园3206室', 1, 0);
INSERT INTO `all_user` VALUES (00001104, 'd41d8cd98f00b204e9800998ecf8427e', '黑魔仙变身', 1, '2023-07-10 17:02:47', '2023-07-10 17:02:47', '/images/avatar/1689344338310.jpg', 0, 1, 'admin12138', '13667225165', 'adadsa', 0, 0);
INSERT INTO `all_user` VALUES (00001105, '62f04a011fbb80030bb0a13701c20b41', '超级小龙', 0, '2023-07-10 17:04:33', '2023-07-10 17:04:33', '/images/avatar/default.jpg', 0, 1, 'admin0', '13667225166', '饭都花园3206室', 1, 0);
INSERT INTO `all_user` VALUES (00001106, 'd41d8cd98f00b204e9800998ecf8427e', '超级小龙', 0, '2023-07-12 22:09:11', '2023-07-12 22:09:11', '/images/avatar/default.jpg', 0, 1, 'admin222', '13667225166', '饭都花园3206室', 0, 0);
INSERT INTO `all_user` VALUES (00001107, 'd41d8cd98f00b204e9800998ecf8427e', '巴啦啦小魔仙', 0, '2023-07-14 08:51:31', '2023-07-14 08:51:31', '/images/avatar/default.jpg', 0, 1, 'admin37', '13667225106', '饭都花园3206室', 0, 3);
INSERT INTO `all_user` VALUES (00001108, 'd41d8cd98f00b204e9800998ecf8427e', '薇尔莉特酱', 0, '2023-07-14 10:23:05', '2023-07-14 10:23:05', '/images/avatar/default.jpg', 0, 1, 'violet12138', '15655807566', '饭都花园3206室', 1, 0);
INSERT INTO `all_user` VALUES (00001109, 'd41d8cd98f00b204e9800998ecf8427e', 'sjdoasjlkasndklasd', 0, '2023-07-15 12:22:53', '2023-07-15 12:22:53', '/images/avatar/default.jpg', 0, 1, 'asodasjdlkasjld', '446', 'asdkllkasjdk', 0, 0);
INSERT INTO `all_user` VALUES (00001119, 'd41d8cd98f00b204e9800998ecf8427e', 'admin11', 0, '2023-07-17 08:59:01', '2023-07-17 08:59:01', '/images/avatar/default.jpg', 0, 1, 'admin11', '456', '123', 0, 0);
INSERT INTO `all_user` VALUES (00001120, '202cb962ac59075b964b07152d234b70', '123', 0, '2023-07-17 09:27:28', '2023-07-17 09:27:28', '/images/avatar/default.jpg', 0, 1, 'aaa', '123', '123', 0, 0);
INSERT INTO `all_user` VALUES (00001121, 'b706835de79a2b4e80506f582af3676a', 'pro', 0, '2023-07-17 09:33:50', '2023-07-17 09:33:50', '/images/avatar/default.jpg', 0, 1, '999', '4534', '2543', 0, 0);
INSERT INTO `all_user` VALUES (00001122, 'e3e84538a1b02b1cc11bf71fe3169958', '13213', 0, '2023-07-17 09:34:43', '2023-07-17 09:34:43', '/images/avatar/default.jpg', 0, 1, 'ert', 'ert', 'ert', 0, 0);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `comment_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '评论时间',
  `owner_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '作者id',
  `like_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `fk_comment2owner`(`owner_id`) USING BTREE,
  CONSTRAINT `fk_comment2owner` FOREIGN KEY (`owner_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (00000002, '啊对对对对', '2023-07-09 22:16:55', 00001042, 1);
INSERT INTO `comment` VALUES (00000003, '啊对赌地对对赌丢第', '2023-07-09 22:16:55', 00001098, 0);
INSERT INTO `comment` VALUES (00000004, '不对！', '2023-07-09 22:16:55', 00001009, 0);
INSERT INTO `comment` VALUES (00000005, '好的', '2023-07-09 22:16:55', 00001086, 0);
INSERT INTO `comment` VALUES (00000006, '不好', '2023-07-09 22:16:55', 00001044, 0);
INSERT INTO `comment` VALUES (00000007, '爱你就', '2023-07-09 22:16:55', 00001023, 0);
INSERT INTO `comment` VALUES (00000008, '不爱你就', '2023-07-09 22:16:55', 00001061, 0);
INSERT INTO `comment` VALUES (00000009, '你要怎样', '2023-07-09 22:16:55', 00001022, 0);
INSERT INTO `comment` VALUES (00000010, '我就要那样', '2023-07-09 22:16:55', 00001073, 0);
INSERT INTO `comment` VALUES (00000011, '我欲乘风归去', '2023-07-09 22:16:55', 00001067, 0);
INSERT INTO `comment` VALUES (00000012, '又恐琼楼玉宇', '2023-07-09 22:16:55', 00001033, 0);
INSERT INTO `comment` VALUES (00000013, '高处不胜寒', '2023-07-09 22:16:55', 00001064, 0);
INSERT INTO `comment` VALUES (00000014, '老夫聊发少年狂', '2023-07-09 22:16:55', 00001023, 0);
INSERT INTO `comment` VALUES (00000015, '左侧列车第一箱', '2023-07-09 22:16:55', 00001054, 0);
INSERT INTO `comment` VALUES (00000016, '熬过冲动说喜欢', '2023-07-09 22:16:55', 00001067, 0);
INSERT INTO `comment` VALUES (00000017, '归于平静才说爱', '2023-07-09 22:16:55', 00001013, 1);
INSERT INTO `comment` VALUES (00000018, '越想敲的门', '2023-07-09 22:16:55', 00001094, 0);
INSERT INTO `comment` VALUES (00000019, '叩得越轻', '2023-07-09 22:16:55', 00001081, 0);
INSERT INTO `comment` VALUES (00000020, '什么？！', '2023-07-09 22:16:55', 00001048, 0);
INSERT INTO `comment` VALUES (00000021, '时间并不多了？！', '2023-07-09 22:16:55', 00001082, 0);
INSERT INTO `comment` VALUES (00000022, '你在干嘛~', '2023-07-09 22:16:55', 00001100, 0);
INSERT INTO `comment` VALUES (00000023, '不能说的秘密', '2023-07-09 22:16:55', 00001094, 0);
INSERT INTO `comment` VALUES (00000024, '无法诉说的话语', '2023-07-09 22:16:55', 00001046, 0);
INSERT INTO `comment` VALUES (00000025, '可曾在耳边呢喃', '2023-07-09 22:16:55', 00001031, 0);
INSERT INTO `comment` VALUES (00000026, '疯了都疯了！！！', '2023-07-09 22:16:55', 00001014, 0);
INSERT INTO `comment` VALUES (00000027, '我是骗子', '2023-07-09 22:16:55', 00001048, 0);
INSERT INTO `comment` VALUES (00000028, '我在骗你', '2023-07-09 22:16:55', 00001035, 0);
INSERT INTO `comment` VALUES (00000029, '起飞', '2023-07-09 22:16:55', 00001068, 0);
INSERT INTO `comment` VALUES (00000030, '坠机', '2023-07-09 22:16:55', 00001098, 0);
INSERT INTO `comment` VALUES (00000033, '诸君好运', '2023-07-11 19:23:40', 00001104, 0);
INSERT INTO `comment` VALUES (00000034, '诸君好运', '2023-07-11 19:23:47', 00001104, 0);
INSERT INTO `comment` VALUES (00000035, '你真的不懂爱', '2023-07-11 19:24:42', 00001104, 0);
INSERT INTO `comment` VALUES (00000036, '你真的不懂爱~', '2023-07-11 19:27:35', 00001104, 1);
INSERT INTO `comment` VALUES (00000038, '好东西，就是有点太好了~', '2023-07-11 20:10:03', 00001104, 0);
INSERT INTO `comment` VALUES (00000039, '好东西，就是有点太好了~', '2023-07-11 20:10:25', 00001104, 0);
INSERT INTO `comment` VALUES (00000040, '好东西，就是有点太好了~', '2023-07-11 20:10:39', 00001104, 0);
INSERT INTO `comment` VALUES (00000041, '好东西，就是有点太好了~', '2023-07-11 20:10:46', 00001104, 0);
INSERT INTO `comment` VALUES (00000042, '好东西，就是有点太好了~', '2023-07-12 13:27:05', 00001104, 0);
INSERT INTO `comment` VALUES (00000043, '好东西，就是有点太好了~', '2023-07-12 13:29:06', 00001104, 0);
INSERT INTO `comment` VALUES (00000044, '好东西，就是有点太好了~', '2023-07-12 13:29:21', 00001104, 0);
INSERT INTO `comment` VALUES (00000045, '好东西，就是有点太好了~', '2023-07-14 18:14:51', 00001104, 0);
INSERT INTO `comment` VALUES (00000046, '这是测评评论哦', '2023-07-14 18:53:29', 00001107, 0);
INSERT INTO `comment` VALUES (00000047, '这又是一个测试评论啊', '2023-07-14 18:56:55', 00001107, 0);
INSERT INTO `comment` VALUES (00000048, '你好啊', '2023-07-14 19:01:51', 00001107, 0);

-- ----------------------------
-- Table structure for gift
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift`  (
  `gift_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '礼物id',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '礼物标题',
  `gift_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '在此相别，予之有缘人' COMMENT '描述简介',
  `gift_value` decimal(7, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '礼物价格',
  `up_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '上传时间',
  `seller_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '卖家id',
  `class_id` int(3) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '分类id',
  `gift_status` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '礼物状态 0-onsale  1-下架',
  `like_count` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `img_src` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/images/gift/default.jpg' COMMENT '礼物图片地址\r\n',
  `amount` tinyint(0) NOT NULL DEFAULT 1 COMMENT '礼物数量',
  PRIMARY KEY (`gift_id`) USING BTREE,
  INDEX `fk_gift2seller`(`seller_id`) USING BTREE,
  INDEX `fk_gift2class`(`class_id`) USING BTREE,
  CONSTRAINT `fk_gift2class` FOREIGN KEY (`class_id`) REFERENCES `gift_class` (`class_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_gift2seller` FOREIGN KEY (`seller_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gift
-- ----------------------------
INSERT INTO `gift` VALUES (00000002, 'iKiwi', '在此相别，予之有缘人', 935.49, '2023-07-09 18:11:21', 00001095, 001, 0, 1, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000003, 'ultra-brape', '在此相别，予之有缘人', 363.12, '2023-07-09 18:11:21', 00001071, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000004, 'Coerry pro', '在此相别，予之有缘人', 664.75, '2023-07-09 18:11:21', 00001042, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000005, 'Grape', '在此相别，予之有缘人', 734.17, '2023-07-09 18:11:21', 00001099, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000006, 'Orange', '在此相别，予之有缘人', 494.80, '2023-07-09 18:11:21', 00001061, 002, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000007, 'Kiwi', '在此相别，予之有缘人', 394.66, '2023-07-09 18:11:21', 00001090, 001, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000008, 'Pluoas', '在此相别，予之有缘人', 206.26, '2023-07-09 18:11:21', 00001046, 001, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000009, 'Strawberry', '在此相别，予之有缘人', 50.37, '2023-07-09 18:11:21', 00001089, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000010, 'Orange', '在此相别，予之有缘人', 15.84, '2023-07-09 18:11:21', 00001103, 003, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000011, 'Strawberry elite', '在此相别，予之有缘人', 521.49, '2023-07-09 18:11:21', 00001017, 001, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000012, 'atrawberry', '在此相别，予之有缘人', 350.73, '2023-07-09 18:11:21', 00001016, 001, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000013, 'Rambutan se', '在此相别，予之有缘人', 759.07, '2023-07-09 18:11:21', 00001013, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000014, 'Pluots', '在此相别，予之有缘人', 604.55, '2023-07-09 18:11:21', 00001058, 001, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000015, 'iPbuots', '在此相别，予之有缘人', 188.97, '2023-07-09 18:11:21', 00001096, 003, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000016, 'zrange core', '在此相别，予之有缘人', 556.33, '2023-07-09 18:11:21', 00001044, 002, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000017, 'Cherry pro', '在此相别，予之有缘人', 843.15, '2023-07-09 18:11:21', 00001033, 003, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000018, 'rango se', '在此相别，予之有缘人', 568.26, '2023-07-09 18:11:21', 00001068, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000019, 'Rambutan mini', '在此相别，予之有缘人', 913.08, '2023-07-09 18:11:21', 00001021, 003, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000020, 'Raspbarry', '在此相别，予之有缘人', 649.96, '2023-07-09 18:11:21', 00001040, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000021, 'Rsspberry', '在此相别，予之有缘人', 931.29, '2023-07-09 18:11:21', 00001097, 001, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000022, 'aambutan core', '在此相别，予之有缘人', 327.53, '2023-07-09 18:11:21', 00001073, 001, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000023, 'Mango elite', '在此相别，予之有缘人', 948.59, '2023-07-09 18:11:21', 00001022, 003, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000024, 'Appqe pro', '在此相别，予之有缘人', 155.42, '2023-07-09 18:11:21', 00001020, 003, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000025, 'Orange pro', '在此相别，予之有缘人', 765.80, '2023-07-09 18:11:21', 00001050, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000026, 'Cherry premium', '在此相别，予之有缘人', 493.72, '2023-07-09 18:11:21', 00001018, 001, 0, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000027, 'Grape core', '在此相别，予之有缘人', 143.62, '2023-07-09 18:11:21', 00001087, 002, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000028, 'jrange', '在此相别，予之有缘人', 995.72, '2023-07-09 18:11:21', 00001062, 003, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000030, 'Orange core', '在此相别，予之有缘人', 206.75, '2023-07-09 18:11:21', 00001094, 001, 1, 0, '/images/gift/default.jpg', 1);
INSERT INTO `gift` VALUES (00000031, 'Pluots air', '在此相别，予之有缘人', 488.23, '2023-07-09 18:11:21', 00001014, 003, 1, 0, '/images/gift/default.jpg', 1);

-- ----------------------------
-- Table structure for gift_class
-- ----------------------------
DROP TABLE IF EXISTS `gift_class`;
CREATE TABLE `gift_class`  (
  `class_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `className` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '分类待命名' COMMENT '分类名',
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gift_class
-- ----------------------------
INSERT INTO `gift_class` VALUES (001, '分类待命名');
INSERT INTO `gift_class` VALUES (002, '书籍');
INSERT INTO `gift_class` VALUES (003, '纪念');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msg_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `msg_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子标题',
  `msg_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `owner_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '作者id',
  `msg_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `like_count` int(0) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数',
  PRIMARY KEY (`msg_id`) USING BTREE,
  INDEX `fk_msg2owner`(`owner_id`) USING BTREE,
  CONSTRAINT `fk_msg2owner` FOREIGN KEY (`owner_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (00000001, '失恋了怎么办', 'k3GV0KXqWD', 00001075, '2023-07-15 09:39:27', 1);
INSERT INTO `msg` VALUES (00000003, '心不在此', 'pNY0jpqSgd', 00001095, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000004, '呱呱瓜瓜', '2RZ110toVH', 00001103, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000006, 'Crazy day！', 'EjjJXYqmqF', 00001068, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000007, '礼物随便', 'sRHVffJ3kX', 00001029, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000008, '累了', '2mc6aFODvh', 00001087, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000009, '斩断一切', 'oEeBbwMqkW', 00001025, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000010, '来！', 'oh2pbEH3ga', 00001090, '2023-07-12 10:48:16', 0);
INSERT INTO `msg` VALUES (00000012, 'ashduias', 'asdhuoahsdoi', 00001104, '2023-07-15 09:39:23', 1);
INSERT INTO `msg` VALUES (00000013, '', '这是测试的帖子内容', 00001108, '2023-07-15 09:40:09', 1);
INSERT INTO `msg` VALUES (00000015, '', '测试3', 00001108, '2023-07-15 09:40:43', 1);
INSERT INTO `msg` VALUES (00000016, '', '测试4', 00001108, '2023-07-15 09:39:07', 1);
INSERT INTO `msg` VALUES (00000017, '', 'asd1', 00001107, '2023-07-15 09:47:44', 2);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '订单记录id',
  `trade_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '交易记录id',
  `buyer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '送货地址',
  `buyer_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `buyer_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `order_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `fk_order_trade`(`trade_id`) USING BTREE,
  CONSTRAINT `fk_order_trade` FOREIGN KEY (`trade_id`) REFERENCES `record_trade` (`trade_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for record_com_com
-- ----------------------------
DROP TABLE IF EXISTS `record_com_com`;
CREATE TABLE `record_com_com`  (
  `com1_com2_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '评论给评论 id',
  `com1_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '评论1 id',
  `com2_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '评论2 id',
  PRIMARY KEY (`com1_com2_id`) USING BTREE,
  INDEX `fk_recor2com1`(`com1_id`) USING BTREE,
  INDEX `fk_recor2com2`(`com2_id`) USING BTREE,
  CONSTRAINT `fk_recor2com1` FOREIGN KEY (`com1_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_recor2com2` FOREIGN KEY (`com2_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_com_com
-- ----------------------------
INSERT INTO `record_com_com` VALUES (00000001, 00000008, 00000009);
INSERT INTO `record_com_com` VALUES (00000002, 00000002, 00000036);
INSERT INTO `record_com_com` VALUES (00000003, 00000002, 00000038);
INSERT INTO `record_com_com` VALUES (00000004, 00000002, 00000039);
INSERT INTO `record_com_com` VALUES (00000005, 00000038, 00000040);
INSERT INTO `record_com_com` VALUES (00000006, 00000038, 00000041);
INSERT INTO `record_com_com` VALUES (00000007, 00000038, 00000042);

-- ----------------------------
-- Table structure for record_follow
-- ----------------------------
DROP TABLE IF EXISTS `record_follow`;
CREATE TABLE `record_follow`  (
  `follow_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '关注记录id',
  `owner_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '关注者',
  `fans_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '粉丝',
  `follow_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '关注时间',
  PRIMARY KEY (`follow_id`) USING BTREE,
  INDEX `fk_follow2owner`(`owner_id`) USING BTREE,
  INDEX `fk_follow2fans`(`fans_id`) USING BTREE,
  CONSTRAINT `fk_follow2fans` FOREIGN KEY (`fans_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_follow2owner` FOREIGN KEY (`owner_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_follow
-- ----------------------------
INSERT INTO `record_follow` VALUES (00000004, 00001107, 00001108, '2023-07-14 22:31:22');
INSERT INTO `record_follow` VALUES (00000007, 00001107, 00001105, '2023-07-14 22:33:38');
INSERT INTO `record_follow` VALUES (00000008, 00001107, 00001103, '2023-07-14 22:33:42');

-- ----------------------------
-- Table structure for record_gift_com
-- ----------------------------
DROP TABLE IF EXISTS `record_gift_com`;
CREATE TABLE `record_gift_com`  (
  `gift_com_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '礼物 评论 id',
  `gift_id` int(8) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '礼物id',
  `com_id` int(8) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '评论id',
  PRIMARY KEY (`gift_com_id`) USING BTREE,
  INDEX `fk_reco2gift`(`gift_id`) USING BTREE,
  INDEX `fk_reco2com`(`com_id`) USING BTREE,
  CONSTRAINT `fk_reco2com` FOREIGN KEY (`com_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reco2gift` FOREIGN KEY (`gift_id`) REFERENCES `gift` (`gift_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_gift_com
-- ----------------------------
INSERT INTO `record_gift_com` VALUES (00000002, 00000002, 00000044);
INSERT INTO `record_gift_com` VALUES (00000003, 00000002, 00000045);

-- ----------------------------
-- Table structure for record_like
-- ----------------------------
DROP TABLE IF EXISTS `record_like`;
CREATE TABLE `record_like`  (
  `like_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '点赞记录id',
  `operator_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '点赞者id',
  `parent_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '点赞归属父级id',
  `like_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '点赞时间',
  `parent_class` tinyint(0) UNSIGNED NOT NULL COMMENT '点赞属类 0-gift 1-msg 2-com',
  PRIMARY KEY (`like_id`) USING BTREE,
  INDEX `fk_like_operator`(`operator_id`) USING BTREE,
  CONSTRAINT `fk_like_operator` FOREIGN KEY (`operator_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_like
-- ----------------------------
INSERT INTO `record_like` VALUES (00000002, 00001104, 00000002, '2023-07-12 14:10:15', 0);
INSERT INTO `record_like` VALUES (00000003, 00001104, 00000002, '2023-07-12 14:10:39', 1);
INSERT INTO `record_like` VALUES (00000005, 00001104, 00000017, '2023-07-14 19:44:47', 2);
INSERT INTO `record_like` VALUES (00000006, 00001104, 00000017, '2023-07-14 19:45:47', 1);
INSERT INTO `record_like` VALUES (00000007, 00001104, 00000001, '2023-07-14 21:44:43', 2);
INSERT INTO `record_like` VALUES (00000008, 00001104, 00000036, '2023-07-14 21:45:06', 2);
INSERT INTO `record_like` VALUES (00000009, 00001104, 00000002, '2023-07-14 21:45:53', 2);
INSERT INTO `record_like` VALUES (00000016, 00001108, 00000016, '2023-07-15 09:39:07', 1);
INSERT INTO `record_like` VALUES (00000018, 00001108, 00000014, '2023-07-15 09:39:21', 1);
INSERT INTO `record_like` VALUES (00000019, 00001108, 00000012, '2023-07-15 09:39:23', 1);
INSERT INTO `record_like` VALUES (00000020, 00001108, 00000001, '2023-07-15 09:39:27', 1);
INSERT INTO `record_like` VALUES (00000021, 00001108, 00000013, '2023-07-15 09:40:09', 1);
INSERT INTO `record_like` VALUES (00000025, 00001108, 00000015, '2023-07-15 09:40:43', 1);
INSERT INTO `record_like` VALUES (00000026, 00001108, 00000017, '2023-07-15 09:47:44', 1);

-- ----------------------------
-- Table structure for record_msg_com
-- ----------------------------
DROP TABLE IF EXISTS `record_msg_com`;
CREATE TABLE `record_msg_com`  (
  `msg_com_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '评论2帖子id',
  `msg_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '帖子id',
  `com_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '评论id',
  PRIMARY KEY (`msg_com_id`) USING BTREE,
  INDEX `fk_record2msg`(`msg_id`) USING BTREE,
  INDEX `fk_record2com`(`com_id`) USING BTREE,
  CONSTRAINT `fk_record2com` FOREIGN KEY (`com_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_record2msg` FOREIGN KEY (`msg_id`) REFERENCES `msg` (`msg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_msg_com
-- ----------------------------
INSERT INTO `record_msg_com` VALUES (00000012, 00000001, 00000002);
INSERT INTO `record_msg_com` VALUES (00000015, 00000001, 00000033);
INSERT INTO `record_msg_com` VALUES (00000016, 00000001, 00000034);
INSERT INTO `record_msg_com` VALUES (00000020, 00000017, 00000046);
INSERT INTO `record_msg_com` VALUES (00000021, 00000017, 00000047);
INSERT INTO `record_msg_com` VALUES (00000022, 00000017, 00000048);

-- ----------------------------
-- Table structure for record_msg_gift
-- ----------------------------
DROP TABLE IF EXISTS `record_msg_gift`;
CREATE TABLE `record_msg_gift`  (
  `msg_gift_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '帖子介绍礼物 记录 id',
  `msg_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '帖子id',
  `gift_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '礼物id',
  PRIMARY KEY (`msg_gift_id`) USING BTREE,
  INDEX `fk_rec2gift`(`gift_id`) USING BTREE,
  INDEX `fk_rec2msg`(`msg_id`) USING BTREE,
  CONSTRAINT `fk_rec2gift` FOREIGN KEY (`gift_id`) REFERENCES `gift` (`gift_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rec2msg` FOREIGN KEY (`msg_id`) REFERENCES `msg` (`msg_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_msg_gift
-- ----------------------------

-- ----------------------------
-- Table structure for record_report
-- ----------------------------
DROP TABLE IF EXISTS `record_report`;
CREATE TABLE `record_report`  (
  `report_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '举报记录id',
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '理由',
  `active_person_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '举报方',
  `defense_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '被举报方',
  `report_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '举报时间',
  PRIMARY KEY (`report_id`) USING BTREE,
  INDEX `fk_report2acperson`(`active_person_id`) USING BTREE,
  INDEX `fk_report2defense`(`defense_id`) USING BTREE,
  CONSTRAINT `fk_report2acperson` FOREIGN KEY (`active_person_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_report2defense` FOREIGN KEY (`defense_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_report
-- ----------------------------

-- ----------------------------
-- Table structure for record_trade
-- ----------------------------
DROP TABLE IF EXISTS `record_trade`;
CREATE TABLE `record_trade`  (
  `trade_id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '交易id',
  `trade_status` tinyint(0) UNSIGNED NOT NULL COMMENT '交易状态 0-购物车 1-已完成',
  `trade_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '操作时间',
  `gift_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '礼物id',
  `buyer_id` int(8) UNSIGNED ZEROFILL NOT NULL COMMENT '买家id',
  `buy_amount` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '购买数量',
  PRIMARY KEY (`trade_id`) USING BTREE,
  INDEX `fk_trade2gift`(`gift_id`) USING BTREE,
  INDEX `fk_trade2buyer`(`buyer_id`) USING BTREE,
  CONSTRAINT `fk_trade2buyer` FOREIGN KEY (`buyer_id`) REFERENCES `all_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_trade2gift` FOREIGN KEY (`gift_id`) REFERENCES `gift` (`gift_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record_trade
-- ----------------------------
INSERT INTO `record_trade` VALUES (00000001, 1, '2023-07-12 13:54:18', 00000012, 00001040, 1);
INSERT INTO `record_trade` VALUES (00000002, 0, '2023-07-12 13:54:18', 00000022, 00001054, 1);
INSERT INTO `record_trade` VALUES (00000003, 1, '2023-07-12 13:54:18', 00000015, 00001098, 1);
INSERT INTO `record_trade` VALUES (00000004, 0, '2023-07-12 13:54:18', 00000028, 00001047, 1);
INSERT INTO `record_trade` VALUES (00000005, 1, '2023-07-12 13:54:18', 00000023, 00001072, 1);
INSERT INTO `record_trade` VALUES (00000006, 1, '2023-07-12 13:54:18', 00000020, 00001094, 1);
INSERT INTO `record_trade` VALUES (00000007, 0, '2023-07-12 13:54:18', 00000021, 00001072, 1);
INSERT INTO `record_trade` VALUES (00000009, 0, '2023-07-12 13:54:18', 00000018, 00001061, 1);
INSERT INTO `record_trade` VALUES (00000010, 0, '2023-07-12 13:54:18', 00000002, 00001025, 1);

-- ----------------------------
-- Triggers structure for table record_follow
-- ----------------------------
DROP TRIGGER IF EXISTS `update_follow_fans_add`;
delimiter ;;
CREATE TRIGGER `update_follow_fans_add` AFTER INSERT ON `record_follow` FOR EACH ROW BEGIN
    UPDATE `all_user`
    SET `fans_count` = `fans_count` + 1
    WHERE `user_id` = NEW.owner_id;

    UPDATE `all_user`
    SET `follow_count` = `follow_count` + 1
    WHERE `user_id` = NEW.fans_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table record_follow
-- ----------------------------
DROP TRIGGER IF EXISTS `update_follow_fans_del`;
delimiter ;;
CREATE TRIGGER `update_follow_fans_del` AFTER DELETE ON `record_follow` FOR EACH ROW BEGIN
    IF (SELECT `fans_count` FROM `all_user` WHERE `user_id` = OLD.owner_id) > 0 THEN
        UPDATE `all_user`
        SET `fans_count` = `fans_count` - 1
        WHERE `user_id` = OLD.owner_id;
    END IF;

    IF (SELECT `follow_count` FROM `all_user` WHERE `user_id` = OLD.fans_id) > 0 THEN
        UPDATE `all_user`
        SET `follow_count` = `follow_count` - 1
        WHERE `user_id` = OLD.fans_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table record_like
-- ----------------------------
DROP TRIGGER IF EXISTS `update_likeCount_add`;
delimiter ;;
CREATE TRIGGER `update_likeCount_add` AFTER INSERT ON `record_like` FOR EACH ROW BEGIN
    IF NEW.parent_class = 0 THEN
        UPDATE gift SET like_count = like_count + 1 WHERE gift_id = NEW.parent_id;
    ELSEIF NEW.parent_class = 1 THEN
        UPDATE msg SET like_count = like_count + 1 WHERE msg_id = NEW.parent_id;
    ELSEIF NEW.parent_class = 2 THEN
        UPDATE `comment` SET like_count = like_count + 1 WHERE comment_id = NEW.parent_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table record_like
-- ----------------------------
DROP TRIGGER IF EXISTS `update_likeCount_del`;
delimiter ;;
CREATE TRIGGER `update_likeCount_del` AFTER DELETE ON `record_like` FOR EACH ROW BEGIN
    IF OLD.parent_class = 0 THEN
        IF (SELECT like_count FROM gift WHERE gift_id = OLD.parent_id) > 0 THEN
            UPDATE gift SET like_count = like_count - 1 WHERE gift_id = OLD.parent_id;
        END IF;
    ELSEIF OLD.parent_class = 1 THEN
        IF (SELECT like_count FROM msg WHERE msg_id = OLD.parent_id) > 0 THEN
            UPDATE msg SET like_count = like_count - 1 WHERE msg_id = OLD.parent_id;
        END IF;
    ELSEIF OLD.parent_class = 2 THEN
        IF (SELECT like_count FROM `comment` WHERE comment_id = OLD.parent_id) > 0 THEN
            UPDATE `comment` SET like_count = like_count - 1 WHERE comment_id = OLD.parent_id;
        END IF;
    END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
