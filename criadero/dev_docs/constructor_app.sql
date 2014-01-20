/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : coral_erp

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2014-01-20 09:06:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `constructor_app`
-- ----------------------------
DROP TABLE IF EXISTS `constructor_app`;
CREATE TABLE `constructor_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `ubicacion` char(255) DEFAULT NULL,
  `logo` char(255) DEFAULT NULL,
  `favicon` char(255) DEFAULT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `tags` char(255) DEFAULT NULL,
  `nombre_interno` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of constructor_app
-- ----------------------------
INSERT INTO `constructor_app` VALUES ('8', 'Ventas', '../ventas', '', '/circular/shop.png', 'Punto de venta', '', 'ventas');
INSERT INTO `constructor_app` VALUES ('9', 'Nomina', '../nomina', '', 'circular/profle.png', 'Nomina Timbrada segÃºn lo establecido por el SAT', '', 'nomina');
INSERT INTO `constructor_app` VALUES ('10', 'Inventarios', '../inventarios', '', 'circular/dolly.png', 'Control de movimiento de mercancia', '', 'inventarios');
INSERT INTO `constructor_app` VALUES ('11', 'Fletes', '../fletes', '', '/circular/truck.png', 'Carta porte, para empresas de transporte de mercancï¿½as', '', 'fletes');
INSERT INTO `constructor_app` VALUES ('13', 'Facturacion ElectrÃ³nica', '../facturacion', 'facturacion', 'circular/document.png', 'Cumpliendo los requisitos del SAT, sistema para crear factura electronica', '', 'facturacion');
INSERT INTO `constructor_app` VALUES ('14', 'Encuestas', '../encuestas', '', 'circular/pie_chart.png', 'Encuestas en linea', '', 'encuestas');
INSERT INTO `constructor_app` VALUES ('15', 'Maquinitas', '../maquinitas', '', 'circular/gamecontroller.png', 'Gestion de cortes de las maquinas de videojuegos', '', 'maquinitas');
INSERT INTO `constructor_app` VALUES ('16', 'Citas', '../citas', '', 'circular/calendar.png', 'Control de citas', '', 'citas');
INSERT INTO `constructor_app` VALUES ('17', 'CxP y CxC', '../cxp_cxc', '', 'circular/money.png', 'Cuentas por Cobrar y Cuentas por Pagar', '', 'cxp_cxc');
INSERT INTO `constructor_app` VALUES ('18', 'CRM', '../clientes', '', 'circular/contacts.png', 'Gestion de relaciï¿½n con los clientes', '', 'clientes');
INSERT INTO `constructor_app` VALUES ('19', 'Contabilidad', '../contabilidad', '', 'circular/calculator.png', 'Balance general, estado de resultados...', '', 'contabilidad');
INSERT INTO `constructor_app` VALUES ('20', 'Renta de Rockolas', '../rockolas', '', 'circular/speaker.png', 'Sistema de renta de Rockolas, (rutas, citas, recoleccion, pagos)', '', 'rockolas');
INSERT INTO `constructor_app` VALUES ('21', 'Taller de Servicio', '../taller', '', 'circular/tools.png', 'Sistema para talleres (recepcion, reparacion, mano de obra, materia prima)', '', 'taller');
INSERT INTO `constructor_app` VALUES ('22', 'Criadero', '../criadero', '', 'circular/rabbit.png', 'Desde el nacimiento de la camada hasta la venta de la carne.', '', 'criadero');
INSERT INTO `constructor_app` VALUES ('23', 'Constructor', '../constructor2', '', '/circular/roadblock.png', 'Herramienta para crear catalogos para este ERP', '', 'constructor');

-- ----------------------------
-- Table structure for `constructor_elemento_catalogo`
-- ----------------------------
DROP TABLE IF EXISTS `constructor_elemento_catalogo`;
CREATE TABLE `constructor_elemento_catalogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `esDefault` char(255) DEFAULT NULL,
  `extras` char(255) DEFAULT NULL,
  `campo` char(255) DEFAULT NULL,
  `llave` char(255) DEFAULT NULL,
  `esNulo` char(255) DEFAULT NULL,
  `tipo` char(255) DEFAULT NULL,
  `componente` char(255) DEFAULT NULL,
  `comp_config` text,
  `fk_catalogo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_catalogo` (`fk_catalogo`),
  CONSTRAINT `fk_catalogo` FOREIGN KEY (`fk_catalogo`) REFERENCES `system_catalogos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of constructor_elemento_catalogo
-- ----------------------------
INSERT INTO `constructor_elemento_catalogo` VALUES ('58', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('59', '', '', 'titulo', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Titulo\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('60', '', '', 'autor', '', 'YES', 'text', 'Text Input', '{\"etiqueta\":\"Autor\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('61', '', '', 'contenido', '', 'YES', 'text', 'Text Input', '{\"etiqueta\":\"Contenido\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('62', '', '', 'fk_categoria_pagina', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Categoria\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"108\",\"campo_a_mostrar\":\"nombre\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('63', '', '', 'fecha_creacion', '', 'YES', 'datetime', 'Text Input', '{\"etiqueta\":\"Fecha Creacion\",\"ayuda\":\"\",\"requerido\":\"\",\"oculto\":\"1\",\"editable\":\"\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('64', '', '', 'ultima_edicion', '', 'YES', 'datetime', 'Text Input', '{\"etiqueta\":\"\",\"ayuda\":\"\",\"requerido\":\"\",\"oculto\":\"\",\"editable\":\"\"}', '40');
INSERT INTO `constructor_elemento_catalogo` VALUES ('791', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('792', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\" }', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('793', '', '', 'icono', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Icono\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\" }', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('794', '', '', 'nombre_interno', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre_interno\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\" }', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('795', '', '', 'ruta_base', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Ruta_base\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\" }', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('796', '', '', 'orden', '', 'YES', 'int(11)', 'Text Input', '{\"etiqueta\":\"Orden\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\" }', '32');
INSERT INTO `constructor_elemento_catalogo` VALUES ('815', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('816', '', '', 'username', 'UNI', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Username\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('817', '', '', 'pass', '', 'YES', 'text', 'Text Input', '{\"etiqueta\":\"Pass\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('818', '', '', 'email', 'UNI', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Email\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('819', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('820', '', '', 'ultima_conexion', '', 'YES', 'datetime', 'Text Input', '{\"etiqueta\":\"Ultima_conexion\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('821', '', '', 'creado', '', 'YES', 'datetime', 'Text Input', '{\"etiqueta\":\"Creado\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('822', '', '', 'fk_rol', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Rol\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"116\",\"campo_a_mostrar\":\"nombre\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('823', '', '', 'ip', '', 'NO', 'char(50)', 'Text Input', '{\"etiqueta\":\"Ip\",\"ayuda\":\"\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '18');
INSERT INTO `constructor_elemento_catalogo` VALUES ('984', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('985', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('986', '', '', 'ubicacion', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Ubicacion\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Ubicacion\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('987', '', '', 'logo', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Logo\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Logo\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('988', '', '', 'favicon', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Favicon\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Favicon\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('989', '', '', 'descripcion', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Descripcion\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Descripcion\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('990', '', '', 'tags', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Tags\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Tags\" }', '94');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1086', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1087', '', '', 'titulo', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Titulo\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Titulo\" }', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1088', '', '', 'target', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Target\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Target\" }', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1089', '', '', 'es_menu_externo', '', 'YES', 'int(1)', 'Text Input', '{\"etiqueta\":\"Es_menu_externo\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Es_menu_externo\" }', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1090', '', '', 'icon', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Icon\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Icon\" }', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1091', '', '', 'fk_menu', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Padre\",\"ayuda\":\"Menu Padre\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"109\",\"campo_a_mostrar\":\"titulo\"}', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1092', '', '', 'fk_app', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Aplicacion\",\"ayuda\":\"Aplicacion\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"94\",\"campo_a_mostrar\":\"nombre\"}', '109');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1097', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '108');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1098', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '108');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1099', '', '', 'fk_categoria', '', 'NO', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Padre\",\"ayuda\":\"Categoria Padre\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"108\",\"campo_a_mostrar\":\"nombre\"}', '108');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1100', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '111');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1101', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '111');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1102', '', '', 'bandera', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Bandera\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Bandera\" }', '111');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1103', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '112');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1104', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '112');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1105', '', '', 'fk_pais', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Pais\",\"ayuda\":\"Pais al que pertenece este estado\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"111\",\"campo_a_mostrar\":\"nombre\"}', '112');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1106', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '113');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1107', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '113');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1108', '', '', 'clave_sepomex', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Clave Sepomex\",\"ayuda\":\"Clave Asignada por Servicos Postales Mexicanos\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '113');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1109', '', '', 'fk_estado', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Estado\",\"ayuda\":\"Estado al que pertenece el municipio\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"112\",\"campo_a_mostrar\":\"nombre\"}', '113');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1114', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1115', '', '', 'nombre', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1116', '', '', 'telefonos', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Telefonos\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Telefonos\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1117', '', '', 'logo', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Logo\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Logo\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1118', '', '', 'sitio_web', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Sitio Web\",\"ayuda\":\"Sitio web de la empresa\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1119', '', '', 'actividad', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Actividad\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Actividad\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1120', '', '', 'RFC', '', 'NO', 'char(1)', 'Text Input', '{\"etiqueta\":\"RFC\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"RFC\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1121', '', '', 'fk_pais', '', 'NO', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Pais\",\"ayuda\":\"Pais\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"111\",\"campo_a_mostrar\":\"nombre\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1122', '', '', 'fk_estado', '', 'NO', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Estado\",\"ayuda\":\"Estado\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"112\",\"campo_a_mostrar\":\"nombre\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1123', '', '', 'fk_municipio', '', 'NO', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Municipios\",\"ayuda\":\"Municipio\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"113\",\"campo_a_mostrar\":\"nombre\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1124', '', '', 'localidad', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Localidad\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Localidad\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1125', '', '', 'referencia', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Referencia\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Referencia\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1126', '', '', 'calle', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Calle\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Calle\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1127', '', '', 'numero_exterior', '', 'NO', 'char(50)', 'Text Input', '{\"etiqueta\":\"Numero Exterior\",\"ayuda\":\"Numero Exterior\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1128', '', '', 'numero_interior', '', 'NO', 'char(50)', 'Text Input', '{\"etiqueta\":\"Numero Interior\",\"ayuda\":\"Numero Interior\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1129', '', '', 'colonia', '', 'NO', 'char(255)', 'Text Input', '{\"etiqueta\":\"Colonia\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Colonia\" }', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1130', '', '', 'codigo_postal', '', 'NO', 'char(50)', 'Text Input', '{\"etiqueta\":\"Codigo Postal\",\"ayuda\":\"Codigo Postal\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1131', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Id\" }', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1132', '', '', 'host', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Host\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Host\" }', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1133', '', '', 'db_name', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Db_name\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Db_name\" }', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1134', '', '', 'user', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"User\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"User\" }', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1135', '', '', 'pass', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Pass\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Pass\" }', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1136', '', '', 'fk_empresa', '', 'YES', 'int(11)', 'Text Input', '{\"etiqueta\":\"Empresa\",\"ayuda\":\"Empresa\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '115');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1137', '', '', 'conexion', '', '', '', 'Tabla', '{\"titulo\":\"Conexion\",\"ayuda\":\"Base de datos de la empersa\",\"editable\":\"1\",\"target\":\"115\",\"llave_foranea\":\"fk_empresa\",\"config_tabla\":\"[{\\\"id\\\":\\\"1131\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"auto_increment\\\",\\\"campo\\\":\\\"id\\\",\\\"llave\\\":\\\"PRI\\\",\\\"esNulo\\\":\\\"NO\\\",\\\"tipo\\\":\\\"int(11)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"Id\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"Id\\\\\\\" }\\\",\\\"fk_catalogo\\\":\\\"115\\\"},{\\\"id\\\":\\\"1132\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"\\\",\\\"campo\\\":\\\"host\\\",\\\"llave\\\":\\\"\\\",\\\"esNulo\\\":\\\"YES\\\",\\\"tipo\\\":\\\"char(255)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"Host\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"Host\\\\\\\" }\\\",\\\"fk_catalogo\\\":\\\"115\\\"},{\\\"id\\\":\\\"1133\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"\\\",\\\"campo\\\":\\\"db_name\\\",\\\"llave\\\":\\\"\\\",\\\"esNulo\\\":\\\"YES\\\",\\\"tipo\\\":\\\"char(255)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"Db_name\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"Db_name\\\\\\\" }\\\",\\\"fk_catalogo\\\":\\\"115\\\"},{\\\"id\\\":\\\"1134\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"\\\",\\\"campo\\\":\\\"user\\\",\\\"llave\\\":\\\"\\\",\\\"esNulo\\\":\\\"YES\\\",\\\"tipo\\\":\\\"char(255)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"User\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"User\\\\\\\" }\\\",\\\"fk_catalogo\\\":\\\"115\\\"},{\\\"id\\\":\\\"1135\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"\\\",\\\"campo\\\":\\\"pass\\\",\\\"llave\\\":\\\"\\\",\\\"esNulo\\\":\\\"YES\\\",\\\"tipo\\\":\\\"char(255)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"Pass\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"Pass\\\\\\\" }\\\",\\\"fk_catalogo\\\":\\\"115\\\"},{\\\"id\\\":\\\"1136\\\",\\\"esDefault\\\":\\\"\\\",\\\"extras\\\":\\\"\\\",\\\"campo\\\":\\\"fk_empresa\\\",\\\"llave\\\":\\\"\\\",\\\"esNulo\\\":\\\"YES\\\",\\\"tipo\\\":\\\"int(11)\\\",\\\"componente\\\":\\\"Text Input\\\",\\\"comp_config\\\":\\\"{\\\\\\\"etiqueta\\\\\\\":\\\\\\\"Empresa\\\\\\\",\\\\\\\"ayuda\\\\\\\":\\\\\\\"Empresa\\\\\\\",\\\\\\\"requerido\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"oculto\\\\\\\":\\\\\\\"1\\\\\\\",\\\\\\\"editable\\\\\\\":\\\\\\\"1\\\\\\\"}\\\",\\\"fk_catalogo\\\":\\\"115\\\"}]\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1138', '', '', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '116');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1139', '', '', 'nombre', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '116');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1140', '', '', 'descripcion', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Descripción\",\"ayuda\":\"Descripción\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '116');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1141', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '117');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1142', '', '', 'fk_usuario', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Usuario\",\"ayuda\":\"Usuario\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"18\",\"campo_a_mostrar\":\"nombre\"}', '117');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1143', '', '', 'fk_empresa', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Empresa\",\"ayuda\":\"Empresa\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"114\",\"campo_a_mostrar\":\"nombre\"}', '117');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1144', '', '', 'status', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Status\",\"ayuda\":\"Status\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"118\",\"campo_a_mostrar\":\"nombre\"}', '117');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1145', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '118');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1146', '', '', 'nombre', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '118');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1147', '', '', 'descripcion', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Descripcion\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Descripcion\" }', '118');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1148', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '119');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1149', '', '', 'nombre', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '119');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1150', '', '', 'descripcion', '', 'YES', 'varchar(255)', 'Text Input', '{\"etiqueta\":\"Descripcion\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Descripcion\" }', '119');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1151', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '120');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1152', '', '', 'fk_empresa', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"Empresa\",\"ayuda\":\"Empresa\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"114\",\"campo_a_mostrar\":\"nombre\"}', '120');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1153', '', '', 'fk_app', '', 'YES', 'int(11)', 'Combo Box', '{\"etiqueta\":\"App\",\"ayuda\":\"App\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\",\"target\":\"94\",\"campo_a_mostrar\":\"nombre\"}', '120');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1154', '', '', 'status', '', 'YES', 'int(11)', 'Text Input', '{\"etiqueta\":\"Status\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Status\" }', '120');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1155', '', '', 'icon', '', '', '', 'Text Input', '{\"etiqueta\":\"Icono\",\"ayuda\":\"Icono\",\"requerido\":\"0\",\"oculto\":\"0\",\"editable\":\"1\"}', '114');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1156', '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{\"etiqueta\":\"Id\",\"ayuda\":\"Id\",\"requerido\":\"0\",\"oculto\":\"1\",\"editable\":\"1\"}', '121');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1157', '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Nombre\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Nombre\" }', '121');
INSERT INTO `constructor_elemento_catalogo` VALUES ('1158', '', '', 'abreviacion', '', 'YES', 'char(255)', 'Text Input', '{\"etiqueta\":\"Abreviacion\",\"requerido\":\"0\",\"editable\":\"1\",\"oculto\":\"0\",\"ayuda\":\"Abreviacion\" }', '121');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` char(255) DEFAULT NULL,
  `target` char(255) DEFAULT NULL,
  `es_menu_externo` int(1) DEFAULT NULL,
  `icon` char(255) DEFAULT NULL,
  `fk_menu` int(11) DEFAULT NULL,
  `fk_app` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', 'Ventas', 'ventas/ventas/buscar', '0', '', '0', '8', null);
INSERT INTO `system_menu` VALUES ('2', 'Conceptos', 'ventas/conceptos/buscar', '0', '', '0', '8', null);
INSERT INTO `system_menu` VALUES ('3', 'Clientes', 'ventas/clientes/buscar', '0', '', '0', '8', null);
INSERT INTO `system_menu` VALUES ('4', 'Recibos', 'nomina/recibos/buscar', '0', '', '1', '9', null);
INSERT INTO `system_menu` VALUES ('5', 'Empresas', 'erp/empresas/buscar', '0', '', '0', '10', null);
INSERT INTO `system_menu` VALUES ('6', 'Unidades de Medida', 'ventas/unidades_de_medida/buscar', '0', '', '1', '8', null);
INSERT INTO `system_menu` VALUES ('7', 'Registrar Camada', 'criadero/camadas/nuevo', '0', '', '0', '22', '10');
INSERT INTO `system_menu` VALUES ('8', 'Registrar Cria', 'criadero/crias/nuevo', '0', '', '0', '22', '20');
INSERT INTO `system_menu` VALUES ('9', 'Segimiento', 'criadero/seguimiento/nuevo', '0', '', '0', '22', '30');
INSERT INTO `system_menu` VALUES ('10', 'Crias', 'criadero/crias/buscar', '0', '', '0', '22', '70');
INSERT INTO `system_menu` VALUES ('11', 'Dashboard', 'criadero/paginas/dashboard', '0', '', '0', '22', '0');
INSERT INTO `system_menu` VALUES ('12', 'Baja en Camada', 'criadero/camadas/baja', '0', '', '0', '22', '40');
INSERT INTO `system_menu` VALUES ('13', 'Registrar Embarazo', 'criadero/reproduccion/embarazo', '0', '', '0', '22', '50');
INSERT INTO `system_menu` VALUES ('14', 'Registrar Sacrificios', 'criadero/sacrificio/nuevo', '0', '', '0', '22', '60');
INSERT INTO `system_menu` VALUES ('15', 'Aplicaciones', 'constructor2/aplicaciones/buscar', '0', '', '0', '23', null);
INSERT INTO `system_menu` VALUES ('16', 'Catalogo', 'constructor2/catalogos/buscar', '0', '', '0', '23', null);
INSERT INTO `system_menu` VALUES ('17', 'Componentes', 'constructor2/componentes/buscar', '0', '0', '0', '23', null);
