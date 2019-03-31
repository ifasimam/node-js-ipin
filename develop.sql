/*
 Navicat Premium Data Transfer

 Source Server         : core node js
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : 103.101.224.31:3306
 Source Schema         : develop

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 18/03/2019 13:28:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_menu_all
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_all`;
CREATE TABLE `tb_menu_all` (
  `menu_id` int(11) DEFAULT NULL,
  `menu_label` tinytext,
  `menu_icon` tinytext,
  `menu_action` tinytext,
  `menu_type` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_menu_all
-- ----------------------------
BEGIN;
INSERT INTO `tb_menu_all` VALUES (1, 'Dashboard', 'dripicons-meter', '/dashboard', '1');
INSERT INTO `tb_menu_all` VALUES (2, 'Manajemen User', 'dripicons-user', '/user', '1');
INSERT INTO `tb_menu_all` VALUES (3, 'List User', '', '/user/list', '1');
COMMIT;

-- ----------------------------
-- Table structure for tb_menu_matrix
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_matrix`;
CREATE TABLE `tb_menu_matrix` (
  `matrix_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_parent_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `matrix_status` int(11) DEFAULT NULL,
  `matrix_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_menu_matrix
-- ----------------------------
BEGIN;
INSERT INTO `tb_menu_matrix` VALUES (1, 1, 0, 1, 1, 1);
INSERT INTO `tb_menu_matrix` VALUES (2, 2, 0, 1, 1, 2);
INSERT INTO `tb_menu_matrix` VALUES (3, 3, 2, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id_role` int(11) DEFAULT NULL,
  `nama` tinytext,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
BEGIN;
INSERT INTO `tb_role` VALUES (1, 'Super Admin', 1);
INSERT INTO `tb_role` VALUES (2, 'User', 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` tinytext,
  `role_id` tinytext,
  `user_username` tinytext,
  `user_password` tinytext,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES ('US201903151426131552634773789', '1', 'abizareyhan', '$2a$10$kxgdnMxCFsVvEOqPWN5SlOzEREp9Z.TMyVqAC3E/FZ8rfVDPTUmA6', '2019-03-15 02:18:27');
INSERT INTO `tb_user` VALUES ('US201903151426131552634773790', '1', 'fitriadmin', '$2a$10$kxgdnMxCFsVvEOqPWN5SlOzEREp9Z.TMyVqAC3E/FZ8rfVDPTUmA6', '2019-03-15 02:50:06');
INSERT INTO `tb_user` VALUES ('US201903151426131552634773791', '1', 'rey', '$2a$10$zMHvhP1LlGOteNHntpEcD.NzaMG3M/G/i7JEYCKpPkmvx0z5YCENO', '2019-03-15 14:26:14');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
