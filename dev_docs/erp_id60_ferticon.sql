/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : erp_id60_ferticon

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2014-01-17 17:59:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ventas_concepto
-- ----------------------------
DROP TABLE IF EXISTS `ventas_concepto`;
CREATE TABLE `ventas_concepto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `fk_um` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ventas_concepto
-- ----------------------------
INSERT INTO `ventas_concepto` VALUES ('1', 'Nuevo Concepto', '1');
INSERT INTO `ventas_concepto` VALUES ('2', 'SSd', '3');

-- ----------------------------
-- Table structure for ventas_um
-- ----------------------------
DROP TABLE IF EXISTS `ventas_um`;
CREATE TABLE `ventas_um` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `abreviacion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ventas_um
-- ----------------------------
INSERT INTO `ventas_um` VALUES ('1', 'Kilo', 'kg');
INSERT INTO `ventas_um` VALUES ('2', 'Pieza', 'pza');
INSERT INTO `ventas_um` VALUES ('3', 'No Aplica', 'NA');
