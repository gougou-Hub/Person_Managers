/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : db_personmanager

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2015-01-24 00:00:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_cj`
-- ----------------------------
DROP TABLE IF EXISTS `tb_cj`;
CREATE TABLE `tb_cj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cj_title` varchar(50) DEFAULT NULL,
  `cj_type` varchar(4) DEFAULT NULL,
  `cj_content` text,
  `cj_money` varchar(8) DEFAULT NULL,
  `cj_time` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_cj
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_name` varchar(20) DEFAULT NULL,
  `dt_createTime` varchar(30) DEFAULT NULL,
  `dt_bz` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES ('1', '研发部', '1', '1');
INSERT INTO `tb_department` VALUES ('2', '编辑部', '2', '2');

-- ----------------------------
-- Table structure for `tb_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `em_serialNumber` varchar(30) DEFAULT NULL,
  `em_name` varchar(10) DEFAULT NULL,
  `em_sex` varchar(2) DEFAULT NULL,
  `em_age` varchar(5) DEFAULT NULL,
  `em_IDCard` varchar(30) DEFAULT NULL,
  `em_born` varchar(50) DEFAULT NULL,
  `em_nation` varchar(10) DEFAULT NULL,
  `em_marriage` varchar(10) DEFAULT NULL,
  `em_visage` varchar(10) DEFAULT NULL,
  `em_ancestralHome` varchar(10) DEFAULT NULL,
  `em_tel` varchar(50) DEFAULT NULL,
  `em_address` varchar(50) DEFAULT NULL,
  `em_afterschool` varchar(50) DEFAULT NULL,
  `em_speciality` varchar(50) DEFAULT NULL,
  `em_culture` varchar(10) DEFAULT NULL,
  `em_startime` varchar(50) DEFAULT NULL,
  `em_departmentId` varchar(4) DEFAULT NULL,
  `em_typework` varchar(50) DEFAULT NULL,
  `em_creatime` varchar(50) DEFAULT NULL,
  `em_createName` varchar(50) DEFAULT NULL,
  `em_bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_invitejob`
-- ----------------------------
DROP TABLE IF EXISTS `tb_invitejob`;
CREATE TABLE `tb_invitejob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` varchar(4) DEFAULT NULL,
  `born` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `specialty` varchar(10) DEFAULT NULL,
  `experience` varchar(10) DEFAULT NULL,
  `teachSchool` varchar(50) DEFAULT NULL,
  `afterSchool` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `isstock` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_invitejob
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `managerLevel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'admin', 'admin', '0');

-- ----------------------------
-- Table structure for `tb_pay`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pay`;
CREATE TABLE `tb_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_emNumber` varchar(30) DEFAULT NULL,
  `pay_emName` varchar(10) DEFAULT NULL,
  `pay_month` varchar(30) DEFAULT NULL,
  `pay_baseMoney` int(11) DEFAULT NULL,
  `pay_overtime` int(11) DEFAULT NULL,
  `pay_age` int(11) DEFAULT NULL,
  `pay_check` int(11) DEFAULT NULL,
  `pay_absent` int(11) DEFAULT NULL,
  `pay_safety` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pay
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_train`
-- ----------------------------
DROP TABLE IF EXISTS `tb_train`;
CREATE TABLE `tb_train` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tn_man` varchar(20) DEFAULT NULL,
  `tn_title` varchar(30) DEFAULT NULL,
  `tn_content` varchar(10) DEFAULT NULL,
  `tn_time` varchar(10) DEFAULT NULL,
  `tn_address` varchar(10) DEFAULT NULL,
  `tn_join` varchar(10) DEFAULT NULL,
  `tn_bz` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_train
-- ----------------------------
