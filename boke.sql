/*
 Navicat Premium Data Transfer

 Source Server         : MySqlConn
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : boke

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 10/01/2021 09:29:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog_admin
-- ----------------------------
DROP TABLE IF EXISTS `blog_admin`;
CREATE TABLE `blog_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article`  (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `art_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `art_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `art_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `art_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `art_time` datetime(6) NULL DEFAULT NULL,
  `art_editor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `art_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cate_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`art_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category`  (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cate_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cate_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cate_pid` int(11) NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_collect
-- ----------------------------
DROP TABLE IF EXISTS `blog_collect`;
CREATE TABLE `blog_collect`  (
  `coll_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`coll_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment`  (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `comm_nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comm_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`comm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_config
-- ----------------------------
DROP TABLE IF EXISTS `blog_config`;
CREATE TABLE `blog_config`  (
  `conf_id` int(11) NOT NULL AUTO_INCREMENT,
  `conf_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conf_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conf_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conf_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `conf_tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `field_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `field_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`conf_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_link
-- ----------------------------
DROP TABLE IF EXISTS `blog_link`;
CREATE TABLE `blog_link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `link_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_permission
-- ----------------------------
DROP TABLE IF EXISTS `blog_permission`;
CREATE TABLE `blog_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `per_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `per_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_role
-- ----------------------------
DROP TABLE IF EXISTS `blog_role`;
CREATE TABLE `blog_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `updated_at` datetime(6) NULL DEFAULT NULL,
  `deleted_at` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES (1, 'zhangsan', 'eyJpdiI6Ik0zcTBqY1d3SHZIdUxjRzM0aWRFYnc9PSIsInZhbHVlIjoiOW9ad2FmYnZoSjRySTVWdFJzVTRmdz09IiwibWFjIjoiMzRlMWIxZjMyZDIyMGEwZWNmZmViY2I0NWE3ZDVhZmNlOWEwNDM5NjVmNDBjOTE1ODY3YzZiNzU1MTkzNmRkNiJ9', NULL, '2021-01-09 14:55:12.000000', NULL);
INSERT INTO `blog_user` VALUES (2, 'lisi', 'eyJpdiI6InFWTVUxVm1XTmdNT0hOV0dBLzkzN1E9PSIsInZhbHVlIjoiNVFMK1lTSzAzZnFBazVGR05RUjdYZz09IiwibWFjIjoiNzRjZGFjMjE1YjZhN2MzZDhlYzIxZTZhZDAyMWQ1ODYwNjdiYTYwODU3NjNlMTA1ZGI3NWJlMzNmMWExYThlNSJ9', NULL, NULL, NULL);
INSERT INTO `blog_user` VALUES (3, 'wangwu', 'eyJpdiI6IlF3aUdNS0RFSUF2WTlCNStnV09QbWc9PSIsInZhbHVlIjoiOSt0R1BuTG05TGVuMnliMmQ1a1RYZz09IiwibWFjIjoiYzkwMWE0MGY4YjdhM2M1NmYwNzMyMjMwZTdlMDRlYjc1NjRiMzk5NjNiYWRjZjk5OTk2NDc5NWY4MGM3ZThhYyJ9', '2021-01-09 14:54:29.000000', '2021-01-09 14:55:45.000000', NULL);

SET FOREIGN_KEY_CHECKS = 1;
