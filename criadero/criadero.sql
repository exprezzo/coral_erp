/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : erp_id51_conecarne

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-01-19 19:40:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `criadero_nacimiento_de_camada`
-- ----------------------------
DROP TABLE IF EXISTS `criadero_nacimiento_de_camada`;
CREATE TABLE `criadero_nacimiento_de_camada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `foto` char(255) DEFAULT NULL,
  `numero_de_crias` int(11) DEFAULT NULL,
  `peso_total` decimal(18,6) DEFAULT NULL,
  `madre` int(11) DEFAULT NULL,
  `padre` int(11) DEFAULT NULL,
  `serie` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of criadero_nacimiento_de_camada
-- ----------------------------
INSERT INTO `criadero_nacimiento_de_camada` VALUES ('1', '2012-01-01 12:00:00', '', '4', '0.000000', '0', '0', '');

-- ----------------------------
-- Table structure for `criadero_registro_de_cria`
-- ----------------------------
DROP TABLE IF EXISTS `criadero_registro_de_cria`;
CREATE TABLE `criadero_registro_de_cria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` char(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `peso` decimal(18,6) DEFAULT NULL,
  `fk_camada` int(11) DEFAULT NULL,
  `fk_sexo` int(11) DEFAULT NULL,
  `codigo` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of criadero_registro_de_cria
-- ----------------------------

-- ----------------------------
-- Table structure for `criadero_seguimiento`
-- ----------------------------
DROP TABLE IF EXISTS `criadero_seguimiento`;
CREATE TABLE `criadero_seguimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_cria` int(11) DEFAULT NULL,
  `peso` decimal(18,6) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `foto` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of criadero_seguimiento
-- ----------------------------

-- ----------------------------
-- Table structure for `genero`
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of genero
-- ----------------------------
