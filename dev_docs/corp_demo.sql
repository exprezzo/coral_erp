/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : corp_demo

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2014-01-14 17:58:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for facturacion_certificados
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_certificados`;
CREATE TABLE `facturacion_certificados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_razon_social` int(11) DEFAULT NULL,
  `no_serie` char(255) DEFAULT NULL,
  `ano_aprovacion` char(255) DEFAULT NULL,
  `num_aprovacion` char(255) DEFAULT NULL,
  `cer_pem` text,
  `key_pem` text,
  `pass` char(255) DEFAULT NULL,
  `valido_desde` datetime DEFAULT NULL,
  `valido_hasta` datetime DEFAULT NULL,
  `es_default` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_serie` (`no_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_certificados
-- ----------------------------
INSERT INTO `facturacion_certificados` VALUES ('1', '1', '20001000000100005867', '<br /><b>Notice</b>:  Undefined index: ano_aprovacion in <b>C:\\xampp\\htdocs\\facturacion\\sistema\\presentacion\\html.php\\certificados\\edicion.php</b> on line <b>133</b><br />', '<br /><b>Notice</b>:  Undefined index: num_aprovacion in <b>C:\\xampp\\htdocs\\facturacion\\sistema\\presentacion\\html.php\\certificados\\edicion.php</b> on line <b>138</b><br />', '-----BEGIN CERTIFICATE-----\nMIIEdDCCA1ygAwIBAgIUMjAwMDEwMDAwMDAxMDAwMDU4NjcwDQYJKoZIhvcNAQEF\nBQAwggFvMRgwFgYDVQQDDA9BLkMuIGRlIHBydWViYXMxLzAtBgNVBAoMJlNlcnZp\nY2lvIGRlIEFkbWluaXN0cmFjacOzbiBUcmlidXRhcmlhMTgwNgYDVQQLDC9BZG1p\nbmlzdHJhY2nDs24gZGUgU2VndXJpZGFkIGRlIGxhIEluZm9ybWFjacOzbjEpMCcG\nCSqGSIb3DQEJARYaYXNpc25ldEBwcnVlYmFzLnNhdC5nb2IubXgxJjAkBgNVBAkM\nHUF2LiBIaWRhbGdvIDc3LCBDb2wuIEd1ZXJyZXJvMQ4wDAYDVQQRDAUwNjMwMDEL\nMAkGA1UEBhMCTVgxGTAXBgNVBAgMEERpc3RyaXRvIEZlZGVyYWwxEjAQBgNVBAcM\nCUNveW9hY8OhbjEVMBMGA1UELRMMU0FUOTcwNzAxTk4zMTIwMAYJKoZIhvcNAQkC\nDCNSZXNwb25zYWJsZTogSMOpY3RvciBPcm5lbGFzIEFyY2lnYTAeFw0xMjA3Mjcx\nNzAyMDBaFw0xNjA3MjcxNzAyMDBaMIHbMSkwJwYDVQQDEyBBQ0NFTSBTRVJWSUNJ\nT1MgRU1QUkVTQVJJQUxFUyBTQzEpMCcGA1UEKRMgQUNDRU0gU0VSVklDSU9TIEVN\nUFJFU0FSSUFMRVMgU0MxKTAnBgNVBAoTIEFDQ0VNIFNFUlZJQ0lPUyBFTVBSRVNB\nUklBTEVTIFNDMSUwIwYDVQQtExxBQUEwMTAxMDFBQUEgLyBIRUdUNzYxMDAzNFMy\nMR4wHAYDVQQFExUgLyBIRUdUNzYxMDAzTURGUk5OMDkxETAPBgNVBAsTCFVuaWRh\nZCAxMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2TTQSPONBOVxpXv9wLYo8\njezBrb34i/tLx8jGdtyy27BcesOav2c1NS/Gdv10u9SkWtwdy34uRAVe7H0a3VMR\nLHAkvp2qMCHaZc4T8k47Jtb9wrOEh/XFS8LgT4y5OQYo6civfXXdlvxWU/gdM/e6\nI2lg6FGorP8H4GPAJ/qCNwIDAQABox0wGzAMBgNVHRMBAf8EAjAAMAsGA1UdDwQE\nAwIGwDANBgkqhkiG9w0BAQUFAAOCAQEATxMecTpMbdhSHo6KVUg4QVF4Op2IBhiM\naOrtrXBdJgzGotUFcJgdBCMjtTZXSlq1S4DG1jr8p4NzQlzxsdTxaB8nSKJ4KEMg\nIT7E62xRUj15jI49qFz7f2uMttZLNThipunsN/NF1XtvESMTDwQFvas/Ugig6qwE\nfSZc0MDxMpKLEkEePmQwtZD+zXFSMVa6hmOu4M+FzGiRXbj4YJXn9Myjd8xbL/c+\n9UIcrYoZskxDvMxc6/6M3rNNDY3OFhBK+V/sPMzWWGt8S1yjmtPfXgFs1t65AZ2h\ncTwTAuHrKwDatJ1ZPfa482ZBROAAX1waz7WwXp0gso7sDCm2/yUVww==\n-----END CERTIFICATE-----\n', '-----BEGIN PRIVATE KEY-----\nMIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBALZNNBI840E5XGle\n/3AtijyN7MGtvfiL+0vHyMZ23LLbsFx6w5q/ZzU1L8Z2/XS71KRa3B3Lfi5EBV7s\nfRrdUxEscCS+naowIdplzhPyTjsm1v3Cs4SH9cVLwuBPjLk5BijpyK99dd2W/FZT\n+B0z97ojaWDoUais/wfgY8An+oI3AgMBAAECgYAyEeJLYA3KzEZlaoId/WQKXbC5\nQU78BPZwSd8LI3paZZx6yf0Pc6KVKpaEnAnhFfXBbnMme82cR3JyL+Hsjv1RMxz2\naOQFmj1lSJAth3w4aAYx2gZzo0Hqg9Qjn/Bew/ChaDAwvDGqpbVfOeZkVuF36hqd\ngvXh4nD3POLnoXctgQJBAOrygWhspAauyzBsy8ZhHBS84iwlJbZ64RE+95d3sMGC\nIuW00+FOUxtD4bz0xbCaV3zkbGAntpjcGx5r1fN2ucMCQQDGowycldpEtqZyvgm2\nXnIRcHA8U3d71xVMguSQqIHrk+BYBdmdB9A86jhMS4CDDfxQPWT6k3ZlydAdwbFB\nDBp9AkBVqLDRt7pdzWC7eQ8adtFcJjl3yttjGo3wUbrHeJXzF1VN1o3heUMHj8o/\nsCZbawo2uLlinVgPh0BD6SEKMOEtAkAEVlUVKjR84Zwaz0l5APDurozU1GG8g4LE\ni+sfuX40vaLdaStKQXxriBW4nMFumySSP/Tvf77LFDAGJk+PgwslAkEArlH6rpml\ndpCH70qPwOeqd8a+5qikPTfg5e9z+uEjtT1aA0VksKtKo7lfeCSqV9Xk+5QZ4nZR\nw6djgyVGmEtdaw==\n-----END PRIVATE KEY-----\n', '12345678a', '2012-07-27 11:02:00', '2016-07-27 11:02:00', '1');

-- ----------------------------
-- Table structure for facturacion_clientes_bancos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_clientes_bancos`;
CREATE TABLE `facturacion_clientes_bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco` char(255) DEFAULT NULL,
  `cuenta` char(255) DEFAULT NULL,
  `fk_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente` (`fk_cliente`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`fk_cliente`) REFERENCES `facturacion_receptores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_clientes_bancos
-- ----------------------------
INSERT INTO `facturacion_clientes_bancos` VALUES ('1', 'Banamex', '5555', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('2', 'Bancomer', '6666', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('3', 'Banamex', '5555', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('4', 'Bancomer', '6666', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('5', 'Banamex', '5555', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('6', 'Bancomer', '6666', null);
INSERT INTO `facturacion_clientes_bancos` VALUES ('7', 'asdf', 'asdf', '2');
INSERT INTO `facturacion_clientes_bancos` VALUES ('8', 'asdf', 'asdf', '2');

-- ----------------------------
-- Table structure for facturacion_conceptos_clasificaciones
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_conceptos_clasificaciones`;
CREATE TABLE `facturacion_conceptos_clasificaciones` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nombre` char(255) DEFAULT NULL,
  `fk_clasificacion_padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_conceptos_clasificaciones
-- ----------------------------

-- ----------------------------
-- Table structure for facturacion_config
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_config`;
CREATE TABLE `facturacion_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timbres_disponibles` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_config
-- ----------------------------
INSERT INTO `facturacion_config` VALUES ('1', '7');

-- ----------------------------
-- Table structure for facturacion_empresa_usuario
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_empresa_usuario`;
CREATE TABLE `facturacion_empresa_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_razon_social` int(11) DEFAULT NULL,
  `fk_rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unico` (`fk_usuario`,`fk_razon_social`,`fk_rol`) USING BTREE,
  KEY `razon social` (`fk_razon_social`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_empresa_usuario
-- ----------------------------
INSERT INTO `facturacion_empresa_usuario` VALUES ('1', '102', '1', null);

-- ----------------------------
-- Table structure for facturacion_factura
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_factura`;
CREATE TABLE `facturacion_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` char(10) DEFAULT NULL,
  `serie` char(10) DEFAULT NULL,
  `folio` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `formaDePago` char(50) DEFAULT NULL,
  `noCertificado` char(50) DEFAULT NULL,
  `condicionesDePago` char(50) DEFAULT NULL,
  `subTotal` decimal(18,6) DEFAULT NULL,
  `descuento` decimal(18,6) DEFAULT NULL,
  `descuento_en_porcentaje` decimal(18,6) DEFAULT '0.000000',
  `motivoDescuento` char(50) DEFAULT NULL,
  `TipoCambio` char(255) DEFAULT NULL,
  `Moneda` char(50) DEFAULT NULL,
  `traslados` decimal(18,6) DEFAULT NULL,
  `retenciones` decimal(18,6) DEFAULT NULL,
  `total` decimal(18,6) DEFAULT NULL,
  `saldo` decimal(18,6) DEFAULT '0.000000',
  `tipoDeComprobante` char(50) DEFAULT NULL,
  `metodoDePago` char(50) DEFAULT NULL,
  `LugarExpedicion` char(255) DEFAULT NULL,
  `NumCtaPago` char(20) DEFAULT NULL,
  `folio_fiscal` char(100) DEFAULT NULL,
  `FechaTimbrado` datetime DEFAULT NULL,
  `FolioFiscalOrig` char(50) DEFAULT NULL,
  `SerieFolioFiscalOrig` char(10) DEFAULT NULL,
  `FechaFolioFiscalOrig` datetime DEFAULT NULL,
  `MontoFolioFiscalOrig` decimal(18,6) DEFAULT NULL,
  `emisor_nombre` char(255) DEFAULT NULL,
  `emisor_razon_social` char(255) DEFAULT NULL,
  `emisor_rfc` char(20) DEFAULT NULL,
  `emisor_direccion` char(255) DEFAULT NULL,
  `url_logo` char(255) DEFAULT NULL,
  `cliente_nombre` char(255) DEFAULT NULL,
  `cliente_rfc` char(255) DEFAULT NULL,
  `cliente_direccion` char(255) DEFAULT NULL,
  `fk_serie` int(11) DEFAULT NULL,
  `fk_cliente` int(11) DEFAULT NULL,
  `fk_razon_social` int(11) DEFAULT NULL,
  `emisor_calle` char(100) DEFAULT NULL,
  `emisor_municipio` char(100) DEFAULT NULL,
  `emisor_estado` char(100) DEFAULT NULL,
  `emisor_pais` char(100) DEFAULT NULL,
  `emisor_codigoPostal` char(20) DEFAULT NULL,
  `fk_forma_pago` int(11) DEFAULT NULL,
  `fk_metodo_de_pago` int(11) DEFAULT NULL,
  `fk_tipo_comprobante` int(11) DEFAULT NULL,
  `regimen` char(255) DEFAULT NULL,
  `receptor_pais` char(50) DEFAULT NULL,
  `iva_tras` decimal(18,6) DEFAULT NULL,
  `status` char(1) DEFAULT 'A',
  `noCertificadoSAT` char(50) DEFAULT NULL,
  `clave` int(11) DEFAULT NULL,
  `modoPrueba` int(1) DEFAULT '0',
  `archivosGenerados` int(1) DEFAULT '0',
  `datos_adicionales` char(255) DEFAULT '',
  `emisor_colonia` char(50) DEFAULT '',
  `emisor_numero_exterior` char(20) DEFAULT '',
  `emisor_numero_interior` char(20) DEFAULT '',
  `emisor_ciudad` char(50) DEFAULT '',
  `emisor_localidad` char(50) DEFAULT '',
  `emisor_referencia` char(50) DEFAULT '',
  `receptor_municipio` char(50) DEFAULT '',
  `receptor_estado` char(50) DEFAULT '',
  `receptor_ciudad` char(50) DEFAULT '',
  `receptor_calle` char(50) DEFAULT '',
  `receptor_numero_exterior` char(50) DEFAULT '',
  `receptor_numero_interior` char(50) DEFAULT '',
  `receptor_colonia` char(50) DEFAULT '',
  `receptor_localidad` char(50) DEFAULT '',
  `receptor_referencia` char(50) DEFAULT '',
  `receptor_codigo_postal` char(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_factura
-- ----------------------------
INSERT INTO `facturacion_factura` VALUES ('1', '3.2', 'A', '1', '2013-12-13 17:49:07', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '', null, '', '', '2013-12-13 17:48:20', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 0000', '/demo.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', '      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO', '1', '1', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '0000', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '0', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'México', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('2', '3.2', 'A', '2', '2013-12-13 17:50:47', 'Pago en una sola exhibición', '20001000000100005867', '', '2.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '2.320000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '000326F9-7E57-4C36-8AE9-0B84A92C16F8', '2013-12-13 18:50:56', '', '', '2013-12-13 17:50:11', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', '20001000000100005867', null, '1', '1', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('3', '3.2', 'A', '3', '2013-12-14 12:04:28', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '', null, '', '', '2013-12-14 11:52:17', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'CLIENTE DE PRUEBA', 'AAA020202AAA', ' AGUASCALIENTES  AGUASCALIENTES  MÉXICO', '1', '2', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '0', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'Aguascalientes', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('4', '3.2', 'A', '4', '2013-12-14 12:05:12', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '', null, '', '', '2013-12-14 12:04:42', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '0', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('5', '3.2', 'A', '5', '2013-12-14 12:12:38', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '92BBFEA4-7E57-430D-9E19-41EB169D4033', '2014-01-14 17:23:09', '', '', '2013-12-14 12:10:19', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'C', '20001000000100005867', null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('6', '3.2', 'A', '6', '2013-12-14 12:23:57', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '', '2013-12-14 13:18:20', '', '', '2013-12-14 12:18:04', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', '20001000000100005867', null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('7', '3.2', 'A', '7', '2013-12-14 13:33:03', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Aguascalientes, Aguascalientes, México', '', '', null, '', '', '2013-12-14 13:15:13', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '/demo.jpg', 'CLIENTE DE PRUEBA', 'AAA020202AAA', ' AGUASCALIENTES  AGUASCALIENTES  MÉXICO', '1', '2', '1', 'conocida', 'Aguascalientes', 'Aguascalientes', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', 'Aguascalientes', '', '', 'Aguascalientes', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('8', '3.2', 'A', '8', '2013-12-16 15:03:08', 'Pago en una sola exhibición', '20001000000100005867', '', '1.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '1.160000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', null, '', '', '2013-12-16 09:36:38', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/demo.jpg', 'CLIENTE DE PRUEBA', 'AAA020202AAA', ' AGUASCALIENTES  AGUASCALIENTES  MÉXICO', '1', '2', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'Aguascalientes', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('9', '3.2', 'A', '9', '2013-12-16 10:22:27', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '69599EC4-7E57-4B0E-AC18-E861D8C6244D', '2014-01-14 17:38:10', '', '', '2013-12-16 10:20:20', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'C', '20001000000100005867', null, '1', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('10', '3.2', 'A', '10', '2013-12-16 17:16:14', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', null, '', '', '2013-12-16 15:51:11', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'CLIENTE DE PRUEBA', 'AAA020202AAA', ' AGUASCALIENTES  AGUASCALIENTES  MÉXICO', '1', '1', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'Aguascalientes', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('11', '3.2', 'A', '11', '2013-12-16 17:30:07', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', null, '', '', '2013-12-16 17:17:08', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'CLIENTE DE PRUEBA', 'AAA020202AAA', ' AGUASCALIENTES  AGUASCALIENTES  MÉXICO', '1', '2', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '0', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'Aguascalientes', 'Aguascalientes', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('12', '3.2', 'A', '12', '2013-12-26 17:18:13', 'Pago en una sola exhibición', '20001000000100005867', '', '4396.550000', '0.000000', '0.000000', '', '', 'MXN', null, null, '5100.000000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', '2013-12-26 10:59:50', '', '', '2013-12-20 13:25:27', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '1', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', '20001000000100005867', null, '1', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('13', '3.2', 'A', '5414', '2013-11-29 13:01:01', 'Pago en una sola exibicion', '20001000000100005867', 'BANAMEX', '1143.100000', null, '0.000000', null, null, 'MXN', '19.200000', '0.000000', '1326.000000', '0.000000', 'INGRESO', 'cheque', 'Mazatlan, Sinaloa, Mexico.', '0065', '32544630-7E57-4FEA-AFEA-A2A71AA9BC78', '2013-12-30 18:52:16', null, null, null, null, 'ANA BERTHA CONDE BARRON', 'ANA BERTHA CONDE BARRON', 'AAA010101AAA', 'Carlos Canseco 1320, La marina. Mazatlan, Sinaloa, Mexico', 'triples.jpg', 'TRIPLES SOLUCIONES ADMINISTRATIVAS SA DE CV', 'TSA131021DN9', 'Agustin melgar 1310 Col. Centro Mazatlan, Sin. Mexico', '1', '0', '1', 'Carlos Canseco', 'Mazatlan', 'Sinaloa', 'Mexico', '82180', '1', null, '2', 'Regimen 1, Regimen 2', 'M?xico', null, 'A', '20001000000100005867', '5414', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `facturacion_factura` VALUES ('14', '3.2', 'A', '13', '2014-01-10 11:37:09', 'Pago en una sola exhibición', '20001000000100005867', '', '12.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '13.920000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', null, '', '', '2014-01-10 11:35:53', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '3', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', '', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');
INSERT INTO `facturacion_factura` VALUES ('15', '3.2', 'A', '14', '2014-01-10 16:45:25', 'Pago en una sola exhibición', '20001000000100005867', '', '0.000000', '0.000000', '0.000000', '', '', 'MXN', null, null, '0.000000', '0.000000', 'Ingreso', 'efectivo', 'Mazatlán, Sinaloa, México', '', '', null, '', '', '2014-01-10 16:45:18', '0.000000', 'Nombre Comercial Prueba', 'RAZON SOCIAL PRUEBA', 'AAA010101AAA', 'CONOCIDA 000 EXT 000 FRACC. CONOCIDO VILLA UNION MAZATLÁN SINALOA MÉXICO 82100', '/triples.jpg', 'PUBLICO EN GENERAL', 'XAXX010101000', 'CALLE      AGUASCALIENTES AGUASCALIENTES AGUASCALIENTES MÉXICO 82100', '1', '3', '1', 'conocida', 'Mazatlán', 'Sinaloa', 'México', '82100', '1', '2', '2', 'REGIMEN PRUEBA', 'MÃ©xico', '0.000000', 'A', null, null, '0', '1', '', 'Fracc. Conocido', '000', 'Ext 000', '', 'Villa Union', '', 'México', 'Aguascalientes', '', 'calle', '', '', '', '', '', '82100');

-- ----------------------------
-- Table structure for facturacion_facturas_conceptos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_facturas_conceptos`;
CREATE TABLE `facturacion_facturas_conceptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` decimal(18,6) DEFAULT NULL,
  `unidad` char(255) DEFAULT NULL,
  `fk_um` int(11) DEFAULT NULL,
  `fk_concepto` int(11) DEFAULT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `valorUnitario` decimal(18,6) DEFAULT NULL,
  `importe` decimal(18,6) DEFAULT NULL,
  `noIdentificacion` char(255) DEFAULT NULL,
  `fk_factura` int(11) DEFAULT NULL,
  `impuestos` text,
  PRIMARY KEY (`id`),
  KEY `factura` (`fk_factura`),
  CONSTRAINT `factura` FOREIGN KEY (`fk_factura`) REFERENCES `facturacion_factura` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_facturas_conceptos
-- ----------------------------
INSERT INTO `facturacion_facturas_conceptos` VALUES ('1', '1.000000', 'pza', '2', '1', 'Producto', '0.000000', '0.000000', '', '1', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('2', '1.000000', 'pza', '2', '1', 'Producto', '2.000000', '2.000000', '', '2', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('3', '1.000000', 'pza', '2', '1', 'Producto', '0.000000', '0.000000', '', '5', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('4', '1.000000', 'pza', '2', '1', 'Producto', '0.000000', '0.000000', '', '6', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('5', '1.000000', 'pza', '2', '1', 'Producto', '0.000000', '0.000000', '', '7', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('6', '1.000000', 'Servicio', '3', '1', 'Producto', '1.000000', '1.000000', '', '8', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('7', '1.000000', 'Servicio', '3', '1', 'Producto', '0.000000', '0.000000', '', '9', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('8', '1.000000', 'Servicio', '3', '1', 'Producto', '0.000000', '0.000000', '', '10', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('9', '1.000000', 'Servicio', '3', '1', 'Producto', '3879.310000', '3879.310000', '', '12', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('10', '1.000000', 'Servicio', '3', '1', 'Producto', '517.240000', '517.240000', '', '12', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('11', '2.000000', 'PZA', null, null, 'UN ARTICULO', '10.000000', '20.000000', null, '13', null);
INSERT INTO `facturacion_facturas_conceptos` VALUES ('12', '1.000000', 'NA', null, null, 'UN SERVI\"CIO', '100.000000', '100.000000', null, '13', null);
INSERT INTO `facturacion_facturas_conceptos` VALUES ('13', '1.000000', 'Servicio', '3', '1', 'Producto', '0.000000', '0.000000', '', '14', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('14', '2.000000', '', '0', '0', '', '2.000000', '4.000000', '', '14', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('15', '2.000000', '', '0', '0', '', '4.000000', '8.000000', '', '14', '');
INSERT INTO `facturacion_facturas_conceptos` VALUES ('16', '1.000000', 'Servicio', '3', '1', 'Producto', '0.000000', '0.000000', '', '15', '');

-- ----------------------------
-- Table structure for facturacion_factura_impuesto
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_factura_impuesto`;
CREATE TABLE `facturacion_factura_impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_impuesto` int(11) DEFAULT NULL,
  `fk_factura` int(11) DEFAULT NULL,
  `seleccionado` tinyint(1) DEFAULT NULL,
  `importe` decimal(18,6) DEFAULT '0.000000',
  `tasai` decimal(18,6) DEFAULT NULL,
  `nombre` char(255) DEFAULT NULL,
  `naturaleza` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_impuesto` (`fk_impuesto`),
  KEY `fk_factura` (`fk_factura`),
  CONSTRAINT `fk_factura` FOREIGN KEY (`fk_factura`) REFERENCES `facturacion_factura` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_factura_impuesto
-- ----------------------------
INSERT INTO `facturacion_factura_impuesto` VALUES ('1', '1', '1', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('2', '1', '2', '1', '0.320000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('3', '1', '3', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('4', '1', '4', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('5', '1', '5', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('6', '1', '6', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('7', '1', '7', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('8', '1', '8', '1', '0.160000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('9', '1', '9', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('10', '1', '10', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('11', '1', '11', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('12', '1', '12', '1', '703.448000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('13', null, '13', '1', '19.200000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('14', null, '13', '1', '12.000000', '10.000000', 'ISR', 'RETENIDO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('15', '1', '14', '1', '1.920000', '16.000000', 'IVA', 'TRASLADADO');
INSERT INTO `facturacion_factura_impuesto` VALUES ('16', '1', '15', '1', '0.000000', '16.000000', 'IVA', 'TRASLADADO');

-- ----------------------------
-- Table structure for facturacion_formas_de_pago
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_formas_de_pago`;
CREATE TABLE `facturacion_formas_de_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_formas_de_pago
-- ----------------------------
INSERT INTO `facturacion_formas_de_pago` VALUES ('1', 'Pago en una sola exhibición');
INSERT INTO `facturacion_formas_de_pago` VALUES ('2', 'Parcialidades');

-- ----------------------------
-- Table structure for facturacion_impuesto
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_impuesto`;
CREATE TABLE `facturacion_impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `tasa` float(18,4) DEFAULT NULL,
  `naturaleza` enum('RETENIDO','TRASLADADO') DEFAULT NULL,
  `detalles` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_impuesto
-- ----------------------------
INSERT INTO `facturacion_impuesto` VALUES ('1', 'IVA', '16.0000', 'TRASLADADO', null);

-- ----------------------------
-- Table structure for facturacion_impuesto_concepto
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_impuesto_concepto`;
CREATE TABLE `facturacion_impuesto_concepto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_impuesto` int(11) DEFAULT NULL,
  `fk_concepto` int(11) DEFAULT NULL,
  `seleccionado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_impuesto_concepto
-- ----------------------------

-- ----------------------------
-- Table structure for facturacion_metodos_de_pago
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_metodos_de_pago`;
CREATE TABLE `facturacion_metodos_de_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `es_pago_con_tarjeta` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_metodos_de_pago
-- ----------------------------
INSERT INTO `facturacion_metodos_de_pago` VALUES ('2', 'efectivo', '0');
INSERT INTO `facturacion_metodos_de_pago` VALUES ('3', 'tarjeta de crÃ©dito o debito', '1');
INSERT INTO `facturacion_metodos_de_pago` VALUES ('4', 'depÃ³sito en cuenta', '0');

-- ----------------------------
-- Table structure for facturacion_moneda
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_moneda`;
CREATE TABLE `facturacion_moneda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(5) DEFAULT NULL,
  `moneda` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_moneda
-- ----------------------------
INSERT INTO `facturacion_moneda` VALUES ('1', 'MXN', 'Peso mexicano');
INSERT INTO `facturacion_moneda` VALUES ('2', 'USD', 'DÃ³lar estadounidense');
INSERT INTO `facturacion_moneda` VALUES ('3', 'USN', 'DÃ³lar estadounidense (Siguiente dÃ­a) (cÃ³digo de fondos)');
INSERT INTO `facturacion_moneda` VALUES ('4', 'USS', 'DÃ³lar estadounidense (Mismo dÃ­a) (cÃ³digo de fondos)');

-- ----------------------------
-- Table structure for facturacion_paginas
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_paginas`;
CREATE TABLE `facturacion_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` char(255) DEFAULT NULL,
  `contenido` text,
  `autor` char(255) DEFAULT NULL,
  `fk_autor` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `target` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_paginas
-- ----------------------------
INSERT INTO `facturacion_paginas` VALUES ('1', 'Inicio', 'Esta es la pagina de inicio', '', '0', '0000-00-00 00:00:00', 'portal/paginas/inicio');
INSERT INTO `facturacion_paginas` VALUES ('2', 'Documentacion', 'Esta es la pagina de Documentacion', '', '0', '0000-00-00 00:00:00', '/portal/paginas/documentacion');

-- ----------------------------
-- Table structure for facturacion_pagos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_pagos`;
CREATE TABLE `facturacion_pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `importe` decimal(18,6) DEFAULT NULL,
  `fk_origen` int(11) DEFAULT NULL,
  `fk_parcialidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pago` (`fk_origen`,`fk_parcialidad`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_pagos
-- ----------------------------

-- ----------------------------
-- Table structure for facturacion_productos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_productos`;
CREATE TABLE `facturacion_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `precio` char(255) DEFAULT NULL,
  `fk_tipo_concepto` int(11) DEFAULT '1',
  `fk_unidad` int(11) DEFAULT NULL,
  `ultima_modificacion` datetime DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fk_clasificacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_productos
-- ----------------------------
INSERT INTO `facturacion_productos` VALUES ('1', 'Producto', '', '0.00', '1', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', null);

-- ----------------------------
-- Table structure for facturacion_razones_sociales
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_razones_sociales`;
CREATE TABLE `facturacion_razones_sociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rfc` char(255) DEFAULT NULL,
  `razon_social` char(255) DEFAULT NULL,
  `nombre_comercial` char(255) DEFAULT NULL,
  `datos_de_contacto` text,
  `logo_factura` char(255) DEFAULT NULL,
  `tasa_iva` decimal(18,6) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `fk_ciudad` int(11) DEFAULT NULL,
  `fk_municipio` int(11) DEFAULT NULL,
  `calle` char(255) DEFAULT NULL,
  `noExterior` char(255) DEFAULT NULL,
  `noInterior` char(255) DEFAULT NULL,
  `colonia` char(255) DEFAULT NULL,
  `localidad` char(255) DEFAULT NULL,
  `referencia` char(255) DEFAULT NULL,
  `codigoPostal` char(20) DEFAULT NULL,
  `email_bcc` char(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_razones_sociales
-- ----------------------------
INSERT INTO `facturacion_razones_sociales` VALUES ('1', 'AAA010101AAA', 'Razon Social Prueba', 'Nombre Comercial Prueba', '', 'triples.jpg', '0.000000', '1', '25', '0', '2844', 'conocida', '000', 'Ext 000', 'Fracc. Conocido', 'Villa Union', '', '82100', 'email@email.com');

-- ----------------------------
-- Table structure for facturacion_receptores
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_receptores`;
CREATE TABLE `facturacion_receptores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `rfc` char(20) DEFAULT NULL,
  `datos_de_contacto` text,
  `calle` char(255) DEFAULT NULL,
  `noExterior` char(20) DEFAULT NULL,
  `noInterior` char(20) DEFAULT NULL,
  `colonia` char(255) DEFAULT NULL,
  `localidad` char(255) DEFAULT NULL,
  `referencia` char(255) DEFAULT NULL,
  `codigoPostal` char(20) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `fk_municipio` int(11) DEFAULT NULL,
  `fk_ciudad` int(11) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of facturacion_receptores
-- ----------------------------
INSERT INTO `facturacion_receptores` VALUES ('1', 'Publico En General', 'XAXX010101000', '', 'calle', '', '', '', '', '', '82100', '1', '1', '2489', '17043', 'cliente@emailcom');
INSERT INTO `facturacion_receptores` VALUES ('2', 'Cliente de Prueba', 'AAA020202AAA', '', '', '', '', '', '', '', '', '1', '1', '2489', '17043', '');
INSERT INTO `facturacion_receptores` VALUES ('3', 'sadf', 'asdfasdfasdf', '', '', '', '', '', '', '', '', '1', '1', '2489', '17043', '');

-- ----------------------------
-- Table structure for facturacion_regimenes
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_regimenes`;
CREATE TABLE `facturacion_regimenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regimen` char(255) DEFAULT NULL,
  `fk_razon_social` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_regimenes
-- ----------------------------
INSERT INTO `facturacion_regimenes` VALUES ('1', 'Regimen Prueba', '1');

-- ----------------------------
-- Table structure for facturacion_rol
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_rol`;
CREATE TABLE `facturacion_rol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_rol
-- ----------------------------
INSERT INTO `facturacion_rol` VALUES ('1', 'Web Master', '');
INSERT INTO `facturacion_rol` VALUES ('2', 'Contribuyente', '');
INSERT INTO `facturacion_rol` VALUES ('4', 'Admin', '');

-- ----------------------------
-- Table structure for facturacion_series
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_series`;
CREATE TABLE `facturacion_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie` char(5) NOT NULL,
  `sig_folio` int(11) DEFAULT NULL,
  `es_default` bit(1) DEFAULT NULL,
  `documento` varchar(50) NOT NULL,
  `fk_razon_social` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_series
-- ----------------------------
INSERT INTO `facturacion_series` VALUES ('1', 'A', '15', '', '', '1');

-- ----------------------------
-- Table structure for facturacion_sucursales
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_sucursales`;
CREATE TABLE `facturacion_sucursales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comercial` char(255) DEFAULT NULL,
  `datos_de_contacto` text,
  `tasa_iva` decimal(18,6) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `fk_ciudad` int(11) DEFAULT NULL,
  `fk_municipio` int(11) DEFAULT NULL,
  `calle` char(255) DEFAULT NULL,
  `noExterior` char(255) DEFAULT NULL,
  `noInterior` char(255) DEFAULT NULL,
  `colonia` char(255) DEFAULT NULL,
  `localidad` char(255) DEFAULT NULL,
  `referencia` char(255) DEFAULT NULL,
  `codigoPostal` char(20) DEFAULT NULL,
  `fk_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_sucursales
-- ----------------------------

-- ----------------------------
-- Table structure for facturacion_tipo_comprobante
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_tipo_comprobante`;
CREATE TABLE `facturacion_tipo_comprobante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_tipo_comprobante
-- ----------------------------
INSERT INTO `facturacion_tipo_comprobante` VALUES ('1', 'Egreso');
INSERT INTO `facturacion_tipo_comprobante` VALUES ('2', 'Ingreso');
INSERT INTO `facturacion_tipo_comprobante` VALUES ('3', 'Traslado');
INSERT INTO `facturacion_tipo_comprobante` VALUES ('4', 'Prefactura');

-- ----------------------------
-- Table structure for facturacion_tipo_conceptos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_tipo_conceptos`;
CREATE TABLE `facturacion_tipo_conceptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_tipo_conceptos
-- ----------------------------
INSERT INTO `facturacion_tipo_conceptos` VALUES ('1', 'Producto');
INSERT INTO `facturacion_tipo_conceptos` VALUES ('2', 'Servicio');

-- ----------------------------
-- Table structure for facturacion_ubicacion_asentamientos
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_asentamientos`;
CREATE TABLE `facturacion_ubicacion_asentamientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `cp` char(255) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `fk_ciudad` int(11) DEFAULT NULL,
  `fk_municipio` int(11) DEFAULT NULL,
  `fk_tipo_asentamiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_asentamientos
-- ----------------------------

-- ----------------------------
-- Table structure for facturacion_ubicacion_ciudades
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_ciudades`;
CREATE TABLE `facturacion_ubicacion_ciudades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) CHARACTER SET utf8 DEFAULT NULL,
  `fk_municipio` int(11) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  `clave_sepomex` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17705 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_ciudades
-- ----------------------------
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17043', 'Aguascalientes', '2489', '1', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17044', 'Asientos', '2520', '1', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17045', 'Calvillo', '2552', '1', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17046', 'Cosío', '2584', '1', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17047', 'Jesús María', '2615', '1', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17048', 'Pabellón de Arteaga', '2646', '1', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17049', 'Rincón de Romos', '2676', '1', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17050', 'Tepezalá', '2737', '1', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17051', 'San Francisco de los Romo', '2798', '1', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17052', 'Ensenada', '2490', '2', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17053', 'Rodolfo Sánchez T. (Maneadero)', '2490', '2', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17054', 'Mexicali', '2521', '2', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17055', 'San Felipe', '2521', '2', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17056', 'Tecate', '2553', '2', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17057', 'Tijuana', '2585', '2', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17058', 'Playas de Rosarito', '2616', '2', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17059', 'Ciudad Constitución', '2491', '3', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17060', 'Puerto Adolfo López Mateos', '2491', '3', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17061', 'Heroica Mulegé', '2522', '3', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17062', 'Villa Alberto Andrés Alvarado Arámburo', '2522', '3', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17063', 'San Ignacio', '2522', '3', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17064', 'Guerrero Negro', '2522', '3', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17065', 'La Paz', '2554', '3', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17066', 'Todos Santos', '2554', '3', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17067', 'Cabo San Lucas', '2707', '3', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17068', 'San José del Cabo', '2707', '3', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17069', 'Loreto', '2738', '3', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17070', 'Calkini', '2492', '4', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17071', 'San Francisco de Campeche', '2523', '4', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17072', 'Ciudad del Carmen', '2555', '4', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17073', 'Sabancuy', '2555', '4', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17074', 'Champotón', '2586', '4', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17075', 'Hecelchakán', '2617', '4', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17076', 'Pomuch', '2617', '4', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17077', 'Hopelchén', '2647', '4', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17078', 'Escárcega', '2739', '4', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17079', 'Candelaria', '2799', '4', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17080', 'Ciudad Acuña', '2524', '5', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17081', 'Allende', '2556', '5', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17082', 'Arteaga', '2587', '5', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17083', 'Castaños', '2648', '5', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17084', 'Cuatro Ciénegas de Carranza', '2678', '5', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17085', 'Francisco I. Madero (Chávez)', '2740', '5', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17086', 'Frontera', '2770', '5', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17087', 'Matamoros', '2956', '5', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17088', 'Monclova', '2982', '5', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17089', 'Morelos', '3006', '5', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17090', 'Ciudad Melchor Múzquiz', '3028', '5', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17091', 'Nadadores', '3050', '5', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17092', 'Nava', '3071', '5', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17093', 'Parras de la Fuente', '3113', '5', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17094', 'Piedras Negras', '3134', '5', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17095', 'Ramos Arizpe', '3176', '5', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17096', 'Sabinas', '3197', '5', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17097', 'Saltillo', '3239', '5', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17098', 'San Buenaventura', '3260', '5', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17099', 'Nueva Rosita', '3281', '5', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17100', 'San Pedro', '3302', '5', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17101', 'Torreón', '3343', '5', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17102', 'Viesca', '3363', '5', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17103', 'Zaragoza', '3403', '5', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17104', 'Ciudad de Armería', '2494', '6', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17105', 'Colima', '2525', '6', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17106', 'Manzanillo', '2679', '6', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17107', 'Tecoman', '2741', '6', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17108', 'Ciudad de Villa de Álvarez', '2771', '6', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17109', 'Acala', '2526', '7', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17110', 'Arriaga', '2742', '7', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17111', 'Cacahoatán', '2905', '7', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17112', 'Cintalapa de Figueroa', '2957', '7', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17113', 'Comitán de Domínguez', '3007', '7', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17114', 'Chiapa de Corzo', '3177', '7', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17115', 'Huixtla', '3442', '7', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17116', 'Jiquipilas', '3548', '7', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17117', 'Mapastepec', '3629', '7', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17118', 'Las Margaritas', '3645', '7', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17119', 'Motozintla de Mendoza', '3720', '7', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17120', 'Ocosingo', '3750', '7', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17121', 'Ocozocoautla de Espinosa', '3776', '7', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17122', 'Palenque', '3824', '7', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17123', 'Pichucalco', '3860', '7', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17124', 'Pijijiapan', '3871', '7', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17125', 'Reforma', '3925', '7', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17126', 'Las Rosas', '3935', '7', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17127', 'San Cristóbal de las Casas', '3965', '7', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17128', 'Tapachula de Córdova y Ordóñez', '4064', '7', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17129', 'Puerto Madero (San Benito)', '4064', '7', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17130', 'Tonalá', '4127', '7', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17131', 'Tuxtla Gutiérrez', '4159', '7', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17132', 'Venustiano Carranza', '4199', '7', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17133', 'Villaflores', '4214', '7', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17134', 'Juan Aldama', '2527', '8', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17135', 'Bachíniva', '2651', '8', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17136', 'Santa Rosalía de Camargo', '2802', '8', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17137', 'Cuauhtémoc', '2958', '8', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17138', 'Colonia Anáhuac', '2958', '8', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17139', 'Chihuahua', '3008', '8', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17140', 'Delicias', '3052', '8', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17141', 'Hidalgo del Parral', '3283', '8', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17142', 'José Mariano Jiménez', '3365', '8', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17143', 'Juárez', '3385', '8', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17144', 'Madera', '3443', '8', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17145', 'Nuevo Casas Grandes', '3614', '8', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17146', 'Manuel Ojinaga', '3646', '8', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17147', 'Saucillo', '3789', '8', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17148', 'Ciudad de México', '2528', '9', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17149', 'Ciudad de México', '2560', '9', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17150', 'Ciudad de México', '2591', '9', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17151', 'Ciudad de México', '2622', '9', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17152', 'Ciudad de México', '2652', '9', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17153', 'Ciudad de México', '2682', '9', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17154', 'Ciudad de México', '2713', '9', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17155', 'Ciudad de México', '2744', '9', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17156', 'Ciudad de México', '2774', '9', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17157', 'Ciudad de México', '2803', '9', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17158', 'Ciudad de México', '2829', '9', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17159', 'Ciudad de México', '2855', '9', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17160', 'Ciudad de México', '2881', '9', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17161', 'Ciudad de México', '2907', '9', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17162', 'Ciudad de México', '2933', '9', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17163', 'Ciudad de México', '2959', '9', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17164', 'Canatlán', '2497', '10', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17165', 'Victoria de Durango', '2623', '10', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17166', 'Gómez Palacio', '2683', '10', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17167', 'Ciudad Lerdo', '2830', '10', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17168', 'Nombre de Dios', '2934', '10', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17169', 'Santa María del Oro', '2985', '10', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17170', 'Francisco I. Madero', '3031', '10', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17171', 'Peñón Blanco', '3053', '10', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17172', 'El Salto', '3095', '10', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17173', 'San Juan del Río del Centauro del Norte', '3200', '10', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17174', 'Santiago Papasquiaro', '3284', '10', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17175', 'Vicente Guerrero', '3406', '10', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17176', 'Abasolo', '2498', '11', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17177', 'Acámbaro', '2530', '11', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17178', 'San miguel de Allende', '2562', '11', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17179', 'Apaseo el Alto', '2593', '11', '1', '33');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17180', 'Apaseo el Grande', '2624', '11', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17181', 'Celaya', '2684', '11', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17182', 'Rincón de Tamayo', '2684', '11', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17183', 'Ciudad Manuel Doblado', '2715', '11', '1', '34');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17184', 'Comonfort', '2746', '11', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17185', 'Empalme Escobedo (Escobedo)', '2746', '11', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17186', 'Cortazar', '2805', '11', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17187', 'Cuerámaro', '2831', '11', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17188', 'Doctor Mora', '2857', '11', '1', '38');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17189', 'Guanajuato', '2909', '11', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17190', 'Marfil', '2909', '11', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17191', 'Huanímaro', '2935', '11', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17192', 'Irapuato', '2961', '11', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17193', 'Jaral del Progreso', '2986', '11', '1', '35');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17194', 'Jerécuaro', '3010', '11', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17195', 'León de los Aldama', '3032', '11', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17196', 'Moroleón', '3054', '11', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17197', 'Pénjamo', '3096', '11', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17198', 'Purísima de Bustos', '3138', '11', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17199', 'Romita', '3159', '11', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17200', 'Salamanca', '3180', '11', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17201', 'Salvatierra', '3201', '11', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17202', 'San Diego de la Unión', '3222', '11', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17203', 'San Francisco del Rincón', '3264', '11', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17204', 'San José Iturbide', '3285', '11', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17205', 'San Luis de la Paz', '3306', '11', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17206', 'Santa Cruz Juventino Rosas', '3347', '11', '1', '37');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17207', 'Santiago Maravatío', '3367', '11', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17208', 'Silao', '3387', '11', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17209', 'Tarandacuao', '3407', '11', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17210', 'Uriangato', '3462', '11', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17211', 'Valle de Santiago', '3480', '11', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17212', 'Villagrán', '3516', '11', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17213', 'Yuriria', '3550', '11', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17214', 'Acapulco de Juárez', '2499', '12', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17215', 'Ciudad Apaxtla de Castrejón', '2655', '12', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17216', 'Arcelia', '2685', '12', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17217', 'Atoyac de Álvarez', '2806', '12', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17218', 'Ayutla de los Libres', '2832', '12', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17219', 'Azoyú', '2858', '12', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17220', 'San Jerónimo de Juárez', '2884', '12', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17221', 'Buenavista de Cuellar', '2910', '12', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17222', 'Copala', '2987', '12', '1', '40');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17223', 'Coyuca de Benítez', '3055', '12', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17224', 'Coyuca de Catalán', '3076', '12', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17225', 'Cuajinicuilapa', '3097', '12', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17226', 'Cutzamala de Pinzón', '3181', '12', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17227', 'Chilapa de Álvarez', '3202', '12', '1', '33');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17228', 'Chilpancingo de los Bravo', '3223', '12', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17229', 'Ocotito', '3223', '12', '1', '39');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17230', 'Cruz Grande', '3244', '12', '1', '38');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17231', 'Huamuxtitlan', '3307', '12', '1', '37');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17232', 'Huitzuco', '3328', '12', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17233', 'Iguala de la Independencia', '3348', '12', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17234', 'Zihuatanejo', '3408', '12', '1', '41');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17235', 'Tierra Colorada', '3427', '12', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17236', 'Olinalá', '3534', '12', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17237', 'Petatlán', '3583', '12', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17238', 'Ciudad Altamirano', '3615', '12', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17239', 'San Luis Acatlán', '3647', '12', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17240', 'San Marcos', '3662', '12', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17241', 'Taxco de Alarcón', '3692', '12', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17242', 'San Luis de la Loma', '3722', '12', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17243', 'San Luis San Pedro', '3722', '12', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17244', 'Técpan de Galeana', '3722', '12', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17245', 'Teloloapan', '3737', '12', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17246', 'Tepecoacuilco de Trujano', '3752', '12', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17247', 'Tixtla de Guerrero', '3778', '12', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17248', 'Tlalixtaquilla', '3826', '12', '1', '35');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17249', 'Tlapa de Comonfort', '3838', '12', '1', '34');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17250', 'Tlapehuala', '3850', '12', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17251', 'La Unión', '3861', '12', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17252', 'Zumpango del Río', '3936', '12', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17253', 'Marquelia', '3956', '12', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17254', 'Actopan', '2564', '13', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17255', 'Apan', '2717', '13', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17256', 'Huejutla de Reyes', '3203', '13', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17257', 'Ixmiquilpan', '3245', '13', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17258', 'Pachuca de Soto', '3584', '13', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17259', 'Santiago Tulantepec', '3708', '13', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17260', 'Ciudad de Fray Bernardino de Sahagún', '3779', '13', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17261', 'Tepeapulco', '3779', '13', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17262', 'Tepeji del Rio', '3803', '13', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17263', 'Tizayuca', '3873', '13', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17264', 'Tlaxcoapan', '3927', '13', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17265', 'Tula de Allende', '3947', '13', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17266', 'Cruz Azul', '3947', '13', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17267', 'Tulancingo', '3957', '13', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17268', 'Zimapan', '4024', '13', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17269', 'Acatlán de Juárez', '2533', '14', '1', '55');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17270', 'Ahualulco de Mercado', '2565', '14', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17271', 'Ameca', '2657', '14', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17272', 'Arandas', '2718', '14', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17273', 'Atotonilco el Alto', '2860', '14', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17274', 'Autlán de Navarro', '2912', '14', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17275', 'La Barca', '2989', '14', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17276', 'La Resolana', '3057', '14', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17277', 'Cihuatlán', '3078', '14', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17278', 'Ciudad Guzmán', '3099', '14', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17279', 'Cocula', '3120', '14', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17280', 'Colotlán', '3141', '14', '1', '35');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17281', 'Chapala', '3246', '14', '1', '46');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17282', 'Ajijic', '3246', '14', '1', '47');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17283', 'Etzatlán', '3370', '14', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17284', 'El Grullo', '3390', '14', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17285', 'Guadalajara', '3429', '14', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17286', 'Huejuquilla el Alto', '3483', '14', '1', '50');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17287', 'Jalostotitlán', '3553', '14', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17288', 'Jamay', '3569', '14', '1', '33');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17289', 'Jocotepec', '3617', '14', '1', '44');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17290', 'Lagos de Moreno', '3664', '14', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17291', 'Magdalena', '3694', '14', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17292', 'Ocotlán', '3804', '14', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17293', 'Poncitlán', '3840', '14', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17294', 'Puerto Vallarta', '3852', '14', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17295', 'El Quince (San José el Quince)', '3885', '14', '1', '42');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17296', 'San José el Verde (El Verde)', '3885', '14', '1', '43');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17297', 'Las Pintitas', '3885', '14', '1', '53');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17298', 'San Diego de Alejandría', '3907', '14', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17299', 'San Juan de los Lagos', '3918', '14', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17300', 'San Julián', '3928', '14', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17301', 'San Miguel el Alto', '3968', '14', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17302', 'Sayula', '4007', '14', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17303', 'Tala', '4016', '14', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17304', 'Talpa de Allende', '4025', '14', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17305', 'Tamazula de Gordiano', '4033', '14', '1', '54');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17306', 'Tecalitlán', '4049', '14', '1', '45');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17307', 'Teocaltiche', '4081', '14', '1', '39');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17308', 'Tepatitlán de Morelos', '4097', '14', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17309', 'Tequila', '4105', '14', '1', '41');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17310', 'Tlajomulco de Zúñiga', '4128', '14', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17311', 'Tlaquepaque', '4136', '14', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17312', 'Tonalá', '4160', '14', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17313', 'Tototlán', '4192', '14', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17314', 'Tuxpan', '4215', '14', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17315', 'Unión de San Antonio', '4222', '14', '1', '52');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17316', 'Valle de Guadalupe', '4236', '14', '1', '56');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17317', 'Villa Corona', '4257', '14', '1', '38');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17318', 'Villa Hidalgo', '4269', '14', '1', '51');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17319', 'Yahualica de González Gallo', '4281', '14', '1', '34');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17320', 'Zacoalco de Torres', '4287', '14', '1', '49');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17321', 'Zapopan', '4292', '14', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17322', 'Zapotiltic', '4297', '14', '1', '37');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17323', 'San Ignacio Cerro Gordo', '4317', '14', '1', '48');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17324', 'Almoloya de Juárez', '2628', '15', '1', '39');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17325', 'Amatepec', '2719', '15', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17326', 'Ciudad Adolfo López Mateos', '2861', '15', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17327', 'Capulhuac', '3014', '15', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17328', 'Coacalco de Berriozabal', '3036', '15', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17329', 'Cuautitlán', '3121', '15', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17330', 'Chalco de Díaz Covarrubias', '3142', '15', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17331', 'San Vicente Chicoloapan de Juárez', '3226', '15', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17332', 'Chiconcuac', '3247', '15', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17333', 'Chimalhuacán', '3268', '15', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17334', 'Ecatepec de Morelos', '3310', '15', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17335', 'Huixquilucan de Degollado', '3391', '15', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17336', 'Ixtapaluca', '3430', '15', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17337', 'Juchitepec de Mariano Riva Palacio', '3618', '15', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17338', 'Melchor Ocampo', '3665', '15', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17339', 'Metepec', '3680', '15', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17340', 'Naucalpan de Juárez', '3725', '15', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17341', 'Ciudad Nezahualcoyotl', '3740', '15', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17342', 'Villa Nicolás Romero', '3768', '15', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17343', 'Ocoyoacac', '3793', '15', '1', '40');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17344', 'Los Reyes Acaquilpan (La Paz)', '3886', '15', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17345', 'San Mateo Atenco', '3949', '15', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17346', 'Tecamac de Felipe Villanueva', '3999', '15', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17347', 'Tejupilco de Hidalgo', '4008', '15', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17348', 'Tepotzotlán', '4113', '15', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17349', 'Tequixquiac', '4121', '15', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17350', 'Texcoco de Mora', '4145', '15', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17351', 'Tlalnepantla de Baz', '4185', '15', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17352', 'Toluca de Lerdo', '4201', '15', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17353', 'Santa Maria Tultepec', '4216', '15', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17354', 'Tultitlán de Mariano Escobedo', '4223', '15', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17355', 'Xonacatlán', '4264', '15', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17356', 'Zumpango', '4293', '15', '1', '41');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17357', 'Cuautitlán Izcalli', '4298', '15', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17358', 'Valle de Chalco Solidaridad', '4303', '15', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17359', 'Apatzingán de la Constitución', '2659', '16', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17360', 'Cotija de la Paz', '3015', '16', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17361', 'Cuitzeo del Porvenir', '3037', '16', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17362', 'Ciudad Hidalgo', '3332', '16', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17363', 'Huetamo de Núñez', '3412', '16', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17364', 'Jacona de Plancarte', '3503', '16', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17365', 'Jiquilpan de Juárez', '3538', '16', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17366', 'Maravatío de Ocampo', '3619', '16', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17367', 'Ciudad Lázaro Cárdenas', '3651', '16', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17368', 'Las Guacamayas', '3651', '16', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17369', 'Morelia', '3666', '16', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17370', 'Nueva Italia de Ruiz', '3696', '16', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17371', 'Paracho de Verduzco', '3830', '16', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17372', 'Pátzcuaro', '3842', '16', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17373', 'La piedad de Cabadas', '3876', '16', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17374', 'Puruándiro', '3898', '16', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17375', 'Los Reyes de Salgado', '3940', '16', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17376', 'Sahuayo de Morelos', '3950', '16', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17377', 'Tacámbaro de Codallos', '4009', '16', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17378', 'Tangancícuaro de Arista', '4035', '16', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17379', 'Tuxpan', '4138', '16', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17380', 'Uruapan', '4170', '16', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17381', 'Yurécuaro', '4202', '16', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17382', 'Zacapu', '4210', '16', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17383', 'Zamora de Hidalgo', '4217', '16', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17384', 'Zinapécuaro de Figueroa', '4231', '16', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17385', 'Heroica Zitácuaro', '4245', '16', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17386', 'Cuautla (Cuautla de Morelos)', '2660', '17', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17387', 'Cuernavaca', '2690', '17', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17388', 'Jojutla', '2837', '17', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17389', 'Puente de Ixtla', '2967', '17', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17390', 'Santa Rosa Treinta', '3123', '17', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17391', 'Tlaquiltenango', '3144', '17', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17392', 'Galeana', '3270', '17', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17393', 'Zacatepec de Hidalgo', '3270', '17', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17394', 'Acaponeta', '2505', '18', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17395', 'Ahuacatlán', '2537', '18', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17396', 'Compostela', '2600', '18', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17397', 'Las Varas', '2600', '18', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17398', 'La peñita de Jaltemba', '2600', '18', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17399', 'Ixtlán del Río', '2661', '18', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17400', 'Jala', '2691', '18', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17401', 'Xalisco', '2722', '18', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17402', 'Ruiz', '2812', '18', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17403', 'San Blas', '2838', '18', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17404', 'San pedro Lagunillas', '2864', '18', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17405', 'Santiago Ixcuintla', '2916', '18', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17406', 'Villa Hidalgo (El Nuevo)', '2916', '18', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17407', 'Tecuala', '2942', '18', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17408', 'Tepic', '2968', '18', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17409', 'Francisco I. Madero (Puga)', '2968', '18', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17410', 'Tuxpan', '2993', '18', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17411', 'Bucerías', '3039', '18', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17412', 'Anáhuac', '2632', '19', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17413', 'Ciudad Apodaca', '2662', '19', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17414', 'Cadereyta Jiménez', '2754', '19', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17415', 'Ciénega de Flores', '2839', '19', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17416', 'Doctor Arroyo', '2891', '19', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17417', 'García', '2994', '19', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17418', 'San Pedro Garza García', '3018', '19', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17419', 'Ciudad General Escobedo', '3061', '19', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17420', 'Guadalupe', '3166', '19', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17421', 'Hualahuises', '3229', '19', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17422', 'Ciudad Benito Juárez', '3271', '19', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17423', 'Linares', '3313', '19', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17424', 'Montemorelos', '3413', '19', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17425', 'Monterrey', '3432', '19', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17426', 'Ciudad Sabinas Hidalgo', '3522', '19', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17427', 'San Nicolás de los Garza', '3556', '19', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17428', 'Ciudad Santa Catarina', '3588', '19', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17429', 'Santiago', '3604', '19', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17430', 'El cercado', '3604', '19', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17431', 'Vicente Camalote', '2539', '20', '1', '33');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17432', 'Asunción Nochixtlán', '2663', '20', '1', '52');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17433', 'Lagunas', '2785', '20', '1', '48');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17434', 'Ciudad Ixtepec', '2892', '20', '1', '49');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17435', 'Cosolapa', '3062', '20', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17436', 'Cuilápam de Guerrero', '3104', '20', '1', '56');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17437', 'Chahuites', '3146', '20', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17438', 'Heroica Ciudad de Ejutla de Crespo', '3209', '20', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17439', 'Heroica Ciudad de Huajuapan de León', '3433', '20', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17440', 'Juchitán (Juchitán de Zaragoza)', '3505', '20', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17441', 'Loma Bonita', '3523', '20', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17442', 'Mariscala de Juárez', '3697', '20', '1', '42');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17443', 'Matías Romero Avendaño', '3727', '20', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17444', 'Miahuatlán de Porfirio Díaz', '3757', '20', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17445', 'Natividad', '3795', '20', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17446', 'El Camarón', '3819', '20', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17447', 'Oaxaca de Juárez', '3855', '20', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17448', 'Ocotlán de Morelos', '3866', '20', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17449', 'Putla Villa de Guerrero', '3921', '20', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17450', 'Salina Cruz', '3981', '20', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17451', 'San Antonio de la Cal', '4211', '20', '1', '59');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17452', 'San Blas Atempa', '4314', '20', '1', '54');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17453', 'San Felipe Jalapa de Díaz', '4346', '20', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17454', 'San Francisco Ixhuatán', '4373', '20', '1', '53');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17455', 'San Francisco Telixtlahuaca', '4394', '20', '1', '41');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17456', 'San Juan Bautista Cuicatlán', '4475', '20', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17457', 'San Juan Bautista lo de Soto', '4484', '20', '1', '35');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17458', 'San Juan Bautista Tuxtepec', '4496', '20', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17459', 'San Juan Cacahuatepec', '4499', '20', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17460', 'San Miguel el Grande', '4644', '20', '1', '38');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17461', 'Villa Sola de Vega', '4652', '20', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17462', 'San Pablo Huitzo', '4669', '20', '1', '40');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17463', 'San Pablo Villa de Mitla', '4673', '20', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17464', 'Puerto Escondido', '4693', '20', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17465', 'San Pedro Mixtepec -Dto. 22-', '4693', '20', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17466', 'San Pedro Pochutla', '4699', '20', '1', '45');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17467', 'San Pedro Tapanatepec', '4702', '20', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17468', 'San Pedro Totolapa', '4708', '20', '1', '37');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17469', 'Río Grande o Piedra Parada', '4709', '20', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17470', 'San Sebastián Tecomaxtlahuaca', '4723', '20', '1', '51');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17471', 'El Rosario', '4725', '20', '1', '57');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17472', 'Santa Cruz Itundujia', '4752', '20', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17473', 'Santa Lucia del Camino', '4765', '20', '1', '58');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17474', 'Heroica Ciudad de Tlaxiaco', '4772', '20', '1', '46');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17475', 'Bahias de Huatulco', '4788', '20', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17476', 'Santa María Huatulco', '4788', '20', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17477', 'Santiago Jamiltepec', '4842', '20', '1', '44');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17478', 'Santiago Juxtlahuaca', '4844', '20', '1', '50');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17479', 'Santiago Pinotepa Nacional', '4857', '20', '1', '43');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17480', 'Santiago Suchilquitongo', '4858', '20', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17481', 'Santo Domingo Tehuantepec', '4890', '20', '1', '55');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17482', 'Villa de Tamazulápam del Progreso', '4915', '20', '1', '34');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17483', 'Teotitlán de Flores Magón', '4920', '20', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17484', 'Tlacolula de Matamoros', '4926', '20', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17485', 'Unión Hidalgo', '4932', '20', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17486', 'San Juan Bautista Valle Nacional', '4934', '20', '1', '47');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17487', 'Villa de Zaachila', '4940', '20', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17488', 'Zimatlán de Álvarez', '4945', '20', '1', '39');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17489', 'Acatlán de Osorio', '2572', '21', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17490', 'Amozoc', '2919', '21', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17491', 'Atlixco', '3020', '21', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17492', 'Cuautlancingo', '3470', '21', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17493', 'Ciudad Serdán', '3541', '21', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17494', 'Huauchinango', '3900', '21', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17495', 'Izúcar de Matamoros', '4037', '21', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17496', 'Puebla (Heroica Puebla)', '4260', '21', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17497', 'San Andrés Cholula', '4290', '21', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17498', 'San Martín Texmelucan de Labastida', '4341', '21', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17499', 'San Pedro Cholula', '4365', '21', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17500', 'Tecamachalco', '4407', '21', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17501', 'Tehuacan', '4413', '21', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17502', 'Tepeaca', '4437', '21', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17503', 'Teziutlan', '4467', '21', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17504', 'Xicotepec', '4536', '21', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17505', 'Zacatlán', '4569', '21', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17506', 'El Pueblito', '2665', '22', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17507', 'Querétaro', '2894', '22', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17508', 'San Juan del Rio', '2946', '22', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17509', 'Cozumel', '2510', '23', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17510', 'Felipe Carrillo Puerto', '2542', '23', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17511', 'Isla Mujeres', '2574', '23', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17512', 'Chetumal', '2605', '23', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17513', 'Cancún', '2636', '23', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17514', 'Kantunilkín', '2696', '23', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17515', 'Playa del Carmen', '2727', '23', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17516', 'Bacalar', '2788', '23', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17517', 'Cárdenas', '2637', '24', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17518', 'Cedral', '2697', '24', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17519', 'Cerritos', '2728', '24', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17520', 'Ciudad del Maíz', '2789', '24', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17521', 'Fracción el Refugio', '2817', '24', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17522', 'Ciudad Valles', '2869', '24', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17523', 'Charcas', '2921', '24', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17524', 'Ébano', '2947', '24', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17525', 'Matehuala', '3043', '24', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17526', 'Rioverde', '3127', '24', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17527', 'Salinas de Hidalgo', '3148', '24', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17528', 'San Luis Potosí', '3211', '24', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17529', 'Santa María del Río', '3295', '24', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17530', 'Soledad de Graciano Sánchez', '3356', '24', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17531', 'Tamasopo', '3376', '24', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17532', 'Tamazunchale', '3396', '24', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17533', 'Tamuin', '3453', '24', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17534', 'Tierra Nueva', '3507', '24', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17535', 'Villa de Reyes', '3623', '24', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17536', 'El Naranjo', '3744', '24', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17537', 'Los Mochis', '2512', '25', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17538', 'Ahome', '2512', '25', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17539', 'Higuera de Zaragoza', '2512', '25', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17540', 'Topolobampo', '2512', '25', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17541', 'Angostura', '2544', '25', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17542', 'Cosalá', '2638', '25', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17543', 'Culiacán Rosales', '2668', '25', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17544', 'Quila', '2668', '25', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17545', 'Aguaruto', '2668', '25', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17546', 'Choix', '2698', '25', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17547', 'La Cruz', '2729', '25', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17548', 'Escuinapa de Hidalgo', '2760', '25', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17549', 'San Blas', '2790', '25', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17550', 'Guasave', '2818', '25', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17551', 'Mazatlán', '2844', '25', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17552', 'Villa Unión', '2844', '25', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17553', 'Mocorito', '2870', '25', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17554', 'El rosario', '2896', '25', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17555', 'Guamúchil', '2922', '25', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17556', 'San Ignacio', '2948', '25', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17557', 'Sinaloa de Leyva', '2974', '25', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17558', 'Estación Naranjo', '2974', '25', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17559', 'Navolato', '2999', '25', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17560', 'Lic. Benito Juárez (Campo Gobierno)', '2999', '25', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17561', 'Agua Prieta', '2545', '26', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17562', 'Heroica Caborca', '2975', '26', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17563', 'Ciudad Obregón', '3000', '26', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17564', 'Heroica Ciudad de Cananea', '3022', '26', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17565', 'Empalme', '3149', '26', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17566', 'Heroica Guaymas', '3233', '26', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17567', 'Hermosillo', '3254', '26', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17568', 'Huatabampo', '3317', '26', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17569', 'Magdalena de Kino', '3377', '26', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17570', 'Navojoa', '3490', '26', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17571', 'Heroica Nogales', '3508', '26', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17572', 'Puerto Peñasco', '3592', '26', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17573', 'San Luis Río Colorado', '3700', '26', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17574', 'Sonoita', '3890', '26', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17575', 'Cárdenas', '2546', '27', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17576', 'Frontera', '2578', '27', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17577', 'Villahermosa', '2609', '27', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17578', 'Comalcalco', '2640', '27', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17579', 'Cunduacán', '2670', '27', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17580', 'Emiliano Zapata', '2700', '27', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17581', 'Huimanguillo', '2731', '27', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17582', 'Jalpa de Méndez', '2792', '27', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17583', 'Macuspana', '2846', '27', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17584', 'Paraíso', '2898', '27', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17585', 'Teapa', '2950', '27', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17586', 'Tenosique de Pino Suárez', '2976', '27', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17587', 'Altamira', '2579', '28', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17588', 'Ciudad Camargo', '2701', '28', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17589', 'Ciudad Madero', '2763', '28', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17590', 'González', '2847', '28', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17591', 'Estación Manuel (Úrsulo Galván)', '2847', '28', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17592', 'Nueva Ciudad Guerrero', '2899', '28', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17593', 'Ciudad Gustavo Díaz Ordaz', '2925', '28', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17594', 'Jaumave', '2977', '28', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17595', 'Ciudad Mante', '3066', '28', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17596', 'Heroica Matamoros', '3087', '28', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17597', 'Ciudad Miguel Alemán', '3150', '28', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17598', 'Nuevo Laredo', '3192', '28', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17599', 'Reynosa', '3297', '28', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17600', 'Ciudad Río Bravo', '3318', '28', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17601', 'San Fernando', '3358', '28', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17602', 'Soto la Marina', '3398', '28', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17603', 'Tampico', '3418', '28', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17604', 'Ciudad Tula', '3437', '28', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17605', 'Valle Hermoso', '3455', '28', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17606', 'Ciudad Victoria', '3473', '28', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17607', 'Xicoténcatl', '3509', '28', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17608', 'Apizaco', '2642', '29', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17609', 'Calpulalpan', '2672', '29', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17610', 'Chiautempan', '2794', '29', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17611', 'Huamantla', '2874', '29', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17612', 'Villa Vicente Guerrero', '3151', '29', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17613', 'Tlaxcala (Tlaxcala de Xicotencatl)', '3319', '29', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17614', 'Acayucan', '2581', '30', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17615', 'Altotonga', '2795', '30', '1', '39');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17616', 'Alvarado', '2823', '30', '1', '34');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17617', 'Naranjos', '2875', '30', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17618', 'Paraje Nuevo', '2901', '30', '1', '37');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17619', 'Ángel R. Cabada', '2927', '30', '1', '50');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17620', 'José Cardel', '2953', '30', '1', '35');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17621', 'General Miguel Alemán (Potrero Nuevo)', '3068', '30', '1', '48');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17622', 'Atoyac', '3068', '30', '1', '56');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17623', 'Banderilla', '3173', '30', '1', '36');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17624', 'Boca del RÍo', '3215', '30', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17625', 'Catemaco', '3299', '30', '1', '45');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17626', 'Cazones de Herrera', '3320', '30', '1', '58');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17627', 'Cerro Azul', '3340', '30', '1', '61');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17628', 'Coatepec', '3420', '30', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17629', 'Coatzacoalcos', '3439', '30', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17630', 'Coatzintla', '3457', '30', '1', '49');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17631', 'Córdoba', '3528', '30', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17632', 'Cosamaloapan', '3545', '30', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17633', 'Cosoleacaque', '3594', '30', '1', '53');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17634', 'Cuitláhuac', '3672', '30', '1', '32');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17635', 'Las Choapas', '3786', '30', '1', '47');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17636', 'Fortín de las Flores', '3869', '30', '1', '33');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17637', 'Gutiérrez Zamora', '3880', '30', '1', '25');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17638', 'Huatusco de Chicuellar', '3902', '30', '1', '28');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17639', 'Huayacocotla', '3913', '30', '1', '43');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17640', 'Juan Díaz Covarrubias', '3923', '30', '1', '40');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17641', 'Huiloapan de Cuauhtémoc', '3933', '30', '1', '57');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17642', 'Isla', '3963', '30', '1', '31');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17643', 'Ixtaczoquitlán', '4038', '30', '1', '29');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17644', 'Xalapa-Enríquez', '4054', '30', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17645', 'Jáltipan de Morelos', '4070', '30', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17646', 'Juan Rodríguez Clara', '4110', '30', '1', '27');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17647', 'Lerdo de Tejada', '4133', '30', '1', '54');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17648', 'Minatitlán', '4220', '30', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17649', 'Cuichapa', '4241', '30', '1', '41');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17650', 'Nogales', '4267', '30', '1', '46');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17651', 'Orizaba', '4285', '30', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17652', 'Pánuco', '4311', '30', '1', '21');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17653', 'Papantla de Olarte', '4316', '30', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17654', 'Paso del Macho', '4321', '30', '1', '68');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17655', 'Paso de Ovejas', '4324', '30', '1', '44');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17656', 'Platón Sánchez', '4333', '30', '1', '26');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17657', 'Playa Vicente', '4336', '30', '1', '38');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17658', 'Poza Rica de Hidalgo', '4339', '30', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17659', 'Río Blanco', '4360', '30', '1', '30');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17660', 'San Andrés Tuxtla', '4369', '30', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17661', 'Sihuapan', '4369', '30', '1', '66');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17662', 'Santiago Tuxtla', '4375', '30', '1', '42');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17663', 'Soledad de Doblado', '4390', '30', '1', '60');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17664', 'Tampico Alto', '4402', '30', '1', '22');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17665', 'Tantoyuca', '4411', '30', '1', '24');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17666', 'Tempoal de Sánchez', '4429', '30', '1', '23');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17667', 'Tezonapa', '4465', '30', '1', '62');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17668', 'Tierra Blanca', '4468', '30', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17669', 'Tihuatlán', '4471', '30', '1', '55');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17670', 'Tlacojalpan', '4474', '30', '1', '52');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17671', 'Tlapacoyan', '4495', '30', '1', '69');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17672', 'Túxpam de Rodríguez Cano', '4513', '30', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17673', 'Veracruz', '4525', '30', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17674', 'Yecuatla', '4537', '30', '1', '59');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17675', 'Agua dulce', '4558', '30', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17676', 'El Higo', '4561', '30', '1', '67');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17677', 'Tres Valles', '4567', '30', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17678', 'Carlos A. Carrillo', '4570', '30', '1', '20');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17679', 'San Rafael', '4579', '30', '1', '51');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17680', 'Kanasín', '3476', '31', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17681', 'Mérida', '3627', '31', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17682', 'Motul de Carrillo Puerto', '3658', '31', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17683', 'Ticul', '4071', '31', '1', '03');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17684', 'Tizimín', '4126', '31', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17685', 'Valladolid', '4174', '31', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17686', 'Víctor Rosales', '2645', '32', '1', '12');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17687', 'Ciudad Cuauhtémoc', '2736', '32', '1', '06');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17688', 'Fresnillo', '2797', '32', '1', '01');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17689', 'Guadalupe', '2981', '32', '1', '04');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17690', 'Jalpa', '3027', '32', '1', '17');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17691', 'Jerez de García Salinas', '3049', '32', '1', '02');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17692', 'Juan Aldama', '3091', '32', '1', '19');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17693', 'Loreto', '3133', '32', '1', '18');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17694', 'Luis Moya', '3154', '32', '1', '14');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17695', 'Moyahua de Estrada', '3322', '32', '1', '15');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17696', 'Nochistlán de Mejía', '3342', '32', '1', '11');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17697', 'Ojocaliente', '3382', '32', '1', '07');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17698', 'Río Grande', '3441', '32', '1', '05');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17699', 'Sombrerete', '3495', '32', '1', '16');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17700', 'Valparaíso', '3612', '32', '1', '13');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17701', 'Villa de Cos', '3644', '32', '1', '10');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17702', 'Villa Hidalgo', '3689', '32', '1', '08');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17703', 'Villanueva', '3704', '32', '1', '09');
INSERT INTO `facturacion_ubicacion_ciudades` VALUES ('17704', 'Zacatecas', '3719', '32', '1', '03');

-- ----------------------------
-- Table structure for facturacion_ubicacion_estados
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_estados`;
CREATE TABLE `facturacion_ubicacion_estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `fk_pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_estados
-- ----------------------------
INSERT INTO `facturacion_ubicacion_estados` VALUES ('1', 'Aguascalientes', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('2', 'Baja California', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('3', 'Baja California Sur', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('4', 'Campeche', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('5', 'Coahuila de Zaragoza', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('6', 'Colima', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('7', 'Chiapas', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('8', 'Chihuahua', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('9', 'Distrito Federal', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('10', 'Durango', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('11', 'Guanajuato', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('12', 'Guerrero', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('13', 'Hidalgo', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('14', 'Jalisco', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('15', 'México', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('16', 'Michoacán de Ocampo', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('17', 'Morelos', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('18', 'Nayarit', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('19', 'Nuevo León', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('20', 'Oaxaca', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('21', 'Puebla', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('22', 'Querétaro', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('23', 'Quintana Roo', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('24', 'San Luis Potosí', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('25', 'Sinaloa', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('26', 'Sonora', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('27', 'Tabasco', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('28', 'Tamaulipas', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('29', 'Tlaxcala', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('30', 'Veracruz de Ignacio de la Llave', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('31', 'Yucatán', '1');
INSERT INTO `facturacion_ubicacion_estados` VALUES ('32', 'Zacatecas', '1');

-- ----------------------------
-- Table structure for facturacion_ubicacion_municipios
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_municipios`;
CREATE TABLE `facturacion_ubicacion_municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `clave_sepomex` char(255) DEFAULT NULL,
  `fk_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4946 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_municipios
-- ----------------------------
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2489', 'Aguascalientes', '001', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2490', 'Ensenada', '001', '2');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2491', 'Comondú', '001', '3');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2492', 'Calkiní', '001', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2493', 'Abasolo', '001', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2494', 'Armería', '001', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2495', 'Acacoyagua', '001', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2496', 'Ahumada', '001', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2497', 'Canatlán', '001', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2498', 'Abasolo', '001', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2499', 'Acapulco de Juárez', '001', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2500', 'Acatlán', '001', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2501', 'Acatic', '001', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2502', 'Acambay de Ruíz Castañeda', '001', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2503', 'Acuitzio', '001', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2504', 'Amacuzac', '001', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2505', 'Acaponeta', '001', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2506', 'Abasolo', '001', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2507', 'Abejones', '001', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2508', 'Acajete', '001', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2509', 'Amealco de Bonfil', '001', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2510', 'Cozumel', '001', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2511', 'Ahualulco', '001', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2512', 'Ahome', '001', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2513', 'Aconchi', '001', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2514', 'Balancán', '001', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2515', 'Abasolo', '001', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2516', 'Amaxac de Guerrero', '001', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2517', 'Acajete', '001', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2518', 'Abalá', '001', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2519', 'Apozol', '001', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2520', 'Asientos', '002', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2521', 'Mexicali', '002', '2');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2522', 'Mulegé', '002', '3');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2523', 'Campeche', '002', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2524', 'Acuña', '002', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2525', 'Colima', '002', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2526', 'Acala', '002', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2527', 'Aldama', '002', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2528', 'Azcapotzalco', '002', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2529', 'Canelas', '002', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2530', 'Acámbaro', '002', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2531', 'Ahuacuotzingo', '002', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2532', 'Acaxochitlán', '002', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2533', 'Acatlán de Juárez', '002', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2534', 'Acolman', '002', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2535', 'Aguililla', '002', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2536', 'Atlatlahucan', '002', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2537', 'Ahuacatlán', '002', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2538', 'Agualeguas', '002', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2539', 'Acatlán de Pérez Figueroa', '002', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2540', 'Acateno', '002', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2541', 'Pinal de Amoles', '002', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2542', 'Felipe Carrillo Puerto', '002', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2543', 'Alaquines', '002', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2544', 'Angostura', '002', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2545', 'Agua Prieta', '002', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2546', 'Cárdenas', '002', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2547', 'Aldama', '002', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2548', 'Apetatitlán de Antonio Carvajal', '002', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2549', 'Acatlán', '002', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2550', 'Acanceh', '002', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2551', 'Apulco', '002', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2552', 'Calvillo', '003', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2553', 'Tecate', '003', '2');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2554', 'La Paz', '003', '3');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2555', 'Carmen', '003', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2556', 'Allende', '003', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2557', 'Comala', '003', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2558', 'Acapetahua', '003', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2559', 'Allende', '003', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2560', 'Coyoacán', '003', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2561', 'Coneto de Comonfort', '003', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2562', 'San Miguel de Allende', '003', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2563', 'Ajuchitlán del Progreso', '003', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2564', 'Actopan', '003', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2565', 'Ahualulco de Mercado', '003', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2566', 'Aculco', '003', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2567', 'Álvaro Obregón', '003', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2568', 'Axochiapan', '003', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2569', 'Amatlán de Cañas', '003', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2570', 'Los Aldamas', '003', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2571', 'Asunción Cacalotepec', '003', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2572', 'Acatlán', '003', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2573', 'Arroyo Seco', '003', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2574', 'Isla Mujeres', '003', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2575', 'Aquismón', '003', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2576', 'Badiraguato', '003', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2577', 'Alamos', '003', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2578', 'Centla', '003', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2579', 'Altamira', '003', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2580', 'Atlangatepec', '003', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2581', 'Acayucan', '003', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2582', 'Akil', '003', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2583', 'Atolinga', '003', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2584', 'Cosío', '004', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2585', 'Tijuana', '004', '2');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2586', 'Champotón', '004', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2587', 'Arteaga', '004', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2588', 'Coquimatlán', '004', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2589', 'Altamirano', '004', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2590', 'Aquiles Serdán', '004', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2591', 'Cuajimalpa de Morelos', '004', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2592', 'Cuencamé', '004', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2593', 'Apaseo el Alto', '004', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2594', 'Alcozauca de Guerrero', '004', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2595', 'Agua Blanca de Iturbide', '004', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2596', 'Amacueca', '004', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2597', 'Almoloya de Alquisiras', '004', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2598', 'Angamacutiro', '004', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2599', 'Ayala', '004', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2600', 'Compostela', '004', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2601', 'Allende', '004', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2602', 'Asunción Cuyotepeji', '004', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2603', 'Acatzingo', '004', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2604', 'Cadereyta de Montes', '004', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2605', 'Othón P. Blanco', '004', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2606', 'Armadillo de los Infante', '004', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2607', 'Concordia', '004', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2608', 'Altar', '004', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2609', 'Centro', '004', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2610', 'Antiguo Morelos', '004', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2611', 'Atltzayanca', '004', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2612', 'Actopan', '004', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2613', 'Baca', '004', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2614', 'Benito Juárez', '004', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2615', 'Jesús María', '005', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2616', 'Playas de Rosarito', '005', '2');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2617', 'Hecelchakán', '005', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2618', 'Candela', '005', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2619', 'Cuauhtémoc', '005', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2620', 'Amatán', '005', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2621', 'Ascensión', '005', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2622', 'Gustavo A. Madero', '005', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2623', 'Durango', '005', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2624', 'Apaseo el Grande', '005', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2625', 'Alpoyeca', '005', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2626', 'Ajacuba', '005', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2627', 'Amatitán', '005', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2628', 'Almoloya de Juárez', '005', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2629', 'Angangueo', '005', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2630', 'Coatlán del Río', '005', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2631', 'Huajicori', '005', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2632', 'Anáhuac', '005', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2633', 'Asunción Ixtaltepec', '005', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2634', 'Acteopan', '005', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2635', 'Colón', '005', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2636', 'Benito Juárez', '005', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2637', 'Cárdenas', '005', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2638', 'Cosalá', '005', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2639', 'Arivechi', '005', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2640', 'Comalcalco', '005', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2641', 'Burgos', '005', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2642', 'Apizaco', '005', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2643', 'Acula', '005', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2644', 'Bokobá', '005', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2645', 'Calera', '005', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2646', 'Pabellón de Arteaga', '006', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2647', 'Hopelchén', '006', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2648', 'Castaños', '006', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2649', 'Ixtlahuacán', '006', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2650', 'Amatenango de la Frontera', '006', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2651', 'Bachíniva', '006', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2652', 'Iztacalco', '006', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2653', 'General Simón Bolívar', '006', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2654', 'Atarjea', '006', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2655', 'Apaxtla', '006', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2656', 'Alfajayucan', '006', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2657', 'Ameca', '006', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2658', 'Almoloya del Río', '006', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2659', 'Apatzingán', '006', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2660', 'Cuautla', '006', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2661', 'Ixtlán del Río', '006', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2662', 'Apodaca', '006', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2663', 'Asunción Nochixtlán', '006', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2664', 'Ahuacatlán', '006', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2665', 'Corregidora', '006', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2666', 'José María Morelos', '006', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2667', 'Catorce', '006', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2668', 'Culiacán', '006', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2669', 'Arizpe', '006', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2670', 'Cunduacán', '006', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2671', 'Bustamante', '006', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2672', 'Calpulalpan', '006', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2673', 'Acultzingo', '006', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2674', 'Buctzotz', '006', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2675', 'Cañitas de Felipe Pescador', '006', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2676', 'Rincón de Romos', '007', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2677', 'Palizada', '007', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2678', 'Cuatro Ciénegas', '007', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2679', 'Manzanillo', '007', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2680', 'Amatenango del Valle', '007', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2681', 'Balleza', '007', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2682', 'Iztapalapa', '007', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2683', 'Gómez Palacio', '007', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2684', 'Celaya', '007', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2685', 'Arcelia', '007', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2686', 'Almoloya', '007', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2687', 'San Juanito de Escobedo', '007', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2688', 'Amanalco', '007', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2689', 'Aporo', '007', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2690', 'Cuernavaca', '007', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2691', 'Jala', '007', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2692', 'Aramberri', '007', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2693', 'Asunción Ocotlán', '007', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2694', 'Ahuatlán', '007', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2695', 'Ezequiel Montes', '007', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2696', 'Lázaro Cárdenas', '007', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2697', 'Cedral', '007', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2698', 'Choix', '007', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2699', 'Atil', '007', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2700', 'Emiliano Zapata', '007', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2701', 'Camargo', '007', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2702', 'El Carmen Tequexquitla', '007', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2703', 'Camarón de Tejeda', '007', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2704', 'Cacalchén', '007', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2705', 'Concepción del Oro', '007', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2706', 'San José de Gracia', '008', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2707', 'Los Cabos', '008', '3');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2708', 'Tenabo', '008', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2709', 'Escobedo', '008', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2710', 'Minatitlán', '008', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2711', 'Angel Albino Corzo', '008', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2712', 'Batopilas', '008', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2713', 'La Magdalena Contreras', '008', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2714', 'Guadalupe Victoria', '008', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2715', 'Manuel Doblado', '008', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2716', 'Atenango del Río', '008', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2717', 'Apan', '008', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2718', 'Arandas', '008', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2719', 'Amatepec', '008', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2720', 'Aquila', '008', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2721', 'Emiliano Zapata', '008', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2722', 'Xalisco', '008', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2723', 'Bustamante', '008', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2724', 'Asunción Tlacolulita', '008', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2725', 'Ahuazotepec', '008', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2726', 'Huimilpan', '008', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2727', 'Solidaridad', '008', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2728', 'Cerritos', '008', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2729', 'Elota', '008', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2730', 'Bacadéhuachi', '008', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2731', 'Huimanguillo', '008', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2732', 'Casas', '008', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2733', 'Cuapiaxtla', '008', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2734', 'Alpatláhuac', '008', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2735', 'Calotmul', '008', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2736', 'Cuauhtémoc', '008', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2737', 'Tepezalá', '009', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2738', 'Loreto', '009', '3');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2739', 'Escárcega', '009', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2740', 'Francisco I. Madero', '009', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2741', 'Tecomán', '009', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2742', 'Arriaga', '009', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2743', 'Bocoyna', '009', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2744', 'Milpa Alta', '009', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2745', 'Guanaceví', '009', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2746', 'Comonfort', '009', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2747', 'Atlamajalcingo del Monte', '009', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2748', 'El Arenal', '009', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2749', 'El Arenal', '009', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2750', 'Amecameca', '009', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2751', 'Ario', '009', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2752', 'Huitzilac', '009', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2753', 'Del Nayar', '009', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2754', 'Cadereyta Jiménez', '009', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2755', 'Ayotzintepec', '009', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2756', 'Ahuehuetitla', '009', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2757', 'Jalpan de Serra', '009', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2758', 'Tulum', '009', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2759', 'Cerro de San Pedro', '009', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2760', 'Escuinapa', '009', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2761', 'Bacanora', '009', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2762', 'Jalapa', '009', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2763', 'Ciudad Madero', '009', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2764', 'Cuaxomulco', '009', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2765', 'Alto Lucero de Gutiérrez Barrios', '009', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2766', 'Cansahcab', '009', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2767', 'Chalchihuites', '009', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2768', 'El Llano', '010', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2769', 'Calakmul', '010', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2770', 'Frontera', '010', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2771', 'Villa de Álvarez', '010', '6');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2772', 'Bejucal de Ocampo', '010', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2773', 'Buenaventura', '010', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2774', 'Álvaro Obregón', '010', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2775', 'Hidalgo', '010', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2776', 'Coroneo', '010', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2777', 'Atlixtac', '010', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2778', 'Atitalaquia', '010', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2779', 'Atemajac de Brizuela', '010', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2780', 'Apaxco', '010', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2781', 'Arteaga', '010', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2782', 'Jantetelco', '010', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2783', 'Rosamorada', '010', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2784', 'El Carmen', '010', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2785', 'El Barrio de la Soledad', '010', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2786', 'Ajalpan', '010', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2787', 'Landa de Matamoros', '010', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2788', 'Bacalar', '010', '23');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2789', 'Ciudad del Maíz', '010', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2790', 'El Fuerte', '010', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2791', 'Bacerac', '010', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2792', 'Jalpa de Méndez', '010', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2793', 'Cruillas', '010', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2794', 'Chiautempan', '010', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2795', 'Altotonga', '010', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2796', 'Cantamayec', '010', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2797', 'Fresnillo', '010', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2798', 'San Francisco de los Romo', '011', '1');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2799', 'Candelaria', '011', '4');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2800', 'General Cepeda', '011', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2801', 'Bella Vista', '011', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2802', 'Camargo', '011', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2803', 'Tláhuac', '011', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2804', 'Indé', '011', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2805', 'Cortazar', '011', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2806', 'Atoyac de Álvarez', '011', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2807', 'Atlapexco', '011', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2808', 'Atengo', '011', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2809', 'Atenco', '011', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2810', 'Briseñas', '011', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2811', 'Jiutepec', '011', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2812', 'Ruíz', '011', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2813', 'Cerralvo', '011', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2814', 'Calihualá', '011', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2815', 'Albino Zertuche', '011', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2816', 'El Marqués', '011', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2817', 'Ciudad Fernández', '011', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2818', 'Guasave', '011', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2819', 'Bacoachi', '011', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2820', 'Jonuta', '011', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2821', 'Gómez Farías', '011', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2822', 'Muñoz de Domingo Arenas', '011', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2823', 'Alvarado', '011', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2824', 'Celestún', '011', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2825', 'Trinidad García de la Cadena', '011', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2826', 'Guerrero', '012', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2827', 'Berriozábal', '012', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2828', 'Carichí', '012', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2829', 'Tlalpan', '012', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2830', 'Lerdo', '012', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2831', 'Cuerámaro', '012', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2832', 'Ayutla de los Libres', '012', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2833', 'Atotonilco el Grande', '012', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2834', 'Atenguillo', '012', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2835', 'Atizapán', '012', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2836', 'Buenavista', '012', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2837', 'Jojutla', '012', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2838', 'San Blas', '012', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2839', 'Ciénega de Flores', '012', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2840', 'Candelaria Loxicha', '012', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2841', 'Aljojuca', '012', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2842', 'Pedro Escobedo', '012', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2843', 'Tancanhuitz', '012', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2844', 'Mazatlán', '012', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2845', 'Bácum', '012', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2846', 'Macuspana', '012', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2847', 'González', '012', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2848', 'Españita', '012', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2849', 'Amatitlán', '012', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2850', 'Cenotillo', '012', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2851', 'Genaro Codina', '012', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2852', 'Hidalgo', '013', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2853', 'Bochil', '013', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2854', 'Casas Grandes', '013', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2855', 'Xochimilco', '013', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2856', 'Mapimí', '013', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2857', 'Doctor Mora', '013', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2858', 'Azoyú', '013', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2859', 'Atotonilco de Tula', '013', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2860', 'Atotonilco el Alto', '013', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2861', 'Atizapán de Zaragoza', '013', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2862', 'Carácuaro', '013', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2863', 'Jonacatepec', '013', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2864', 'San Pedro Lagunillas', '013', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2865', 'China', '013', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2866', 'Ciénega de Zimatlán', '013', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2867', 'Altepexi', '013', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2868', 'Peñamiller', '013', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2869', 'Ciudad Valles', '013', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2870', 'Mocorito', '013', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2871', 'Banámichi', '013', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2872', 'Nacajuca', '013', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2873', 'Güémez', '013', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2874', 'Huamantla', '013', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2875', 'Naranjos Amatlán', '013', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2876', 'Conkal', '013', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2877', 'General Enrique Estrada', '013', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2878', 'Jiménez', '014', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2879', 'El Bosque', '014', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2880', 'Coronado', '014', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2881', 'Benito Juárez', '014', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2882', 'Mezquital', '014', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2883', 'Dolores Hidalgo Cuna de la Independencia Nacional', '014', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2884', 'Benito Juárez', '014', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2885', 'Calnali', '014', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2886', 'Atoyac', '014', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2887', 'Atlacomulco', '014', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2888', 'Coahuayana', '014', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2889', 'Mazatepec', '014', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2890', 'Santa María del Oro', '014', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2891', 'Doctor Arroyo', '014', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2892', 'Ciudad Ixtepec', '014', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2893', 'Amixtlán', '014', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2894', 'Querétaro', '014', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2895', 'Coxcatlán', '014', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2896', 'Rosario', '014', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2897', 'Baviácora', '014', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2898', 'Paraíso', '014', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2899', 'Guerrero', '014', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2900', 'Hueyotlipan', '014', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2901', 'Amatlán de los Reyes', '014', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2902', 'Cuncunul', '014', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2903', 'General Francisco R. Murguía', '014', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2904', 'Juárez', '015', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2905', 'Cacahoatán', '015', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2906', 'Coyame del Sotol', '015', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2907', 'Cuauhtémoc', '015', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2908', 'Nazas', '015', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2909', 'Guanajuato', '015', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2910', 'Buenavista de Cuéllar', '015', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2911', 'Cardonal', '015', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2912', 'Autlán de Navarro', '015', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2913', 'Atlautla', '015', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2914', 'Coalcomán de Vázquez Pallares', '015', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2915', 'Miacatlán', '015', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2916', 'Santiago Ixcuintla', '015', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2917', 'Doctor Coss', '015', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2918', 'Coatecas Altas', '015', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2919', 'Amozoc', '015', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2920', 'San Joaquín', '015', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2921', 'Charcas', '015', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2922', 'Salvador Alvarado', '015', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2923', 'Bavispe', '015', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2924', 'Tacotalpa', '015', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2925', 'Gustavo Díaz Ordaz', '015', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2926', 'Ixtacuixtla de Mariano Matamoros', '015', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2927', 'Angel R. Cabada', '015', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2928', 'Cuzamá', '015', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2929', 'El Plateado de Joaquín Amaro', '015', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2930', 'Lamadrid', '016', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2931', 'Catazajá', '016', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2932', 'La Cruz', '016', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2933', 'Miguel Hidalgo', '016', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2934', 'Nombre de Dios', '016', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2935', 'Huanímaro', '016', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2936', 'Coahuayutla de José María Izazaga', '016', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2937', 'Cuautepec de Hinojosa', '016', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2938', 'Ayotlán', '016', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2939', 'Axapusco', '016', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2940', 'Coeneo', '016', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2941', 'Ocuituco', '016', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2942', 'Tecuala', '016', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2943', 'Doctor González', '016', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2944', 'Coicoyán de las Flores', '016', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2945', 'Aquixtla', '016', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2946', 'San Juan del Río', '016', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2947', 'Ebano', '016', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2948', 'San Ignacio', '016', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2949', 'Benjamín Hill', '016', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2950', 'Teapa', '016', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2951', 'Hidalgo', '016', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2952', 'Ixtenco', '016', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2953', 'La Antigua', '016', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2954', 'Chacsinkín', '016', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2955', 'General Pánfilo Natera', '016', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2956', 'Matamoros', '017', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2957', 'Cintalapa', '017', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2958', 'Cuauhtémoc', '017', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2959', 'Venustiano Carranza', '017', '9');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2960', 'Ocampo', '017', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2961', 'Irapuato', '017', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2962', 'Cocula', '017', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2963', 'Chapantongo', '017', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2964', 'Ayutla', '017', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2965', 'Ayapango', '017', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2966', 'Contepec', '017', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2967', 'Puente de Ixtla', '017', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2968', 'Tepic', '017', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2969', 'Galeana', '017', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2970', 'La Compañía', '017', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2971', 'Atempan', '017', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2972', 'Tequisquiapan', '017', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2973', 'Guadalcázar', '017', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2974', 'Sinaloa', '017', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2975', 'Caborca', '017', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2976', 'Tenosique', '017', '27');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2977', 'Jaumave', '017', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2978', 'Mazatecochco de José María Morelos', '017', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2979', 'Apazapan', '017', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2980', 'Chankom', '017', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2981', 'Guadalupe', '017', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2982', 'Monclova', '018', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2983', 'Coapilla', '018', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2984', 'Cusihuiriachi', '018', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2985', 'El Oro', '018', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2986', 'Jaral del Progreso', '018', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2987', 'Copala', '018', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2988', 'Chapulhuacán', '018', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2989', 'La Barca', '018', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2990', 'Calimaya', '018', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2991', 'Copándaro', '018', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2992', 'Temixco', '018', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2993', 'Tuxpan', '018', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2994', 'García', '018', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2995', 'Concepción Buenavista', '018', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2996', 'Atexcal', '018', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2997', 'Tolimán', '018', '22');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2998', 'Huehuetlán', '018', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('2999', 'Navolato', '018', '25');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3000', 'Cajeme', '018', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3001', 'Jiménez', '018', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3002', 'Contla de Juan Cuamatzi', '018', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3003', 'Aquila', '018', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3004', 'Chapab', '018', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3005', 'Huanusco', '018', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3006', 'Morelos', '019', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3007', 'Comitán de Domínguez', '019', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3008', 'Chihuahua', '019', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3009', 'Otáez', '019', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3010', 'Jerécuaro', '019', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3011', 'Copalillo', '019', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3012', 'Chilcuautla', '019', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3013', 'Bolaños', '019', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3014', 'Capulhuac', '019', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3015', 'Cotija', '019', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3016', 'Tepalcingo', '019', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3017', 'La Yesca', '019', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3018', 'San Pedro Garza García', '019', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3019', 'Concepción Pápalo', '019', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3020', 'Atlixco', '019', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3021', 'Lagunillas', '019', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3022', 'Cananea', '019', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3023', 'Llera', '019', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3024', 'Tepetitla de Lardizábal', '019', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3025', 'Astacinga', '019', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3026', 'Chemax', '019', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3027', 'Jalpa', '019', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3028', 'Múzquiz', '020', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3029', 'La Concordia', '020', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3030', 'Chínipas', '020', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3031', 'Pánuco de Coronado', '020', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3032', 'León', '020', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3033', 'Copanatoyac', '020', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3034', 'Eloxochitlán', '020', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3035', 'Cabo Corrientes', '020', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3036', 'Coacalco de Berriozábal', '020', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3037', 'Cuitzeo', '020', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3038', 'Tepoztlán', '020', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3039', 'Bahía de Banderas', '020', '18');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3040', 'General Bravo', '020', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3041', 'Constancia del Rosario', '020', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3042', 'Atoyatempan', '020', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3043', 'Matehuala', '020', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3044', 'Carbó', '020', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3045', 'Mainero', '020', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3046', 'Sanctórum de Lázaro Cárdenas', '020', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3047', 'Atlahuilco', '020', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3048', 'Chicxulub Pueblo', '020', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3049', 'Jerez', '020', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3050', 'Nadadores', '021', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3051', 'Copainalá', '021', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3052', 'Delicias', '021', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3053', 'Peñón Blanco', '021', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3054', 'Moroleón', '021', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3055', 'Coyuca de Benítez', '021', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3056', 'Emiliano Zapata', '021', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3057', 'Casimiro Castillo', '021', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3058', 'Coatepec Harinas', '021', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3059', 'Charapan', '021', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3060', 'Tetecala', '021', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3061', 'General Escobedo', '021', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3062', 'Cosolapa', '021', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3063', 'Atzala', '021', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3064', 'Mexquitic de Carmona', '021', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3065', 'La Colorada', '021', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3066', 'El Mante', '021', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3067', 'Nanacamilpa de Mariano Arista', '021', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3068', 'Atoyac', '021', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3069', 'Chichimilá', '021', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3070', 'Jiménez del Teul', '021', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3071', 'Nava', '022', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3072', 'Chalchihuitán', '022', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3073', 'Dr. Belisario Domínguez', '022', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3074', 'Poanas', '022', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3075', 'Ocampo', '022', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3076', 'Coyuca de Catalán', '022', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3077', 'Epazoyucan', '022', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3078', 'Cihuatlán', '022', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3079', 'Cocotitlán', '022', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3080', 'Charo', '022', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3081', 'Tetela del Volcán', '022', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3082', 'General Terán', '022', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3083', 'Cosoltepec', '022', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3084', 'Atzitzihuacán', '022', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3085', 'Moctezuma', '022', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3086', 'Cucurpe', '022', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3087', 'Matamoros', '022', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3088', 'Acuamanala de Miguel Hidalgo', '022', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3089', 'Atzacan', '022', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3090', 'Chikindzonot', '022', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3091', 'Juan Aldama', '022', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3092', 'Ocampo', '023', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3093', 'Chamula', '023', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3094', 'Galeana', '023', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3095', 'Pueblo Nuevo', '023', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3096', 'Pénjamo', '023', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3097', 'Cuajinicuilapa', '023', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3098', 'Francisco I. Madero', '023', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3099', 'Zapotlán el Grande', '023', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3100', 'Coyotepec', '023', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3101', 'Chavinda', '023', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3102', 'Tlalnepantla', '023', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3103', 'General Treviño', '023', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3104', 'Cuilápam de Guerrero', '023', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3105', 'Atzitzintla', '023', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3106', 'Rayón', '023', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3107', 'Cumpas', '023', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3108', 'Méndez', '023', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3109', 'Natívitas', '023', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3110', 'Atzalan', '023', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3111', 'Chocholá', '023', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3112', 'Juchipila', '023', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3113', 'Parras', '024', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3114', 'Chanal', '024', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3115', 'Santa Isabel', '024', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3116', 'Rodeo', '024', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3117', 'Pueblo Nuevo', '024', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3118', 'Cualác', '024', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3119', 'Huasca de Ocampo', '024', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3120', 'Cocula', '024', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3121', 'Cuautitlán', '024', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3122', 'Cherán', '024', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3123', 'Tlaltizapán de Zapata', '024', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3124', 'General Zaragoza', '024', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3125', 'Cuyamecalco Villa de Zaragoza', '024', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3126', 'Axutla', '024', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3127', 'Rioverde', '024', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3128', 'Divisaderos', '024', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3129', 'Mier', '024', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3130', 'Panotla', '024', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3131', 'Tlaltetela', '024', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3132', 'Chumayel', '024', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3133', 'Loreto', '024', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3134', 'Piedras Negras', '025', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3135', 'Chapultenango', '025', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3136', 'Gómez Farías', '025', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3137', 'San Bernardo', '025', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3138', 'Purísima del Rincón', '025', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3139', 'Cuautepec', '025', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3140', 'Huautla', '025', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3141', 'Colotlán', '025', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3142', 'Chalco', '025', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3143', 'Chilchota', '025', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3144', 'Tlaquiltenango', '025', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3145', 'General Zuazua', '025', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3146', 'Chahuites', '025', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3147', 'Ayotoxco de Guerrero', '025', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3148', 'Salinas', '025', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3149', 'Empalme', '025', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3150', 'Miguel Alemán', '025', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3151', 'San Pablo del Monte', '025', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3152', 'Ayahualulco', '025', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3153', 'Dzán', '025', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3154', 'Luis Moya', '025', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3155', 'Progreso', '026', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3156', 'Chenalhó', '026', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3157', 'Gran Morelos', '026', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3158', 'San Dimas', '026', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3159', 'Romita', '026', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3160', 'Cuetzala del Progreso', '026', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3161', 'Huazalingo', '026', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3162', 'Concepción de Buenos Aires', '026', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3163', 'Chapa de Mota', '026', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3164', 'Chinicuila', '026', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3165', 'Tlayacapan', '026', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3166', 'Guadalupe', '026', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3167', 'Chalcatongo de Hidalgo', '026', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3168', 'Calpan', '026', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3169', 'San Antonio', '026', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3170', 'Etchojoa', '026', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3171', 'Miquihuana', '026', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3172', 'Santa Cruz Tlaxcala', '026', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3173', 'Banderilla', '026', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3174', 'Dzemul', '026', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3175', 'Mazapil', '026', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3176', 'Ramos Arizpe', '027', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3177', 'Chiapa de Corzo', '027', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3178', 'Guachochi', '027', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3179', 'San Juan de Guadalupe', '027', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3180', 'Salamanca', '027', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3181', 'Cutzamala de Pinzón', '027', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3182', 'Huehuetla', '027', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3183', 'Cuautitlán de García Barragán', '027', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3184', 'Chapultepec', '027', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3185', 'Chucándiro', '027', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3186', 'Totolapan', '027', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3187', 'Los Herreras', '027', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3188', 'Chiquihuitlán de Benito Juárez', '027', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3189', 'Caltepec', '027', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3190', 'San Ciro de Acosta', '027', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3191', 'Fronteras', '027', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3192', 'Nuevo Laredo', '027', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3193', 'Tenancingo', '027', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3194', 'Benito Juárez', '027', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3195', 'Dzidzantún', '027', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3196', 'Melchor Ocampo', '027', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3197', 'Sabinas', '028', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3198', 'Chiapilla', '028', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3199', 'Guadalupe', '028', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3200', 'San Juan del Río', '028', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3201', 'Salvatierra', '028', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3202', 'Chilapa de Álvarez', '028', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3203', 'Huejutla de Reyes', '028', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3204', 'Cuautla', '028', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3205', 'Chiautla', '028', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3206', 'Churintzio', '028', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3207', 'Xochitepec', '028', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3208', 'Higueras', '028', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3209', 'Heroica Ciudad de Ejutla de Crespo', '028', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3210', 'Camocuautla', '028', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3211', 'San Luis Potosí', '028', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3212', 'Granados', '028', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3213', 'Nuevo Morelos', '028', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3214', 'Teolocholco', '028', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3215', 'Boca del Río', '028', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3216', 'Dzilam de Bravo', '028', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3217', 'Mezquital del Oro', '028', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3218', 'Sacramento', '029', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3219', 'Chicoasén', '029', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3220', 'Guadalupe y Calvo', '029', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3221', 'San Luis del Cordero', '029', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3222', 'San Diego de la Unión', '029', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3223', 'Chilpancingo de los Bravo', '029', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3224', 'Huichapan', '029', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3225', 'Cuquío', '029', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3226', 'Chicoloapan', '029', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3227', 'Churumuco', '029', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3228', 'Yautepec', '029', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3229', 'Hualahuises', '029', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3230', 'Eloxochitlán de Flores Magón', '029', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3231', 'Caxhuacan', '029', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3232', 'San Martín Chalchicuautla', '029', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3233', 'Guaymas', '029', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3234', 'Ocampo', '029', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3235', 'Tepeyanco', '029', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3236', 'Calcahualco', '029', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3237', 'Dzilam González', '029', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3238', 'Miguel Auza', '029', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3239', 'Saltillo', '030', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3240', 'Chicomuselo', '030', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3241', 'Guazapares', '030', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3242', 'San Pedro del Gallo', '030', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3243', 'San Felipe', '030', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3244', 'Florencio Villarreal', '030', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3245', 'Ixmiquilpan', '030', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3246', 'Chapala', '030', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3247', 'Chiconcuac', '030', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3248', 'Ecuandureo', '030', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3249', 'Yecapixtla', '030', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3250', 'Iturbide', '030', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3251', 'El Espinal', '030', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3252', 'Coatepec', '030', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3253', 'San Nicolás Tolentino', '030', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3254', 'Hermosillo', '030', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3255', 'Padilla', '030', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3256', 'Terrenate', '030', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3257', 'Camerino Z. Mendoza', '030', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3258', 'Dzitás', '030', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3259', 'Momax', '030', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3260', 'San Buenaventura', '031', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3261', 'Chilón', '031', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3262', 'Guerrero', '031', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3263', 'Santa Clara', '031', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3264', 'San Francisco del Rincón', '031', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3265', 'General Canuto A. Neri', '031', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3266', 'Jacala de Ledezma', '031', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3267', 'Chimaltitán', '031', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3268', 'Chimalhuacán', '031', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3269', 'Epitacio Huerta', '031', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3270', 'Zacatepec', '031', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3271', 'Juárez', '031', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3272', 'Tamazulápam del Espíritu Santo', '031', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3273', 'Coatzingo', '031', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3274', 'Santa Catarina', '031', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3275', 'Huachinera', '031', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3276', 'Palmillas', '031', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3277', 'Tetla de la Solidaridad', '031', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3278', 'Carrillo Puerto', '031', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3279', 'Dzoncauich', '031', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3280', 'Monte Escobedo', '031', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3281', 'San Juan de Sabinas', '032', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3282', 'Escuintla', '032', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3283', 'Hidalgo del Parral', '032', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3284', 'Santiago Papasquiaro', '032', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3285', 'San José Iturbide', '032', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3286', 'General Heliodoro Castillo', '032', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3287', 'Jaltocán', '032', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3288', 'Chiquilistlán', '032', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3289', 'Donato Guerra', '032', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3290', 'Erongarícuaro', '032', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3291', 'Zacualpan', '032', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3292', 'Lampazos de Naranjo', '032', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3293', 'Fresnillo de Trujano', '032', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3294', 'Cohetzala', '032', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3295', 'Santa María del Río', '032', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3296', 'Huásabas', '032', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3297', 'Reynosa', '032', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3298', 'Tetlatlahuca', '032', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3299', 'Catemaco', '032', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3300', 'Espita', '032', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3301', 'Morelos', '032', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3302', 'San Pedro', '033', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3303', 'Francisco León', '033', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3304', 'Huejotitán', '033', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3305', 'Súchil', '033', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3306', 'San Luis de la Paz', '033', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3307', 'Huamuxtitlán', '033', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3308', 'Juárez Hidalgo', '033', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3309', 'Degollado', '033', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3310', 'Ecatepec de Morelos', '033', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3311', 'Gabriel Zamora', '033', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3312', 'Temoac', '033', '17');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3313', 'Linares', '033', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3314', 'Guadalupe Etla', '033', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3315', 'Cohuecan', '033', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3316', 'Santo Domingo', '033', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3317', 'Huatabampo', '033', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3318', 'Río Bravo', '033', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3319', 'Tlaxcala', '033', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3320', 'Cazones de Herrera', '033', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3321', 'Halachó', '033', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3322', 'Moyahua de Estrada', '033', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3323', 'Sierra Mojada', '034', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3324', 'Frontera Comalapa', '034', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3325', 'Ignacio Zaragoza', '034', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3326', 'Tamazula', '034', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3327', 'Santa Catarina', '034', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3328', 'Huitzuco de los Figueroa', '034', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3329', 'Lolotla', '034', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3330', 'Ejutla', '034', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3331', 'Ecatzingo', '034', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3332', 'Hidalgo', '034', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3333', 'Marín', '034', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3334', 'Guadalupe de Ramírez', '034', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3335', 'Coronango', '034', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3336', 'San Vicente Tancuayalab', '034', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3337', 'Huépac', '034', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3338', 'San Carlos', '034', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3339', 'Tlaxco', '034', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3340', 'Cerro Azul', '034', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3341', 'Hocabá', '034', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3342', 'Nochistlán de Mejía', '034', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3343', 'Torreón', '035', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3344', 'Frontera Hidalgo', '035', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3345', 'Janos', '035', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3346', 'Tepehuanes', '035', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3347', 'Santa Cruz de Juventino Rosas', '035', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3348', 'Iguala de la Independencia', '035', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3349', 'Metepec', '035', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3350', 'Encarnación de Díaz', '035', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3351', 'Huehuetoca', '035', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3352', 'La Huacana', '035', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3353', 'Melchor Ocampo', '035', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3354', 'Guelatao de Juárez', '035', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3355', 'Coxcatlán', '035', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3356', 'Soledad de Graciano Sánchez', '035', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3357', 'Imuris', '035', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3358', 'San Fernando', '035', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3359', 'Tocatlán', '035', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3360', 'Citlaltépetl', '035', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3361', 'Hoctún', '035', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3362', 'Noria de Ángeles', '035', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3363', 'Viesca', '036', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3364', 'La Grandeza', '036', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3365', 'Jiménez', '036', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3366', 'Tlahualilo', '036', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3367', 'Santiago Maravatío', '036', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3368', 'Igualapa', '036', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3369', 'San Agustín Metzquititlán', '036', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3370', 'Etzatlán', '036', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3371', 'Hueypoxtla', '036', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3372', 'Huandacareo', '036', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3373', 'Mier y Noriega', '036', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3374', 'Guevea de Humboldt', '036', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3375', 'Coyomeapan', '036', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3376', 'Tamasopo', '036', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3377', 'Magdalena', '036', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3378', 'San Nicolás', '036', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3379', 'Totolac', '036', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3380', 'Coacoatzintla', '036', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3381', 'Homún', '036', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3382', 'Ojocaliente', '036', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3383', 'Villa Unión', '037', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3384', 'Huehuetán', '037', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3385', 'Juárez', '037', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3386', 'Topia', '037', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3387', 'Silao de la Victoria', '037', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3388', 'Ixcateopan de Cuauhtémoc', '037', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3389', 'Metztitlán', '037', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3390', 'El Grullo', '037', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3391', 'Huixquilucan', '037', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3392', 'Huaniqueo', '037', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3393', 'Mina', '037', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3394', 'Mesones Hidalgo', '037', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3395', 'Coyotepec', '037', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3396', 'Tamazunchale', '037', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3397', 'Mazatán', '037', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3398', 'Soto la Marina', '037', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3399', 'Ziltlaltépec de Trinidad Sánchez Santos', '037', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3400', 'Coahuitlán', '037', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3401', 'Huhí', '037', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3402', 'Pánuco', '037', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3403', 'Zaragoza', '038', '5');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3404', 'Huixtán', '038', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3405', 'Julimes', '038', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3406', 'Vicente Guerrero', '038', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3407', 'Tarandacuao', '038', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3408', 'Zihuatanejo de Azueta', '038', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3409', 'Mineral del Chico', '038', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3410', 'Guachinango', '038', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3411', 'Isidro Fabela', '038', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3412', 'Huetamo', '038', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3413', 'Montemorelos', '038', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3414', 'Villa Hidalgo', '038', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3415', 'Cuapiaxtla de Madero', '038', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3416', 'Tampacán', '038', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3417', 'Moctezuma', '038', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3418', 'Tampico', '038', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3419', 'Tzompantepec', '038', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3420', 'Coatepec', '038', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3421', 'Hunucmá', '038', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3422', 'Pinos', '038', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3423', 'Huitiupán', '039', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3424', 'López', '039', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3425', 'Nuevo Ideal', '039', '10');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3426', 'Tarimoro', '039', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3427', 'Juan R. Escudero', '039', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3428', 'Mineral del Monte', '039', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3429', 'Guadalajara', '039', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3430', 'Ixtapaluca', '039', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3431', 'Huiramba', '039', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3432', 'Monterrey', '039', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3433', 'Heroica Ciudad de Huajuapan de León', '039', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3434', 'Cuautempan', '039', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3435', 'Tampamolón Corona', '039', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3436', 'Naco', '039', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3437', 'Tula', '039', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3438', 'Xaloztoc', '039', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3439', 'Coatzacoalcos', '039', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3440', 'Ixil', '039', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3441', 'Río Grande', '039', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3442', 'Huixtla', '040', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3443', 'Madera', '040', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3444', 'Tierra Blanca', '040', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3445', 'Leonardo Bravo', '040', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3446', 'La Misión', '040', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3447', 'Hostotipaquillo', '040', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3448', 'Ixtapan de la Sal', '040', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3449', 'Indaparapeo', '040', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3450', 'Parás', '040', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3451', 'Huautepec', '040', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3452', 'Cuautinchán', '040', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3453', 'Tamuín', '040', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3454', 'Nácori Chico', '040', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3455', 'Valle Hermoso', '040', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3456', 'Xaltocan', '040', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3457', 'Coatzintla', '040', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3458', 'Izamal', '040', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3459', 'Sain Alto', '040', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3460', 'La Independencia', '041', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3461', 'Maguarichi', '041', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3462', 'Uriangato', '041', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3463', 'Malinaltepec', '041', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3464', 'Mixquiahuala de Juárez', '041', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3465', 'Huejúcar', '041', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3466', 'Ixtapan del Oro', '041', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3467', 'Irimbo', '041', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3468', 'Pesquería', '041', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3469', 'Huautla de Jiménez', '041', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3470', 'Cuautlancingo', '041', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3471', 'Tanlajás', '041', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3472', 'Nacozari de García', '041', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3473', 'Victoria', '041', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3474', 'Papalotla de Xicohténcatl', '041', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3475', 'Coetzala', '041', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3476', 'Kanasín', '041', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3477', 'El Salvador', '041', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3478', 'Ixhuatán', '042', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3479', 'Manuel Benavides', '042', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3480', 'Valle de Santiago', '042', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3481', 'Mártir de Cuilapan', '042', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3482', 'Molango de Escamilla', '042', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3483', 'Huejuquilla el Alto', '042', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3484', 'Ixtlahuaca', '042', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3485', 'Ixtlán', '042', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3486', 'Los Ramones', '042', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3487', 'Ixtlán de Juárez', '042', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3488', 'Cuayuca de Andrade', '042', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3489', 'Tanquián de Escobedo', '042', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3490', 'Navojoa', '042', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3491', 'Villagrán', '042', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3492', 'Xicohtzinco', '042', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3493', 'Colipa', '042', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3494', 'Kantunil', '042', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3495', 'Sombrerete', '042', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3496', 'Ixtacomitán', '043', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3497', 'Matachí', '043', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3498', 'Victoria', '043', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3499', 'Metlatónoc', '043', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3500', 'Nicolás Flores', '043', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3501', 'La Huerta', '043', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3502', 'Xalatlaco', '043', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3503', 'Jacona', '043', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3504', 'Rayones', '043', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3505', 'Heroica Ciudad de Juchitán de Zaragoza', '043', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3506', 'Cuetzalan del Progreso', '043', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3507', 'Tierra Nueva', '043', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3508', 'Nogales', '043', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3509', 'Xicoténcatl', '043', '28');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3510', 'Yauhquemehcan', '043', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3511', 'Comapa', '043', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3512', 'Kaua', '043', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3513', 'Susticacán', '043', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3514', 'Ixtapa', '044', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3515', 'Matamoros', '044', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3516', 'Villagrán', '044', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3517', 'Mochitlán', '044', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3518', 'Nopala de Villagrán', '044', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3519', 'Ixtlahuacán de los Membrillos', '044', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3520', 'Jaltenco', '044', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3521', 'Jiménez', '044', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3522', 'Sabinas Hidalgo', '044', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3523', 'Loma Bonita', '044', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3524', 'Cuyoaco', '044', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3525', 'Vanegas', '044', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3526', 'Onavas', '044', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3527', 'Zacatelco', '044', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3528', 'Córdoba', '044', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3529', 'Kinchil', '044', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3530', 'Tabasco', '044', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3531', 'Ixtapangajoya', '045', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3532', 'Meoqui', '045', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3533', 'Xichú', '045', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3534', 'Olinalá', '045', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3535', 'Omitlán de Juárez', '045', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3536', 'Ixtlahuacán del Río', '045', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3537', 'Jilotepec', '045', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3538', 'Jiquilpan', '045', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3539', 'Salinas Victoria', '045', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3540', 'Magdalena Apasco', '045', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3541', 'Chalchicomula de Sesma', '045', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3542', 'Venado', '045', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3543', 'Opodepe', '045', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3544', 'Benito Juárez', '045', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3545', 'Cosamaloapan de Carpio', '045', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3546', 'Kopomá', '045', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3547', 'Tepechitlán', '045', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3548', 'Jiquipilas', '046', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3549', 'Morelos', '046', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3550', 'Yuriria', '046', '11');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3551', 'Ometepec', '046', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3552', 'San Felipe Orizatlán', '046', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3553', 'Jalostotitlán', '046', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3554', 'Jilotzingo', '046', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3555', 'Juárez', '046', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3556', 'San Nicolás de los Garza', '046', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3557', 'Magdalena Jaltepec', '046', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3558', 'Chapulco', '046', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3559', 'Villa de Arriaga', '046', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3560', 'Oquitoa', '046', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3561', 'Emiliano Zapata', '046', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3562', 'Cosautlán de Carvajal', '046', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3563', 'Mama', '046', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3564', 'Tepetongo', '046', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3565', 'Jitotol', '047', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3566', 'Moris', '047', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3567', 'Pedro Ascencio Alquisiras', '047', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3568', 'Pacula', '047', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3569', 'Jamay', '047', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3570', 'Jiquipilco', '047', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3571', 'Jungapeo', '047', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3572', 'Hidalgo', '047', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3573', 'Santa Magdalena Jicotlán', '047', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3574', 'Chiautla', '047', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3575', 'Villa de Guadalupe', '047', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3576', 'Pitiquito', '047', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3577', 'Lázaro Cárdenas', '047', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3578', 'Coscomatepec', '047', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3579', 'Maní', '047', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3580', 'Teúl de González Ortega', '047', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3581', 'Juárez', '048', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3582', 'Namiquipa', '048', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3583', 'Petatlán', '048', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3584', 'Pachuca de Soto', '048', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3585', 'Jesús María', '048', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3586', 'Jocotitlán', '048', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3587', 'Lagunillas', '048', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3588', 'Santa Catarina', '048', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3589', 'Magdalena Mixtepec', '048', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3590', 'Chiautzingo', '048', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3591', 'Villa de la Paz', '048', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3592', 'Puerto Peñasco', '048', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3593', 'La Magdalena Tlaltelulco', '048', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3594', 'Cosoleacaque', '048', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3595', 'Maxcanú', '048', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3596', 'Tlaltenango de Sánchez Román', '048', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3597', 'Larráinzar', '049', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3598', 'Nonoava', '049', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3599', 'Pilcaya', '049', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3600', 'Pisaflores', '049', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3601', 'Jilotlán de los Dolores', '049', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3602', 'Joquicingo', '049', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3603', 'Madero', '049', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3604', 'Santiago', '049', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3605', 'Magdalena Ocotlán', '049', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3606', 'Chiconcuautla', '049', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3607', 'Villa de Ramos', '049', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3608', 'Quiriego', '049', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3609', 'San Damián Texóloc', '049', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3610', 'Cotaxtla', '049', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3611', 'Mayapán', '049', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3612', 'Valparaíso', '049', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3613', 'La Libertad', '050', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3614', 'Nuevo Casas Grandes', '050', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3615', 'Pungarabato', '050', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3616', 'Progreso de Obregón', '050', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3617', 'Jocotepec', '050', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3618', 'Juchitepec', '050', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3619', 'Maravatío', '050', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3620', 'Vallecillo', '050', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3621', 'Magdalena Peñasco', '050', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3622', 'Chichiquila', '050', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3623', 'Villa de Reyes', '050', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3624', 'Rayón', '050', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3625', 'San Francisco Tetlanohcan', '050', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3626', 'Coxquihui', '050', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3627', 'Mérida', '050', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3628', 'Vetagrande', '050', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3629', 'Mapastepec', '051', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3630', 'Ocampo', '051', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3631', 'Quechultenango', '051', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3632', 'Mineral de la Reforma', '051', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3633', 'Juanacatlán', '051', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3634', 'Lerma', '051', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3635', 'Marcos Castellanos', '051', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3636', 'Villaldama', '051', '19');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3637', 'Magdalena Teitipac', '051', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3638', 'Chietla', '051', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3639', 'Villa Hidalgo', '051', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3640', 'Rosario', '051', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3641', 'San Jerónimo Zacualpan', '051', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3642', 'Coyutla', '051', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3643', 'Mocochá', '051', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3644', 'Villa de Cos', '051', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3645', 'Las Margaritas', '052', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3646', 'Ojinaga', '052', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3647', 'San Luis Acatlán', '052', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3648', 'San Agustín Tlaxiaca', '052', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3649', 'Juchitlán', '052', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3650', 'Malinalco', '052', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3651', 'Lázaro Cárdenas', '052', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3652', 'Magdalena Tequisistlán', '052', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3653', 'Chigmecatitlán', '052', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3654', 'Villa Juárez', '052', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3655', 'Sahuaripa', '052', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3656', 'San José Teacalco', '052', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3657', 'Cuichapa', '052', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3658', 'Motul', '052', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3659', 'Villa García', '052', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3660', 'Mazapa de Madero', '053', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3661', 'Praxedis G. Guerrero', '053', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3662', 'San Marcos', '053', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3663', 'San Bartolo Tutotepec', '053', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3664', 'Lagos de Moreno', '053', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3665', 'Melchor Ocampo', '053', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3666', 'Morelia', '053', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3667', 'Magdalena Tlacotepec', '053', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3668', 'Chignahuapan', '053', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3669', 'Axtla de Terrazas', '053', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3670', 'San Felipe de Jesús', '053', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3671', 'San Juan Huactzinco', '053', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3672', 'Cuitláhuac', '053', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3673', 'Muna', '053', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3674', 'Villa González Ortega', '053', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3675', 'Mazatán', '054', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3676', 'Riva Palacio', '054', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3677', 'San Miguel Totolapan', '054', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3678', 'San Salvador', '054', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3679', 'El Limón', '054', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3680', 'Metepec', '054', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3681', 'Morelos', '054', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3682', 'Magdalena Zahuatlán', '054', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3683', 'Chignautla', '054', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3684', 'Xilitla', '054', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3685', 'San Javier', '054', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3686', 'San Lorenzo Axocomanitla', '054', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3687', 'Chacaltianguis', '054', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3688', 'Muxupip', '054', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3689', 'Villa Hidalgo', '054', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3690', 'Metapa', '055', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3691', 'Rosales', '055', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3692', 'Taxco de Alarcón', '055', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3693', 'Santiago de Anaya', '055', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3694', 'Magdalena', '055', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3695', 'Mexicaltzingo', '055', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3696', 'Múgica', '055', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3697', 'Mariscala de Juárez', '055', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3698', 'Chila', '055', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3699', 'Zaragoza', '055', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3700', 'San Luis Río Colorado', '055', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3701', 'San Lucas Tecopilco', '055', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3702', 'Chalma', '055', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3703', 'Opichén', '055', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3704', 'Villanueva', '055', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3705', 'Mitontic', '056', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3706', 'Rosario', '056', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3707', 'Tecoanapa', '056', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3708', 'Santiago Tulantepec de Lugo Guerrero', '056', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3709', 'Santa María del Oro', '056', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3710', 'Morelos', '056', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3711', 'Nahuatzen', '056', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3712', 'Mártires de Tacubaya', '056', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3713', 'Chila de la Sal', '056', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3714', 'Villa de Arista', '056', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3715', 'San Miguel de Horcasitas', '056', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3716', 'Santa Ana Nopalucan', '056', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3717', 'Chiconamel', '056', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3718', 'Oxkutzcab', '056', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3719', 'Zacatecas', '056', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3720', 'Motozintla', '057', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3721', 'San Francisco de Borja', '057', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3722', 'Técpan de Galeana', '057', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3723', 'Singuilucan', '057', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3724', 'La Manzanilla de la Paz', '057', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3725', 'Naucalpan de Juárez', '057', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3726', 'Nocupétaro', '057', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3727', 'Matías Romero Avendaño', '057', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3728', 'Honey', '057', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3729', 'Matlapa', '057', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3730', 'San Pedro de la Cueva', '057', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3731', 'Santa Apolonia Teacalco', '057', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3732', 'Chiconquiaco', '057', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3733', 'Panabá', '057', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3734', 'Trancoso', '057', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3735', 'Nicolás Ruíz', '058', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3736', 'San Francisco de Conchos', '058', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3737', 'Teloloapan', '058', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3738', 'Tasquillo', '058', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3739', 'Mascota', '058', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3740', 'Nezahualcóyotl', '058', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3741', 'Nuevo Parangaricutiro', '058', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3742', 'Mazatlán Villa de Flores', '058', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3743', 'Chilchotla', '058', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3744', 'El Naranjo', '058', '24');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3745', 'Santa Ana', '058', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3746', 'Santa Catarina Ayometla', '058', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3747', 'Chicontepec', '058', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3748', 'Peto', '058', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3749', 'Santa María de la Paz', '058', '32');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3750', 'Ocosingo', '059', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3751', 'San Francisco del Oro', '059', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3752', 'Tepecoacuilco de Trujano', '059', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3753', 'Tecozautla', '059', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3754', 'Mazamitla', '059', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3755', 'Nextlalpan', '059', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3756', 'Nuevo Urecho', '059', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3757', 'Miahuatlán de Porfirio Díaz', '059', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3758', 'Chinantla', '059', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3759', 'Santa Cruz', '059', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3760', 'Santa Cruz Quilehtla', '059', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3761', 'Chinameca', '059', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3762', 'Progreso', '059', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3763', 'Ocotepec', '060', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3764', 'Santa Bárbara', '060', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3765', 'Tetipac', '060', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3766', 'Tenango de Doria', '060', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3767', 'Mexticacán', '060', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3768', 'Nicolás Romero', '060', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3769', 'Numarán', '060', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3770', 'Mixistlán de la Reforma', '060', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3771', 'Domingo Arenas', '060', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3772', 'Sáric', '060', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3773', 'Santa Isabel Xiloxoxtla', '060', '29');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3774', 'Chinampa de Gorostiza', '060', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3775', 'Quintana Roo', '060', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3776', 'Ocozocoautla de Espinosa', '061', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3777', 'Satevó', '061', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3778', 'Tixtla de Guerrero', '061', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3779', 'Tepeapulco', '061', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3780', 'Mezquitic', '061', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3781', 'Nopaltepec', '061', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3782', 'Ocampo', '061', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3783', 'Monjas', '061', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3784', 'Eloxochitlán', '061', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3785', 'Soyopa', '061', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3786', 'Las Choapas', '061', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3787', 'Río Lagartos', '061', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3788', 'Ostuacán', '062', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3789', 'Saucillo', '062', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3790', 'Tlacoachistlahuaca', '062', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3791', 'Tepehuacán de Guerrero', '062', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3792', 'Mixtlán', '062', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3793', 'Ocoyoacac', '062', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3794', 'Pajacuarán', '062', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3795', 'Natividad', '062', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3796', 'Epatlán', '062', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3797', 'Suaqui Grande', '062', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3798', 'Chocamán', '062', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3799', 'Sacalum', '062', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3800', 'Osumacinta', '063', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3801', 'Temósachic', '063', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3802', 'Tlacoapa', '063', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3803', 'Tepeji del Río de Ocampo', '063', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3804', 'Ocotlán', '063', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3805', 'Ocuilan', '063', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3806', 'Panindícuaro', '063', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3807', 'Nazareno Etla', '063', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3808', 'Esperanza', '063', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3809', 'Tepache', '063', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3810', 'Chontla', '063', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3811', 'Samahil', '063', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3812', 'Oxchuc', '064', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3813', 'El Tule', '064', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3814', 'Tlalchapa', '064', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3815', 'Tepetitlán', '064', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3816', 'Ojuelos de Jalisco', '064', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3817', 'El Oro', '064', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3818', 'Parácuaro', '064', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3819', 'Nejapa de Madero', '064', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3820', 'Francisco Z. Mena', '064', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3821', 'Trincheras', '064', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3822', 'Chumatlán', '064', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3823', 'Sanahcat', '064', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3824', 'Palenque', '065', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3825', 'Urique', '065', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3826', 'Tlalixtaquilla de Maldonado', '065', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3827', 'Tetepango', '065', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3828', 'Pihuamo', '065', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3829', 'Otumba', '065', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3830', 'Paracho', '065', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3831', 'Ixpantepec Nieves', '065', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3832', 'General Felipe Ángeles', '065', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3833', 'Tubutama', '065', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3834', 'Emiliano Zapata', '065', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3835', 'San Felipe', '065', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3836', 'Pantelhó', '066', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3837', 'Uruachi', '066', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3838', 'Tlapa de Comonfort', '066', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3839', 'Villa de Tezontepec', '066', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3840', 'Poncitlán', '066', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3841', 'Otzoloapan', '066', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3842', 'Pátzcuaro', '066', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3843', 'Santiago Niltepec', '066', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3844', 'Guadalupe', '066', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3845', 'Ures', '066', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3846', 'Espinal', '066', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3847', 'Santa Elena', '066', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3848', 'Pantepec', '067', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3849', 'Valle de Zaragoza', '067', '8');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3850', 'Tlapehuala', '067', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3851', 'Tezontepec de Aldama', '067', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3852', 'Puerto Vallarta', '067', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3853', 'Otzolotepec', '067', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3854', 'Penjamillo', '067', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3855', 'Oaxaca de Juárez', '067', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3856', 'Guadalupe Victoria', '067', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3857', 'Villa Hidalgo', '067', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3858', 'Filomeno Mata', '067', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3859', 'Seyé', '067', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3860', 'Pichucalco', '068', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3861', 'La Unión de Isidoro Montes de Oca', '068', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3862', 'Tianguistengo', '068', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3863', 'Villa Purificación', '068', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3864', 'Ozumba', '068', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3865', 'Peribán', '068', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3866', 'Ocotlán de Morelos', '068', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3867', 'Hermenegildo Galeana', '068', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3868', 'Villa Pesqueira', '068', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3869', 'Fortín', '068', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3870', 'Sinanché', '068', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3871', 'Pijijiapan', '069', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3872', 'Xalpatláhuac', '069', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3873', 'Tizayuca', '069', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3874', 'Quitupan', '069', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3875', 'Papalotla', '069', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3876', 'La Piedad', '069', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3877', 'La Pe', '069', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3878', 'Huaquechula', '069', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3879', 'Yécora', '069', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3880', 'Gutiérrez Zamora', '069', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3881', 'Sotuta', '069', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3882', 'El Porvenir', '070', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3883', 'Xochihuehuetlán', '070', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3884', 'Tlahuelilpan', '070', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3885', 'El Salto', '070', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3886', 'La Paz', '070', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3887', 'Purépero', '070', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3888', 'Pinotepa de Don Luis', '070', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3889', 'Huatlatlauca', '070', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3890', 'General Plutarco Elías Calles', '070', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3891', 'Hidalgotitlán', '070', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3892', 'Sucilá', '070', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3893', 'Villa Comaltitlán', '071', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3894', 'Xochistlahuaca', '071', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3895', 'Tlahuiltepa', '071', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3896', 'San Cristóbal de la Barranca', '071', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3897', 'Polotitlán', '071', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3898', 'Puruándiro', '071', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3899', 'Pluma Hidalgo', '071', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3900', 'Huauchinango', '071', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3901', 'Benito Juárez', '071', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3902', 'Huatusco', '071', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3903', 'Sudzal', '071', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3904', 'Pueblo Nuevo Solistahuacán', '072', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3905', 'Zapotitlán Tablas', '072', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3906', 'Tlanalapa', '072', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3907', 'San Diego de Alejandría', '072', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3908', 'Rayón', '072', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3909', 'Queréndaro', '072', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3910', 'San José del Progreso', '072', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3911', 'Huehuetla', '072', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3912', 'San Ignacio Río Muerto', '072', '26');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3913', 'Huayacocotla', '072', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3914', 'Suma', '072', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3915', 'Rayón', '073', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3916', 'Zirándaro', '073', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3917', 'Tlanchinol', '073', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3918', 'San Juan de los Lagos', '073', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3919', 'San Antonio la Isla', '073', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3920', 'Quiroga', '073', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3921', 'Putla Villa de Guerrero', '073', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3922', 'Huehuetlán el Chico', '073', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3923', 'Hueyapan de Ocampo', '073', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3924', 'Tahdziú', '073', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3925', 'Reforma', '074', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3926', 'Zitlala', '074', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3927', 'Tlaxcoapan', '074', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3928', 'San Julián', '074', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3929', 'San Felipe del Progreso', '074', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3930', 'Cojumatlán de Régules', '074', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3931', 'Santa Catarina Quioquitani', '074', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3932', 'Huejotzingo', '074', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3933', 'Huiloapan de Cuauhtémoc', '074', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3934', 'Tahmek', '074', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3935', 'Las Rosas', '075', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3936', 'Eduardo Neri', '075', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3937', 'Tolcayuca', '075', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3938', 'San Marcos', '075', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3939', 'San Martín de las Pirámides', '075', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3940', 'Los Reyes', '075', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3941', 'Reforma de Pineda', '075', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3942', 'Hueyapan', '075', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3943', 'Ignacio de la Llave', '075', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3944', 'Teabo', '075', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3945', 'Sabanilla', '076', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3946', 'Acatepec', '076', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3947', 'Tula de Allende', '076', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3948', 'San Martín de Bolaños', '076', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3949', 'San Mateo Atenco', '076', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3950', 'Sahuayo', '076', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3951', 'La Reforma', '076', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3952', 'Hueytamalco', '076', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3953', 'Ilamatlán', '076', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3954', 'Tecoh', '076', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3955', 'Salto de Agua', '077', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3956', 'Marquelia', '077', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3957', 'Tulancingo de Bravo', '077', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3958', 'San Martín Hidalgo', '077', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3959', 'San Simón de Guerrero', '077', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3960', 'San Lucas', '077', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3961', 'Reyes Etla', '077', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3962', 'Hueytlalpan', '077', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3963', 'Isla', '077', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3964', 'Tekal de Venegas', '077', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3965', 'San Cristóbal de las Casas', '078', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3966', 'Cochoapa el Grande', '078', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3967', 'Xochiatipan', '078', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3968', 'San Miguel el Alto', '078', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3969', 'Santo Tomás', '078', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3970', 'Santa Ana Maya', '078', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3971', 'Rojas de Cuauhtémoc', '078', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3972', 'Huitzilan de Serdán', '078', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3973', 'Ixcatepec', '078', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3974', 'Tekantó', '078', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3975', 'San Fernando', '079', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3976', 'José Joaquín de Herrera', '079', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3977', 'Xochicoatlán', '079', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3978', 'Gómez Farías', '079', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3979', 'Soyaniquilpan de Juárez', '079', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3980', 'Salvador Escalante', '079', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3981', 'Salina Cruz', '079', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3982', 'Huitziltepec', '079', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3983', 'Ixhuacán de los Reyes', '079', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3984', 'Tekax', '079', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3985', 'Siltepec', '080', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3986', 'Juchitán', '080', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3987', 'Yahualica', '080', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3988', 'San Sebastián del Oeste', '080', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3989', 'Sultepec', '080', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3990', 'Senguio', '080', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3991', 'San Agustín Amatengo', '080', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3992', 'Atlequizayan', '080', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3993', 'Ixhuatlán del Café', '080', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3994', 'Tekit', '080', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3995', 'Simojovel', '081', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3996', 'Iliatenco', '081', '12');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3997', 'Zacualtipán de Ángeles', '081', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3998', 'Santa María de los Ángeles', '081', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('3999', 'Tecámac', '081', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4000', 'Susupuato', '081', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4001', 'San Agustín Atenango', '081', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4002', 'Ixcamilpa de Guerrero', '081', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4003', 'Ixhuatlancillo', '081', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4004', 'Tekom', '081', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4005', 'Sitalá', '082', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4006', 'Zapotlán de Juárez', '082', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4007', 'Sayula', '082', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4008', 'Tejupilco', '082', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4009', 'Tacámbaro', '082', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4010', 'San Agustín Chayuco', '082', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4011', 'Ixcaquixtla', '082', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4012', 'Ixhuatlán del Sureste', '082', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4013', 'Telchac Pueblo', '082', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4014', 'Socoltenango', '083', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4015', 'Zempoala', '083', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4016', 'Tala', '083', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4017', 'Temamatla', '083', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4018', 'Tancítaro', '083', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4019', 'San Agustín de las Juntas', '083', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4020', 'Ixtacamaxtitlán', '083', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4021', 'Ixhuatlán de Madero', '083', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4022', 'Telchac Puerto', '083', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4023', 'Solosuchiapa', '084', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4024', 'Zimapán', '084', '13');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4025', 'Talpa de Allende', '084', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4026', 'Temascalapa', '084', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4027', 'Tangamandapio', '084', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4028', 'San Agustín Etla', '084', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4029', 'Ixtepec', '084', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4030', 'Ixmatlahuacan', '084', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4031', 'Temax', '084', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4032', 'Soyaló', '085', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4033', 'Tamazula de Gordiano', '085', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4034', 'Temascalcingo', '085', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4035', 'Tangancícuaro', '085', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4036', 'San Agustín Loxicha', '085', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4037', 'Izúcar de Matamoros', '085', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4038', 'Ixtaczoquitlán', '085', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4039', 'Temozón', '085', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4040', 'Suchiapa', '086', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4041', 'Tapalpa', '086', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4042', 'Temascaltepec', '086', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4043', 'Tanhuato', '086', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4044', 'San Agustín Tlacotepec', '086', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4045', 'Jalpan', '086', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4046', 'Jalacingo', '086', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4047', 'Tepakán', '086', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4048', 'Suchiate', '087', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4049', 'Tecalitlán', '087', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4050', 'Temoaya', '087', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4051', 'Taretan', '087', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4052', 'San Agustín Yatareni', '087', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4053', 'Jolalpan', '087', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4054', 'Xalapa', '087', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4055', 'Tetiz', '087', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4056', 'Sunuapa', '088', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4057', 'Tecolotlán', '088', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4058', 'Tenancingo', '088', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4059', 'Tarímbaro', '088', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4060', 'San Andrés Cabecera Nueva', '088', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4061', 'Jonotla', '088', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4062', 'Jalcomulco', '088', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4063', 'Teya', '088', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4064', 'Tapachula', '089', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4065', 'Techaluta de Montenegro', '089', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4066', 'Tenango del Aire', '089', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4067', 'Tepalcatepec', '089', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4068', 'San Andrés Dinicuiti', '089', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4069', 'Jopala', '089', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4070', 'Jáltipan', '089', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4071', 'Ticul', '089', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4072', 'Tapalapa', '090', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4073', 'Tenamaxtlán', '090', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4074', 'Tenango del Valle', '090', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4075', 'Tingambato', '090', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4076', 'San Andrés Huaxpaltepec', '090', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4077', 'Juan C. Bonilla', '090', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4078', 'Jamapa', '090', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4079', 'Timucuy', '090', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4080', 'Tapilula', '091', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4081', 'Teocaltiche', '091', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4082', 'Teoloyucan', '091', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4083', 'Tingüindín', '091', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4084', 'San Andrés Huayápam', '091', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4085', 'Juan Galindo', '091', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4086', 'Jesús Carranza', '091', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4087', 'Tinum', '091', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4088', 'Tecpatán', '092', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4089', 'Teocuitatlán de Corona', '092', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4090', 'Teotihuacán', '092', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4091', 'Tiquicheo de Nicolás Romero', '092', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4092', 'San Andrés Ixtlahuaca', '092', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4093', 'Juan N. Méndez', '092', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4094', 'Xico', '092', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4095', 'Tixcacalcupul', '092', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4096', 'Tenejapa', '093', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4097', 'Tepatitlán de Morelos', '093', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4098', 'Tepetlaoxtoc', '093', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4099', 'Tlalpujahua', '093', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4100', 'San Andrés Lagunas', '093', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4101', 'Lafragua', '093', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4102', 'Jilotepec', '093', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4103', 'Tixkokob', '093', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4104', 'Teopisca', '094', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4105', 'Tequila', '094', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4106', 'Tepetlixpa', '094', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4107', 'Tlazazalca', '094', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4108', 'San Andrés Nuxiño', '094', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4109', 'Libres', '094', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4110', 'Juan Rodríguez Clara', '094', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4111', 'Tixmehuac', '094', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4112', 'Teuchitlán', '095', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4113', 'Tepotzotlán', '095', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4114', 'Tocumbo', '095', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4115', 'San Andrés Paxtlán', '095', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4116', 'La Magdalena Tlatlauquitepec', '095', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4117', 'Juchique de Ferrer', '095', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4118', 'Tixpéhual', '095', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4119', 'Tila', '096', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4120', 'Tizapán el Alto', '096', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4121', 'Tequixquiac', '096', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4122', 'Tumbiscatío', '096', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4123', 'San Andrés Sinaxtla', '096', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4124', 'Mazapiltepec de Juárez', '096', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4125', 'Landero y Coss', '096', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4126', 'Tizimín', '096', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4127', 'Tonalá', '097', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4128', 'Tlajomulco de Zúñiga', '097', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4129', 'Texcaltitlán', '097', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4130', 'Turicato', '097', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4131', 'San Andrés Solaga', '097', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4132', 'Mixtla', '097', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4133', 'Lerdo de Tejada', '097', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4134', 'Tunkás', '097', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4135', 'Totolapa', '098', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4136', 'San Pedro Tlaquepaque', '098', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4137', 'Texcalyacac', '098', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4138', 'Tuxpan', '098', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4139', 'San Andrés Teotilálpam', '098', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4140', 'Molcaxac', '098', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4141', 'Magdalena', '098', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4142', 'Tzucacab', '098', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4143', 'La Trinitaria', '099', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4144', 'Tolimán', '099', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4145', 'Texcoco', '099', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4146', 'Tuzantla', '099', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4147', 'San Andrés Tepetlapa', '099', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4148', 'Cañada Morelos', '099', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4149', 'Maltrata', '099', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4150', 'Uayma', '099', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4151', 'Tumbalá', '100', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4152', 'Tomatlán', '100', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4153', 'Tezoyuca', '100', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4154', 'Tzintzuntzan', '100', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4155', 'San Andrés Yaá', '100', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4156', 'Naupan', '100', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4157', 'Manlio Fabio Altamirano', '100', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4158', 'Ucú', '100', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4159', 'Tuxtla Gutiérrez', '101', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4160', 'Tonalá', '101', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4161', 'Tianguistenco', '101', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4162', 'Tzitzio', '101', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4163', 'San Andrés Zabache', '101', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4164', 'Nauzontla', '101', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4165', 'Mariano Escobedo', '101', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4166', 'Umán', '101', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4167', 'Tuxtla Chico', '102', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4168', 'Tonaya', '102', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4169', 'Timilpan', '102', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4170', 'Uruapan', '102', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4171', 'San Andrés Zautla', '102', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4172', 'Nealtican', '102', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4173', 'Martínez de la Torre', '102', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4174', 'Valladolid', '102', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4175', 'Tuzantán', '103', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4176', 'Tonila', '103', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4177', 'Tlalmanalco', '103', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4178', 'Venustiano Carranza', '103', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4179', 'San Antonino Castillo Velasco', '103', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4180', 'Nicolás Bravo', '103', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4181', 'Mecatlán', '103', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4182', 'Xocchel', '103', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4183', 'Tzimol', '104', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4184', 'Totatiche', '104', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4185', 'Tlalnepantla de Baz', '104', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4186', 'Villamar', '104', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4187', 'San Antonino el Alto', '104', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4188', 'Nopalucan', '104', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4189', 'Mecayapan', '104', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4190', 'Yaxcabá', '104', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4191', 'Unión Juárez', '105', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4192', 'Tototlán', '105', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4193', 'Tlatlaya', '105', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4194', 'Vista Hermosa', '105', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4195', 'San Antonino Monte Verde', '105', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4196', 'Ocotepec', '105', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4197', 'Medellín', '105', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4198', 'Yaxkukul', '105', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4199', 'Venustiano Carranza', '106', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4200', 'Tuxcacuesco', '106', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4201', 'Toluca', '106', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4202', 'Yurécuaro', '106', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4203', 'San Antonio Acutla', '106', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4204', 'Ocoyucan', '106', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4205', 'Miahuatlán', '106', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4206', 'Yobaín', '106', '31');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4207', 'Villa Corzo', '107', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4208', 'Tuxcueca', '107', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4209', 'Tonatico', '107', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4210', 'Zacapu', '107', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4211', 'San Antonio de la Cal', '107', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4212', 'Olintla', '107', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4213', 'Las Minas', '107', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4214', 'Villaflores', '108', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4215', 'Tuxpan', '108', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4216', 'Tultepec', '108', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4217', 'Zamora', '108', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4218', 'San Antonio Huitepec', '108', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4219', 'Oriental', '108', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4220', 'Minatitlán', '108', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4221', 'Yajalón', '109', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4222', 'Unión de San Antonio', '109', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4223', 'Tultitlán', '109', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4224', 'Zináparo', '109', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4225', 'San Antonio Nanahuatípam', '109', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4226', 'Pahuatlán', '109', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4227', 'Misantla', '109', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4228', 'San Lucas', '110', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4229', 'Unión de Tula', '110', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4230', 'Valle de Bravo', '110', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4231', 'Zinapécuaro', '110', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4232', 'San Antonio Sinicahua', '110', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4233', 'Palmar de Bravo', '110', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4234', 'Mixtla de Altamirano', '110', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4235', 'Zinacantán', '111', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4236', 'Valle de Guadalupe', '111', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4237', 'Villa de Allende', '111', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4238', 'Ziracuaretiro', '111', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4239', 'San Antonio Tepetlapa', '111', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4240', 'Pantepec', '111', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4241', 'Moloacán', '111', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4242', 'San Juan Cancuc', '112', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4243', 'Valle de Juárez', '112', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4244', 'Villa del Carbón', '112', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4245', 'Zitácuaro', '112', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4246', 'San Baltazar Chichicápam', '112', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4247', 'Petlalcingo', '112', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4248', 'Naolinco', '112', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4249', 'Aldama', '113', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4250', 'San Gabriel', '113', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4251', 'Villa Guerrero', '113', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4252', 'José Sixto Verduzco', '113', '16');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4253', 'San Baltazar Loxicha', '113', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4254', 'Piaxtla', '113', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4255', 'Naranjal', '113', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4256', 'Benemérito de las Américas', '114', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4257', 'Villa Corona', '114', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4258', 'Villa Victoria', '114', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4259', 'San Baltazar Yatzachi el Bajo', '114', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4260', 'Puebla', '114', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4261', 'Nautla', '114', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4262', 'Maravilla Tenejapa', '115', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4263', 'Villa Guerrero', '115', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4264', 'Xonacatlán', '115', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4265', 'San Bartolo Coyotepec', '115', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4266', 'Quecholac', '115', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4267', 'Nogales', '115', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4268', 'Marqués de Comillas', '116', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4269', 'Villa Hidalgo', '116', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4270', 'Zacazonapan', '116', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4271', 'San Bartolomé Ayautla', '116', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4272', 'Quimixtlán', '116', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4273', 'Oluta', '116', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4274', 'Montecristo de Guerrero', '117', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4275', 'Cañadas de Obregón', '117', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4276', 'Zacualpan', '117', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4277', 'San Bartolomé Loxicha', '117', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4278', 'Rafael Lara Grajales', '117', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4279', 'Omealca', '117', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4280', 'San Andrés Duraznal', '118', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4281', 'Yahualica de González Gallo', '118', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4282', 'Zinacantepec', '118', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4283', 'San Bartolomé Quialana', '118', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4284', 'Los Reyes de Juárez', '118', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4285', 'Orizaba', '118', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4286', 'Santiago el Pinar', '119', '7');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4287', 'Zacoalco de Torres', '119', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4288', 'Zumpahuacán', '119', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4289', 'San Bartolomé Yucuañe', '119', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4290', 'San Andrés Cholula', '119', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4291', 'Otatitlán', '119', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4292', 'Zapopan', '120', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4293', 'Zumpango', '120', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4294', 'San Bartolomé Zoogocho', '120', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4295', 'San Antonio Cañada', '120', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4296', 'Oteapan', '120', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4297', 'Zapotiltic', '121', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4298', 'Cuautitlán Izcalli', '121', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4299', 'San Bartolo Soyaltepec', '121', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4300', 'San Diego la Mesa Tochimiltzingo', '121', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4301', 'Ozuluama de Mascareñas', '121', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4302', 'Zapotitlán de Vadillo', '122', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4303', 'Valle de Chalco Solidaridad', '122', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4304', 'San Bartolo Yautepec', '122', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4305', 'San Felipe Teotlalcingo', '122', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4306', 'Pajapan', '122', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4307', 'Zapotlán del Rey', '123', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4308', 'Luvianos', '123', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4309', 'San Bernardo Mixtepec', '123', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4310', 'San Felipe Tepatlán', '123', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4311', 'Pánuco', '123', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4312', 'Zapotlanejo', '124', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4313', 'San José del Rincón', '124', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4314', 'San Blas Atempa', '124', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4315', 'San Gabriel Chilac', '124', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4316', 'Papantla', '124', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4317', 'San Ignacio Cerro Gordo', '125', '14');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4318', 'Tonanitla', '125', '15');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4319', 'San Carlos Yautepec', '125', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4320', 'San Gregorio Atzompa', '125', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4321', 'Paso del Macho', '125', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4322', 'San Cristóbal Amatlán', '126', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4323', 'San Jerónimo Tecuanipan', '126', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4324', 'Paso de Ovejas', '126', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4325', 'San Cristóbal Amoltepec', '127', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4326', 'San Jerónimo Xayacatlán', '127', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4327', 'La Perla', '127', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4328', 'San Cristóbal Lachirioag', '128', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4329', 'San José Chiapa', '128', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4330', 'Perote', '128', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4331', 'San Cristóbal Suchixtlahuaca', '129', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4332', 'San José Miahuatlán', '129', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4333', 'Platón Sánchez', '129', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4334', 'San Dionisio del Mar', '130', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4335', 'San Juan Atenco', '130', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4336', 'Playa Vicente', '130', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4337', 'San Dionisio Ocotepec', '131', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4338', 'San Juan Atzompa', '131', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4339', 'Poza Rica de Hidalgo', '131', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4340', 'San Dionisio Ocotlán', '132', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4341', 'San Martín Texmelucan', '132', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4342', 'Las Vigas de Ramírez', '132', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4343', 'San Esteban Atatlahuca', '133', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4344', 'San Martín Totoltepec', '133', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4345', 'Pueblo Viejo', '133', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4346', 'San Felipe Jalapa de Díaz', '134', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4347', 'San Matías Tlalancaleca', '134', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4348', 'Puente Nacional', '134', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4349', 'San Felipe Tejalápam', '135', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4350', 'San Miguel Ixitlán', '135', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4351', 'Rafael Delgado', '135', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4352', 'San Felipe Usila', '136', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4353', 'San Miguel Xoxtla', '136', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4354', 'Rafael Lucio', '136', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4355', 'San Francisco Cahuacuá', '137', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4356', 'San Nicolás Buenos Aires', '137', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4357', 'Los Reyes', '137', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4358', 'San Francisco Cajonos', '138', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4359', 'San Nicolás de los Ranchos', '138', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4360', 'Río Blanco', '138', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4361', 'San Francisco Chapulapa', '139', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4362', 'San Pablo Anicano', '139', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4363', 'Saltabarranca', '139', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4364', 'San Francisco Chindúa', '140', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4365', 'San Pedro Cholula', '140', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4366', 'San Andrés Tenejapan', '140', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4367', 'San Francisco del Mar', '141', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4368', 'San Pedro Yeloixtlahuaca', '141', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4369', 'San Andrés Tuxtla', '141', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4370', 'San Francisco Huehuetlán', '142', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4371', 'San Salvador el Seco', '142', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4372', 'San Juan Evangelista', '142', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4373', 'San Francisco Ixhuatán', '143', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4374', 'San Salvador el Verde', '143', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4375', 'Santiago Tuxtla', '143', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4376', 'San Francisco Jaltepetongo', '144', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4377', 'San Salvador Huixcolotla', '144', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4378', 'Sayula de Alemán', '144', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4379', 'San Francisco Lachigoló', '145', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4380', 'San Sebastián Tlacotepec', '145', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4381', 'Soconusco', '145', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4382', 'San Francisco Logueche', '146', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4383', 'Santa Catarina Tlaltempan', '146', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4384', 'Sochiapa', '146', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4385', 'San Francisco Nuxaño', '147', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4386', 'Santa Inés Ahuatempan', '147', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4387', 'Soledad Atzompa', '147', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4388', 'San Francisco Ozolotepec', '148', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4389', 'Santa Isabel Cholula', '148', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4390', 'Soledad de Doblado', '148', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4391', 'San Francisco Sola', '149', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4392', 'Santiago Miahuatlán', '149', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4393', 'Soteapan', '149', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4394', 'San Francisco Telixtlahuaca', '150', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4395', 'Huehuetlán el Grande', '150', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4396', 'Tamalín', '150', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4397', 'San Francisco Teopan', '151', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4398', 'Santo Tomás Hueyotlipan', '151', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4399', 'Tamiahua', '151', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4400', 'San Francisco Tlapancingo', '152', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4401', 'Soltepec', '152', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4402', 'Tampico Alto', '152', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4403', 'San Gabriel Mixtepec', '153', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4404', 'Tecali de Herrera', '153', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4405', 'Tancoco', '153', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4406', 'San Ildefonso Amatlán', '154', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4407', 'Tecamachalco', '154', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4408', 'Tantima', '154', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4409', 'San Ildefonso Sola', '155', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4410', 'Tecomatlán', '155', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4411', 'Tantoyuca', '155', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4412', 'San Ildefonso Villa Alta', '156', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4413', 'Tehuacán', '156', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4414', 'Tatatila', '156', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4415', 'San Jacinto Amilpas', '157', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4416', 'Tehuitzingo', '157', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4417', 'Castillo de Teayo', '157', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4418', 'San Jacinto Tlacotepec', '158', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4419', 'Tenampulco', '158', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4420', 'Tecolutla', '158', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4421', 'San Jerónimo Coatlán', '159', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4422', 'Teopantlán', '159', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4423', 'Tehuipango', '159', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4424', 'San Jerónimo Silacayoapilla', '160', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4425', 'Teotlalco', '160', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4426', 'Álamo Temapache', '160', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4427', 'San Jerónimo Sosola', '161', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4428', 'Tepanco de López', '161', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4429', 'Tempoal', '161', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4430', 'San Jerónimo Taviche', '162', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4431', 'Tepango de Rodríguez', '162', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4432', 'Tenampa', '162', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4433', 'San Jerónimo Tecóatl', '163', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4434', 'Tepatlaxco de Hidalgo', '163', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4435', 'Tenochtitlán', '163', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4436', 'San Jorge Nuchita', '164', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4437', 'Tepeaca', '164', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4438', 'Teocelo', '164', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4439', 'San José Ayuquila', '165', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4440', 'Tepemaxalco', '165', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4441', 'Tepatlaxco', '165', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4442', 'San José Chiltepec', '166', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4443', 'Tepeojuma', '166', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4444', 'Tepetlán', '166', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4445', 'San José del Peñasco', '167', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4446', 'Tepetzintla', '167', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4447', 'Tepetzintla', '167', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4448', 'San José Estancia Grande', '168', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4449', 'Tepexco', '168', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4450', 'Tequila', '168', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4451', 'San José Independencia', '169', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4452', 'Tepexi de Rodríguez', '169', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4453', 'José Azueta', '169', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4454', 'San José Lachiguiri', '170', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4455', 'Tepeyahualco', '170', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4456', 'Texcatepec', '170', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4457', 'San José Tenango', '171', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4458', 'Tepeyahualco de Cuauhtémoc', '171', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4459', 'Texhuacán', '171', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4460', 'San Juan Achiutla', '172', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4461', 'Tetela de Ocampo', '172', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4462', 'Texistepec', '172', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4463', 'San Juan Atepec', '173', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4464', 'Teteles de Avila Castillo', '173', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4465', 'Tezonapa', '173', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4466', 'Ánimas Trujano', '174', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4467', 'Teziutlán', '174', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4468', 'Tierra Blanca', '174', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4469', 'San Juan Bautista Atatlahuca', '175', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4470', 'Tianguismanalco', '175', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4471', 'Tihuatlán', '175', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4472', 'San Juan Bautista Coixtlahuaca', '176', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4473', 'Tilapa', '176', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4474', 'Tlacojalpan', '176', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4475', 'San Juan Bautista Cuicatlán', '177', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4476', 'Tlacotepec de Benito Juárez', '177', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4477', 'Tlacolulan', '177', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4478', 'San Juan Bautista Guelache', '178', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4479', 'Tlacuilotepec', '178', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4480', 'Tlacotalpan', '178', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4481', 'San Juan Bautista Jayacatlán', '179', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4482', 'Tlachichuca', '179', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4483', 'Tlacotepec de Mejía', '179', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4484', 'San Juan Bautista Lo de Soto', '180', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4485', 'Tlahuapan', '180', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4486', 'Tlachichilco', '180', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4487', 'San Juan Bautista Suchitepec', '181', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4488', 'Tlaltenango', '181', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4489', 'Tlalixcoyan', '181', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4490', 'San Juan Bautista Tlacoatzintepec', '182', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4491', 'Tlanepantla', '182', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4492', 'Tlalnelhuayocan', '182', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4493', 'San Juan Bautista Tlachichilco', '183', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4494', 'Tlaola', '183', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4495', 'Tlapacoyan', '183', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4496', 'San Juan Bautista Tuxtepec', '184', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4497', 'Tlapacoya', '184', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4498', 'Tlaquilpa', '184', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4499', 'San Juan Cacahuatepec', '185', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4500', 'Tlapanalá', '185', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4501', 'Tlilapan', '185', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4502', 'San Juan Cieneguilla', '186', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4503', 'Tlatlauquitepec', '186', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4504', 'Tomatlán', '186', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4505', 'San Juan Coatzóspam', '187', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4506', 'Tlaxco', '187', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4507', 'Tonayán', '187', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4508', 'San Juan Colorado', '188', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4509', 'Tochimilco', '188', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4510', 'Totutla', '188', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4511', 'San Juan Comaltepec', '189', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4512', 'Tochtepec', '189', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4513', 'Tuxpan', '189', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4514', 'San Juan Cotzocón', '190', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4515', 'Totoltepec de Guerrero', '190', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4516', 'Tuxtilla', '190', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4517', 'San Juan Chicomezúchil', '191', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4518', 'Tulcingo', '191', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4519', 'Ursulo Galván', '191', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4520', 'San Juan Chilateca', '192', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4521', 'Tuzamapan de Galeana', '192', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4522', 'Vega de Alatorre', '192', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4523', 'San Juan del Estado', '193', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4524', 'Tzicatlacoyan', '193', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4525', 'Veracruz', '193', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4526', 'San Juan del Río', '194', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4527', 'Venustiano Carranza', '194', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4528', 'Villa Aldama', '194', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4529', 'San Juan Diuxi', '195', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4530', 'Vicente Guerrero', '195', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4531', 'Xoxocotla', '195', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4532', 'San Juan Evangelista Analco', '196', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4533', 'Xayacatlán de Bravo', '196', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4534', 'Yanga', '196', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4535', 'San Juan Guelavía', '197', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4536', 'Xicotepec', '197', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4537', 'Yecuatla', '197', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4538', 'San Juan Guichicovi', '198', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4539', 'Xicotlán', '198', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4540', 'Zacualpan', '198', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4541', 'San Juan Ihualtepec', '199', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4542', 'Xiutetelco', '199', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4543', 'Zaragoza', '199', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4544', 'San Juan Juquila Mixes', '200', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4545', 'Xochiapulco', '200', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4546', 'Zentla', '200', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4547', 'San Juan Juquila Vijanos', '201', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4548', 'Xochiltepec', '201', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4549', 'Zongolica', '201', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4550', 'San Juan Lachao', '202', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4551', 'Xochitlán de Vicente Suárez', '202', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4552', 'Zontecomatlán de López y Fuentes', '202', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4553', 'San Juan Lachigalla', '203', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4554', 'Xochitlán Todos Santos', '203', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4555', 'Zozocolco de Hidalgo', '203', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4556', 'San Juan Lajarcia', '204', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4557', 'Yaonáhuac', '204', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4558', 'Agua Dulce', '204', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4559', 'San Juan Lalana', '205', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4560', 'Yehualtepec', '205', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4561', 'El Higo', '205', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4562', 'San Juan de los Cués', '206', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4563', 'Zacapala', '206', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4564', 'Nanchital de Lázaro Cárdenas del Río', '206', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4565', 'San Juan Mazatlán', '207', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4566', 'Zacapoaxtla', '207', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4567', 'Tres Valles', '207', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4568', 'San Juan Mixtepec -Dto. 08 -', '208', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4569', 'Zacatlán', '208', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4570', 'Carlos A. Carrillo', '208', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4571', 'San Juan Mixtepec -Dto. 26 -', '209', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4572', 'Zapotitlán', '209', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4573', 'Tatahuicapan de Juárez', '209', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4574', 'San Juan Ñumí', '210', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4575', 'Zapotitlán de Méndez', '210', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4576', 'Uxpanapa', '210', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4577', 'San Juan Ozolotepec', '211', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4578', 'Zaragoza', '211', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4579', 'San Rafael', '211', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4580', 'San Juan Petlapa', '212', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4581', 'Zautla', '212', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4582', 'Santiago Sochiapan', '212', '30');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4583', 'San Juan Quiahije', '213', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4584', 'Zihuateutla', '213', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4585', 'San Juan Quiotepec', '214', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4586', 'Zinacatepec', '214', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4587', 'San Juan Sayultepec', '215', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4588', 'Zongozotla', '215', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4589', 'San Juan Tabaá', '216', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4590', 'Zoquiapan', '216', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4591', 'San Juan Tamazola', '217', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4592', 'Zoquitlán', '217', '21');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4593', 'San Juan Teita', '218', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4594', 'San Juan Teitipac', '219', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4595', 'San Juan Tepeuxila', '220', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4596', 'San Juan Teposcolula', '221', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4597', 'San Juan Yaeé', '222', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4598', 'San Juan Yatzona', '223', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4599', 'San Juan Yucuita', '224', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4600', 'San Lorenzo', '225', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4601', 'San Lorenzo Albarradas', '226', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4602', 'San Lorenzo Cacaotepec', '227', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4603', 'San Lorenzo Cuaunecuiltitla', '228', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4604', 'San Lorenzo Texmelúcan', '229', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4605', 'San Lorenzo Victoria', '230', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4606', 'San Lucas Camotlán', '231', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4607', 'San Lucas Ojitlán', '232', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4608', 'San Lucas Quiaviní', '233', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4609', 'San Lucas Zoquiápam', '234', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4610', 'San Luis Amatlán', '235', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4611', 'San Marcial Ozolotepec', '236', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4612', 'San Marcos Arteaga', '237', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4613', 'San Martín de los Cansecos', '238', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4614', 'San Martín Huamelúlpam', '239', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4615', 'San Martín Itunyoso', '240', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4616', 'San Martín Lachilá', '241', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4617', 'San Martín Peras', '242', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4618', 'San Martín Tilcajete', '243', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4619', 'San Martín Toxpalan', '244', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4620', 'San Martín Zacatepec', '245', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4621', 'San Mateo Cajonos', '246', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4622', 'Capulálpam de Méndez', '247', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4623', 'San Mateo del Mar', '248', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4624', 'San Mateo Yoloxochitlán', '249', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4625', 'San Mateo Etlatongo', '250', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4626', 'San Mateo Nejápam', '251', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4627', 'San Mateo Peñasco', '252', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4628', 'San Mateo Piñas', '253', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4629', 'San Mateo Río Hondo', '254', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4630', 'San Mateo Sindihui', '255', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4631', 'San Mateo Tlapiltepec', '256', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4632', 'San Melchor Betaza', '257', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4633', 'San Miguel Achiutla', '258', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4634', 'San Miguel Ahuehuetitlán', '259', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4635', 'San Miguel Aloápam', '260', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4636', 'San Miguel Amatitlán', '261', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4637', 'San Miguel Amatlán', '262', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4638', 'San Miguel Coatlán', '263', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4639', 'San Miguel Chicahua', '264', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4640', 'San Miguel Chimalapa', '265', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4641', 'San Miguel del Puerto', '266', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4642', 'San Miguel del Río', '267', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4643', 'San Miguel Ejutla', '268', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4644', 'San Miguel el Grande', '269', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4645', 'San Miguel Huautla', '270', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4646', 'San Miguel Mixtepec', '271', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4647', 'San Miguel Panixtlahuaca', '272', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4648', 'San Miguel Peras', '273', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4649', 'San Miguel Piedras', '274', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4650', 'San Miguel Quetzaltepec', '275', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4651', 'San Miguel Santa Flor', '276', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4652', 'Villa Sola de Vega', '277', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4653', 'San Miguel Soyaltepec', '278', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4654', 'San Miguel Suchixtepec', '279', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4655', 'Villa Talea de Castro', '280', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4656', 'San Miguel Tecomatlán', '281', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4657', 'San Miguel Tenango', '282', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4658', 'San Miguel Tequixtepec', '283', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4659', 'San Miguel Tilquiápam', '284', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4660', 'San Miguel Tlacamama', '285', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4661', 'San Miguel Tlacotepec', '286', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4662', 'San Miguel Tulancingo', '287', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4663', 'San Miguel Yotao', '288', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4664', 'San Nicolás', '289', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4665', 'San Nicolás Hidalgo', '290', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4666', 'San Pablo Coatlán', '291', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4667', 'San Pablo Cuatro Venados', '292', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4668', 'San Pablo Etla', '293', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4669', 'San Pablo Huitzo', '294', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4670', 'San Pablo Huixtepec', '295', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4671', 'San Pablo Macuiltianguis', '296', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4672', 'San Pablo Tijaltepec', '297', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4673', 'San Pablo Villa de Mitla', '298', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4674', 'San Pablo Yaganiza', '299', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4675', 'San Pedro Amuzgos', '300', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4676', 'San Pedro Apóstol', '301', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4677', 'San Pedro Atoyac', '302', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4678', 'San Pedro Cajonos', '303', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4679', 'San Pedro Coxcaltepec Cántaros', '304', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4680', 'San Pedro Comitancillo', '305', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4681', 'San Pedro el Alto', '306', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4682', 'San Pedro Huamelula', '307', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4683', 'San Pedro Huilotepec', '308', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4684', 'San Pedro Ixcatlán', '309', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4685', 'San Pedro Ixtlahuaca', '310', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4686', 'San Pedro Jaltepetongo', '311', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4687', 'San Pedro Jicayán', '312', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4688', 'San Pedro Jocotipac', '313', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4689', 'San Pedro Juchatengo', '314', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4690', 'San Pedro Mártir', '315', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4691', 'San Pedro Mártir Quiechapa', '316', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4692', 'San Pedro Mártir Yucuxaco', '317', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4693', 'San Pedro Mixtepec -Dto. 22 -', '318', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4694', 'San Pedro Mixtepec -Dto. 26 -', '319', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4695', 'San Pedro Molinos', '320', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4696', 'San Pedro Nopala', '321', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4697', 'San Pedro Ocopetatillo', '322', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4698', 'San Pedro Ocotepec', '323', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4699', 'San Pedro Pochutla', '324', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4700', 'San Pedro Quiatoni', '325', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4701', 'San Pedro Sochiápam', '326', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4702', 'San Pedro Tapanatepec', '327', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4703', 'San Pedro Taviche', '328', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4704', 'San Pedro Teozacoalco', '329', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4705', 'San Pedro Teutila', '330', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4706', 'San Pedro Tidaá', '331', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4707', 'San Pedro Topiltepec', '332', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4708', 'San Pedro Totolápam', '333', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4709', 'Villa de Tututepec de Melchor Ocampo', '334', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4710', 'San Pedro Yaneri', '335', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4711', 'San Pedro Yólox', '336', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4712', 'San Pedro y San Pablo Ayutla', '337', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4713', 'Villa de Etla', '338', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4714', 'San Pedro y San Pablo Teposcolula', '339', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4715', 'San Pedro y San Pablo Tequixtepec', '340', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4716', 'San Pedro Yucunama', '341', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4717', 'San Raymundo Jalpan', '342', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4718', 'San Sebastián Abasolo', '343', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4719', 'San Sebastián Coatlán', '344', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4720', 'San Sebastián Ixcapa', '345', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4721', 'San Sebastián Nicananduta', '346', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4722', 'San Sebastián Río Hondo', '347', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4723', 'San Sebastián Tecomaxtlahuaca', '348', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4724', 'San Sebastián Teitipac', '349', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4725', 'San Sebastián Tutla', '350', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4726', 'San Simón Almolongas', '351', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4727', 'San Simón Zahuatlán', '352', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4728', 'Santa Ana', '353', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4729', 'Santa Ana Ateixtlahuaca', '354', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4730', 'Santa Ana Cuauhtémoc', '355', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4731', 'Santa Ana del Valle', '356', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4732', 'Santa Ana Tavela', '357', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4733', 'Santa Ana Tlapacoyan', '358', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4734', 'Santa Ana Yareni', '359', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4735', 'Santa Ana Zegache', '360', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4736', 'Santa Catalina Quierí', '361', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4737', 'Santa Catarina Cuixtla', '362', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4738', 'Santa Catarina Ixtepeji', '363', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4739', 'Santa Catarina Juquila', '364', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4740', 'Santa Catarina Lachatao', '365', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4741', 'Santa Catarina Loxicha', '366', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4742', 'Santa Catarina Mechoacán', '367', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4743', 'Santa Catarina Minas', '368', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4744', 'Santa Catarina Quiané', '369', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4745', 'Santa Catarina Tayata', '370', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4746', 'Santa Catarina Ticuá', '371', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4747', 'Santa Catarina Yosonotú', '372', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4748', 'Santa Catarina Zapoquila', '373', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4749', 'Santa Cruz Acatepec', '374', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4750', 'Santa Cruz Amilpas', '375', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4751', 'Santa Cruz de Bravo', '376', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4752', 'Santa Cruz Itundujia', '377', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4753', 'Santa Cruz Mixtepec', '378', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4754', 'Santa Cruz Nundaco', '379', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4755', 'Santa Cruz Papalutla', '380', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4756', 'Santa Cruz Tacache de Mina', '381', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4757', 'Santa Cruz Tacahua', '382', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4758', 'Santa Cruz Tayata', '383', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4759', 'Santa Cruz Xitla', '384', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4760', 'Santa Cruz Xoxocotlán', '385', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4761', 'Santa Cruz Zenzontepec', '386', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4762', 'Santa Gertrudis', '387', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4763', 'Santa Inés del Monte', '388', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4764', 'Santa Inés Yatzeche', '389', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4765', 'Santa Lucía del Camino', '390', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4766', 'Santa Lucía Miahuatlán', '391', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4767', 'Santa Lucía Monteverde', '392', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4768', 'Santa Lucía Ocotlán', '393', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4769', 'Santa María Alotepec', '394', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4770', 'Santa María Apazco', '395', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4771', 'Santa María la Asunción', '396', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4772', 'Heroica Ciudad de Tlaxiaco', '397', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4773', 'Ayoquezco de Aldama', '398', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4774', 'Santa María Atzompa', '399', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4775', 'Santa María Camotlán', '400', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4776', 'Santa María Colotepec', '401', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4777', 'Santa María Cortijo', '402', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4778', 'Santa María Coyotepec', '403', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4779', 'Santa María Chachoápam', '404', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4780', 'Villa de Chilapa de Díaz', '405', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4781', 'Santa María Chilchotla', '406', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4782', 'Santa María Chimalapa', '407', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4783', 'Santa María del Rosario', '408', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4784', 'Santa María del Tule', '409', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4785', 'Santa María Ecatepec', '410', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4786', 'Santa María Guelacé', '411', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4787', 'Santa María Guienagati', '412', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4788', 'Santa María Huatulco', '413', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4789', 'Santa María Huazolotitlán', '414', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4790', 'Santa María Ipalapa', '415', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4791', 'Santa María Ixcatlán', '416', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4792', 'Santa María Jacatepec', '417', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4793', 'Santa María Jalapa del Marqués', '418', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4794', 'Santa María Jaltianguis', '419', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4795', 'Santa María Lachixío', '420', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4796', 'Santa María Mixtequilla', '421', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4797', 'Santa María Nativitas', '422', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4798', 'Santa María Nduayaco', '423', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4799', 'Santa María Ozolotepec', '424', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4800', 'Santa María Pápalo', '425', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4801', 'Santa María Peñoles', '426', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4802', 'Santa María Petapa', '427', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4803', 'Santa María Quiegolani', '428', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4804', 'Santa María Sola', '429', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4805', 'Santa María Tataltepec', '430', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4806', 'Santa María Tecomavaca', '431', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4807', 'Santa María Temaxcalapa', '432', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4808', 'Santa María Temaxcaltepec', '433', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4809', 'Santa María Teopoxco', '434', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4810', 'Santa María Tepantlali', '435', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4811', 'Santa María Texcatitlán', '436', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4812', 'Santa María Tlahuitoltepec', '437', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4813', 'Santa María Tlalixtac', '438', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4814', 'Santa María Tonameca', '439', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4815', 'Santa María Totolapilla', '440', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4816', 'Santa María Xadani', '441', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4817', 'Santa María Yalina', '442', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4818', 'Santa María Yavesía', '443', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4819', 'Santa María Yolotepec', '444', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4820', 'Santa María Yosoyúa', '445', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4821', 'Santa María Yucuhiti', '446', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4822', 'Santa María Zacatepec', '447', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4823', 'Santa María Zaniza', '448', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4824', 'Santa María Zoquitlán', '449', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4825', 'Santiago Amoltepec', '450', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4826', 'Santiago Apoala', '451', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4827', 'Santiago Apóstol', '452', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4828', 'Santiago Astata', '453', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4829', 'Santiago Atitlán', '454', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4830', 'Santiago Ayuquililla', '455', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4831', 'Santiago Cacaloxtepec', '456', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4832', 'Santiago Camotlán', '457', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4833', 'Santiago Comaltepec', '458', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4834', 'Santiago Chazumba', '459', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4835', 'Santiago Choápam', '460', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4836', 'Santiago del Río', '461', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4837', 'Santiago Huajolotitlán', '462', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4838', 'Santiago Huauclilla', '463', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4839', 'Santiago Ihuitlán Plumas', '464', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4840', 'Santiago Ixcuintepec', '465', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4841', 'Santiago Ixtayutla', '466', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4842', 'Santiago Jamiltepec', '467', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4843', 'Santiago Jocotepec', '468', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4844', 'Santiago Juxtlahuaca', '469', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4845', 'Santiago Lachiguiri', '470', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4846', 'Santiago Lalopa', '471', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4847', 'Santiago Laollaga', '472', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4848', 'Santiago Laxopa', '473', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4849', 'Santiago Llano Grande', '474', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4850', 'Santiago Matatlán', '475', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4851', 'Santiago Miltepec', '476', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4852', 'Santiago Minas', '477', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4853', 'Santiago Nacaltepec', '478', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4854', 'Santiago Nejapilla', '479', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4855', 'Santiago Nundiche', '480', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4856', 'Santiago Nuyoó', '481', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4857', 'Santiago Pinotepa Nacional', '482', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4858', 'Santiago Suchilquitongo', '483', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4859', 'Santiago Tamazola', '484', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4860', 'Santiago Tapextla', '485', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4861', 'Villa Tejúpam de la Unión', '486', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4862', 'Santiago Tenango', '487', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4863', 'Santiago Tepetlapa', '488', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4864', 'Santiago Tetepec', '489', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4865', 'Santiago Texcalcingo', '490', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4866', 'Santiago Textitlán', '491', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4867', 'Santiago Tilantongo', '492', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4868', 'Santiago Tillo', '493', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4869', 'Santiago Tlazoyaltepec', '494', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4870', 'Santiago Xanica', '495', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4871', 'Santiago Xiacuí', '496', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4872', 'Santiago Yaitepec', '497', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4873', 'Santiago Yaveo', '498', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4874', 'Santiago Yolomécatl', '499', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4875', 'Santiago Yosondúa', '500', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4876', 'Santiago Yucuyachi', '501', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4877', 'Santiago Zacatepec', '502', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4878', 'Santiago Zoochila', '503', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4879', 'Nuevo Zoquiápam', '504', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4880', 'Santo Domingo Ingenio', '505', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4881', 'Santo Domingo Albarradas', '506', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4882', 'Santo Domingo Armenta', '507', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4883', 'Santo Domingo Chihuitán', '508', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4884', 'Santo Domingo de Morelos', '509', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4885', 'Santo Domingo Ixcatlán', '510', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4886', 'Santo Domingo Nuxaá', '511', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4887', 'Santo Domingo Ozolotepec', '512', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4888', 'Santo Domingo Petapa', '513', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4889', 'Santo Domingo Roayaga', '514', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4890', 'Santo Domingo Tehuantepec', '515', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4891', 'Santo Domingo Teojomulco', '516', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4892', 'Santo Domingo Tepuxtepec', '517', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4893', 'Santo Domingo Tlatayápam', '518', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4894', 'Santo Domingo Tomaltepec', '519', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4895', 'Santo Domingo Tonalá', '520', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4896', 'Santo Domingo Tonaltepec', '521', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4897', 'Santo Domingo Xagacía', '522', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4898', 'Santo Domingo Yanhuitlán', '523', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4899', 'Santo Domingo Yodohino', '524', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4900', 'Santo Domingo Zanatepec', '525', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4901', 'Santos Reyes Nopala', '526', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4902', 'Santos Reyes Pápalo', '527', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4903', 'Santos Reyes Tepejillo', '528', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4904', 'Santos Reyes Yucuná', '529', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4905', 'Santo Tomás Jalieza', '530', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4906', 'Santo Tomás Mazaltepec', '531', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4907', 'Santo Tomás Ocotepec', '532', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4908', 'Santo Tomás Tamazulapan', '533', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4909', 'San Vicente Coatlán', '534', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4910', 'San Vicente Lachixío', '535', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4911', 'San Vicente Nuñú', '536', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4912', 'Silacayoápam', '537', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4913', 'Sitio de Xitlapehua', '538', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4914', 'Soledad Etla', '539', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4915', 'Villa de Tamazulápam del Progreso', '540', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4916', 'Tanetze de Zaragoza', '541', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4917', 'Taniche', '542', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4918', 'Tataltepec de Valdés', '543', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4919', 'Teococuilco de Marcos Pérez', '544', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4920', 'Teotitlán de Flores Magón', '545', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4921', 'Teotitlán del Valle', '546', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4922', 'Teotongo', '547', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4923', 'Tepelmeme Villa de Morelos', '548', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4924', 'Tezoatlán de Segura y Luna', '549', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4925', 'San Jerónimo Tlacochahuaya', '550', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4926', 'Tlacolula de Matamoros', '551', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4927', 'Tlacotepec Plumas', '552', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4928', 'Tlalixtac de Cabrera', '553', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4929', 'Totontepec Villa de Morelos', '554', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4930', 'Trinidad Zaachila', '555', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4931', 'La Trinidad Vista Hermosa', '556', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4932', 'Unión Hidalgo', '557', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4933', 'Valerio Trujano', '558', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4934', 'San Juan Bautista Valle Nacional', '559', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4935', 'Villa Díaz Ordaz', '560', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4936', 'Yaxe', '561', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4937', 'Magdalena Yodocono de Porfirio Díaz', '562', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4938', 'Yogana', '563', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4939', 'Yutanduchi de Guerrero', '564', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4940', 'Villa de Zaachila', '565', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4941', 'San Mateo Yucutindoo', '566', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4942', 'Zapotitlán Lagunas', '567', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4943', 'Zapotitlán Palmas', '568', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4944', 'Santa Inés de Zaragoza', '569', '20');
INSERT INTO `facturacion_ubicacion_municipios` VALUES ('4945', 'Zimatlán de Álvarez', '570', '20');

-- ----------------------------
-- Table structure for facturacion_ubicacion_paises
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_paises`;
CREATE TABLE `facturacion_ubicacion_paises` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `bandera` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_paises
-- ----------------------------
INSERT INTO `facturacion_ubicacion_paises` VALUES ('1', 'México', 'http://png.findicons.com/files/icons/282/flags/32/mexico.png');
INSERT INTO `facturacion_ubicacion_paises` VALUES ('2', 'USA', 'http://png.findicons.com/files/icons/282/flags/32/united_states_of_america_usa.png');

-- ----------------------------
-- Table structure for facturacion_ubicacion_tipo_asentamiento
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_ubicacion_tipo_asentamiento`;
CREATE TABLE `facturacion_ubicacion_tipo_asentamiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `codigo_sepomex` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_ubicacion_tipo_asentamiento
-- ----------------------------
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('1', 'Aeropuerto', '01');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('2', 'Barrio', '02');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('4', 'Campamento', '04');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('8', 'Ciudad', '08');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('9', 'Colonia', '09');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('10', 'Condominio', '10');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('11', 'Congregación', '11');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('12', 'Conjunto habitacional', '12');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('15', 'Ejido', '15');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('16', 'Estación', '16');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('17', 'Equipamiento', '17');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('18', 'Exhacienda', '18');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('20', 'Finca', '20');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('21', 'Fraccionamiento', '21');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('22', 'Gran usuario', '22');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('23', 'Granja', '23');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('24', 'Hacienda', '24');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('25', 'Ingenio', '25');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('26', 'Parque industrial', '26');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('27', 'Poblado comunal', '27');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('28', 'Pueblo', '28');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('29', 'Ranchería', '29');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('30', 'Residencial', '30');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('31', 'Unidad habitacional', '31');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('32', 'Villa', '32');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('33', 'Zona comercial', '33');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('34', 'Zona federal', '34');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('37', 'Zona industrial', '37');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('38', 'Ampliación', '38');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('39', 'Club de golf', '39');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('40', 'Puerto', '40');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('45', 'Paraje', '45');
INSERT INTO `facturacion_ubicacion_tipo_asentamiento` VALUES ('48', 'Rancho', '48');

-- ----------------------------
-- Table structure for facturacion_um
-- ----------------------------
DROP TABLE IF EXISTS `facturacion_um`;
CREATE TABLE `facturacion_um` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `abreviacion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of facturacion_um
-- ----------------------------
INSERT INTO `facturacion_um` VALUES ('1', 'Kilogramo', 'KG');
INSERT INTO `facturacion_um` VALUES ('2', 'pieza', 'pza');
INSERT INTO `facturacion_um` VALUES ('3', 'Servicio', 'Servicio');

-- ----------------------------
-- Table structure for nomina_naturaleza_impuesto
-- ----------------------------
DROP TABLE IF EXISTS `nomina_naturaleza_impuesto`;
CREATE TABLE `nomina_naturaleza_impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nomina_naturaleza_impuesto
-- ----------------------------

-- ----------------------------
-- Table structure for system_catalogos
-- ----------------------------
DROP TABLE IF EXISTS `system_catalogos`;
CREATE TABLE `system_catalogos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_modulo` int(11) DEFAULT NULL,
  `nombre` char(255) DEFAULT NULL,
  `controlador` char(255) DEFAULT NULL,
  `modelo` char(255) DEFAULT NULL,
  `tabla` char(255) DEFAULT NULL,
  `pk_tabla` char(255) DEFAULT 'id',
  `icono` char(255) DEFAULT NULL,
  `titulo_nuevo` char(255) DEFAULT NULL,
  `titulo_edicion` char(255) DEFAULT NULL,
  `titulo_busqueda` char(255) DEFAULT NULL,
  `msg_creado` char(255) DEFAULT NULL,
  `msg_actualizado` char(255) DEFAULT NULL,
  `pregunta_eliminar` char(255) DEFAULT NULL,
  `msg_eliminado` char(255) DEFAULT NULL,
  `msg_cambios` char(255) DEFAULT NULL,
  `campos_busqueda` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of system_catalogos
-- ----------------------------

-- ----------------------------
-- Table structure for system_modulos
-- ----------------------------
DROP TABLE IF EXISTS `system_modulos`;
CREATE TABLE `system_modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `icono` char(255) DEFAULT NULL,
  `nombre_interno` char(255) DEFAULT NULL,
  `ruta_base` char(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of system_modulos
-- ----------------------------
