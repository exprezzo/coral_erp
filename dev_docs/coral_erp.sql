-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2014 a las 01:53:28
-- Versión del servidor: 5.6.11
-- Versión de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `coral_erp`
--
CREATE DATABASE IF NOT EXISTS `coral_erp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `coral_erp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constructor_app`
--

CREATE TABLE IF NOT EXISTS `constructor_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `ubicacion` char(255) DEFAULT NULL,
  `logo` char(255) DEFAULT NULL,
  `favicon` char(255) DEFAULT NULL,
  `descripcion` char(255) DEFAULT NULL,
  `tags` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `constructor_app`
--

INSERT INTO `constructor_app` (`id`, `nombre`, `ubicacion`, `logo`, `favicon`, `descripcion`, `tags`) VALUES
(8, 'Ventas', '', '', 'ventas_ico.png', '', ''),
(9, 'Nomina', '', '', 'nomina_ico.png', '', ''),
(10, 'Erp', '/erp', '', 'erp_ico.png', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constructor_db_config`
--

CREATE TABLE IF NOT EXISTS `constructor_db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` char(255) DEFAULT NULL,
  `db_name` char(255) DEFAULT NULL,
  `user` char(255) DEFAULT NULL,
  `pass` char(255) DEFAULT NULL,
  `fk_app` int(11) DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `constructor_db_config`
--

INSERT INTO `constructor_db_config` (`id`, `host`, `db_name`, `user`, `pass`, `fk_app`, `fk_usuario`) VALUES
(1, 'localhost', 'nominas', 'root', '', 0, 144),
(2, 'localhost', 'transportes', 'root', '', 5, 1),
(3, 'localhost', 'maquinas', 'root', '', 6, 2),
(4, 'localhot', 'nominas', 'root', '', 7, 3),
(5, 'localhost', 'soporte', 'root', '', 4, 4),
(6, 'localhot', 'constructor', 'root', '', 2, 5),
(7, '', '', '', '', 8, 6),
(8, '', '', '', '', 9, 7),
(9, 'localhost', 'octopus_erp_app_cesar', 'root', '', 10, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constructor_elemento_catalogo`
--

CREATE TABLE IF NOT EXISTS `constructor_elemento_catalogo` (
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
  KEY `fk_catalogo` (`fk_catalogo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1097 ;

--
-- Volcado de datos para la tabla `constructor_elemento_catalogo`
--

INSERT INTO `constructor_elemento_catalogo` (`id`, `esDefault`, `extras`, `campo`, `llave`, `esNulo`, `tipo`, `componente`, `comp_config`, `fk_catalogo`) VALUES
(58, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"","requerido":"0","oculto":"1","editable":"1"}', 40),
(59, '', '', 'titulo', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Titulo","ayuda":"","requerido":"0","oculto":"1","editable":"1"}', 40),
(60, '', '', 'autor', '', 'YES', 'text', 'Combo Box', '{"etiqueta":"Autor","ayuda":"","requerido":"0","oculto":"0","editable":"1","target":"18","campo_a_mostrar":"nombre"}', 40),
(61, '', '', 'contenido', '', 'YES', 'text', 'Text Input', '{"etiqueta":"Contenido","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 40),
(62, '', '', 'fk_categoria_pagina', '', 'YES', 'int(11)', 'Combo Box', '{"etiqueta":"Categoria","ayuda":"","requerido":"0","oculto":"0","editable":"1","target":"108","campo_a_mostrar":"nombre"}', 40),
(63, '', '', 'fecha_creacion', '', 'YES', 'datetime', 'Text Input', '{"etiqueta":"Fecha Creacion","ayuda":"","requerido":"","oculto":"1","editable":""}', 40),
(64, '', '', 'ultima_edicion', '', 'YES', 'datetime', 'Text Input', '{"etiqueta":"","ayuda":"","requerido":"","oculto":"","editable":""}', 40),
(65, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"","requerido":"0","oculto":"1","editable":"1"}', 43),
(66, '', '', 'nick', 'UNI', 'NO', 'char(255)', 'Text Input', '{"etiqueta":"Nick","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(67, '', '', 'pass', '', 'YES', 'blob', 'Text Input', '{"etiqueta":"Pass","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(68, '', '', 'email', 'UNI', 'NO', 'char(255)', 'Text Input', '{"etiqueta":"Email","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(69, '1', '', 'rol', '', 'YES', 'int(11)', 'Text Input', '{"etiqueta":"Rol","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(70, '', '', 'fbid', '', 'YES', 'int(11)', 'Text Input', '{"etiqueta":"Fbid","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(71, '0', '', 'name', '', 'NO', 'char(255)', 'Text Input', '{"etiqueta":"Name","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(72, '', '', 'picture', '', 'YES', 'varchar(255)', 'Text Input', '{"etiqueta":"Picture","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(73, '', '', 'originalName', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"OriginalName","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 43),
(74, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"","requerido":"0","oculto":"1","editable":"1"}', 45),
(75, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 45),
(76, '', '', 'fk_categoria_padre', '', 'YES', 'int(11)', 'Text Input', '{"etiqueta":"Fk_categoria_padre","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 45),
(77, '0', '', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","requerido":"0","editable":"1","oculto":"0" }', 46),
(78, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0" }', 46),
(79, '', '', 'fk_um', '', 'YES', 'int(255)', 'Combo Box', '{"etiqueta":"Fk_um","requerido":"0","oculto":"0","editable":"1","target":"2","campo_a_mostrar":"abreviacion"}', 46),
(80, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","requerido":"0","editable":"1","oculto":"0" }', 44),
(81, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0" }', 44),
(82, '', '', 'abreviacion', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Abreviacion","requerido":"0","editable":"1","oculto":"0" }', 44),
(93, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","requerido":"0","editable":"1","oculto":"0" }', 47),
(94, '', '', 'serie', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Serie","requerido":"0","editable":"1","oculto":"0" }', 47),
(95, '', '', 'folio', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Folio","requerido":"0","editable":"1","oculto":"0" }', 47),
(96, '', '', 'notas', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Notas","requerido":"0","editable":"1","oculto":"0" }', 47),
(97, '', '', 'fecha', '', 'YES', 'datetime', 'Text Input', '{"etiqueta":"Fecha","requerido":"0","editable":"1","oculto":"0" }', 47),
(104, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","requerido":"0","editable":"1","oculto":"0" }', 48),
(105, '', '', 'fk_concepto', '', 'YES', 'int(11)', 'Combo Box', '{"etiqueta":"Fk_concepto","requerido":"0","oculto":"0","editable":"1","target":"6","campo_a_mostrar":"nombre"}', 48),
(106, '', '', 'cantidad', '', 'YES', 'decimal(18,6)', 'Text Input', '{"etiqueta":"Cantidad","requerido":"0","editable":"1","oculto":"0" }', 48),
(107, '', '', 'fk_um', '', 'YES', 'decimal(18,6)', 'Combo Box', '{"etiqueta":"Fk_um","requerido":"0","oculto":"0","editable":"1","target":"2","campo_a_mostrar":"nombre"}', 48),
(108, '', '', 'precio_unitario', '', 'YES', 'decimal(18,6)', 'Text Input', '{"etiqueta":"Precio_unitario","requerido":"0","editable":"1","oculto":"0" }', 48),
(109, '', '', 'importe', '', 'YES', 'decimal(18,6)', 'Text Input', '{"etiqueta":"Importe","requerido":"0","editable":"1","oculto":"0" }', 48),
(110, '', '', 'fk_cotizacion', '', 'YES', 'int(11)', 'Combo Box', '{"etiqueta":"Fk_cotizacion","requerido":"0","oculto":"0","editable":"1","target":"7","campo_a_mostrar":"folio"}', 48),
(111, '', '', 'conceptos', '', '', '', 'Tabla', '{"titulo":"Conceptos","editable":"","target":"48","llave_foranea":"fk_cotizacion","config_tabla":"[{\\"id\\":\\"104\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"auto_increment\\",\\"campo\\":\\"id\\",\\"llave\\":\\"PRI\\",\\"esNulo\\":\\"NO\\",\\"tipo\\":\\"int(11)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Id\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\" }\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"105\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"fk_concepto\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"int(11)\\",\\"componente\\":\\"Combo Box\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Fk_concepto\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"target\\\\\\":\\\\\\"6\\\\\\",\\\\\\"campo_a_mostrar\\\\\\":\\\\\\"nombre\\\\\\"}\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"106\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"cantidad\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"decimal(18,6)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Cantidad\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\" }\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"107\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"fk_um\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"decimal(18,6)\\",\\"componente\\":\\"Combo Box\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Fk_um\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"target\\\\\\":\\\\\\"2\\\\\\",\\\\\\"campo_a_mostrar\\\\\\":\\\\\\"nombre\\\\\\"}\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"108\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"precio_unitario\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"decimal(18,6)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Precio_unitario\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\" }\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"109\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"importe\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"decimal(18,6)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Importe\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\" }\\",\\"fk_catalogo\\":\\"48\\"},{\\"id\\":\\"110\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"fk_cotizacion\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"int(11)\\",\\"componente\\":\\"Combo Box\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Fk_cotizacion\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"target\\\\\\":\\\\\\"7\\\\\\",\\\\\\"campo_a_mostrar\\\\\\":\\\\\\"folio\\\\\\"}\\",\\"fk_catalogo\\":\\"48\\"}]"}', 47),
(791, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","requerido":"0","oculto":"1","editable":"1"}', 32),
(792, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0" }', 32),
(793, '', '', 'icono', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Icono","requerido":"0","editable":"1","oculto":"0" }', 32),
(794, '', '', 'nombre_interno', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre_interno","requerido":"0","editable":"1","oculto":"0" }', 32),
(795, '', '', 'ruta_base', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Ruta_base","requerido":"0","editable":"1","oculto":"0" }', 32),
(796, '', '', 'orden', '', 'YES', 'int(11)', 'Text Input', '{"etiqueta":"Orden","requerido":"0","editable":"1","oculto":"0" }', 32),
(815, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"","requerido":"0","oculto":"1","editable":"1"}', 18),
(816, '', '', 'username', 'UNI', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Username","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(817, '', '', 'pass', '', 'YES', 'text', 'Text Input', '{"etiqueta":"Pass","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(818, '', '', 'email', 'UNI', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Email","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(819, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(820, '', '', 'ultima_conexion', '', 'YES', 'datetime', 'Text Input', '{"etiqueta":"Ultima_conexion","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(821, '', '', 'creado', '', 'YES', 'datetime', 'Text Input', '{"etiqueta":"Creado","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(822, '', '', 'fk_rol', '', 'YES', 'int(11)', 'Text Input', '{"etiqueta":"Fk_rol","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(823, '', '', 'ip', '', 'NO', 'char(50)', 'Text Input', '{"etiqueta":"Ip","ayuda":"","requerido":"0","oculto":"0","editable":"1"}', 18),
(984, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 94),
(985, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0","ayuda":"Nombre" }', 94),
(986, '', '', 'ubicacion', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Ubicacion","requerido":"0","editable":"1","oculto":"0","ayuda":"Ubicacion" }', 94),
(987, '', '', 'logo', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Logo","requerido":"0","editable":"1","oculto":"0","ayuda":"Logo" }', 94),
(988, '', '', 'favicon', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Favicon","requerido":"0","editable":"1","oculto":"0","ayuda":"Favicon" }', 94),
(989, '', '', 'descripcion', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Descripcion","requerido":"0","editable":"1","oculto":"0","ayuda":"Descripcion" }', 94),
(990, '', '', 'tags', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Tags","requerido":"0","editable":"1","oculto":"0","ayuda":"Tags" }', 94),
(991, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 95),
(992, '', '', 'host', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Host","requerido":"0","editable":"1","oculto":"0","ayuda":"Host" }', 95),
(993, '', '', 'db_name', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"DB Name","ayuda":"Nombre de la base de datos","requerido":"0","oculto":"0","editable":"1"}', 95),
(994, '', '', 'user', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"User","requerido":"0","editable":"1","oculto":"0","ayuda":"User" }', 95),
(995, '', '', 'pass', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Pass","requerido":"0","editable":"1","oculto":"0","ayuda":"Pass" }', 95),
(997, '', '', 'conexiones', '', '', '', 'Tabla', '{"titulo":"Conexiones","ayuda":"Conexiones","editable":"1","target":"95","llave_foranea":"fk_app","config_tabla":"[{\\"id\\":\\"991\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"auto_increment\\",\\"campo\\":\\"id\\",\\"llave\\":\\"PRI\\",\\"esNulo\\":\\"NO\\",\\"tipo\\":\\"int(11)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Id\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"Id\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"1\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\"}\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"992\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"host\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"char(255)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Host\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"Host\\\\\\" }\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"993\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"db_name\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"char(255)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"DB Name\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"Nombre de la base de datos\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\"}\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"994\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"user\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"char(255)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"User\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"User\\\\\\" }\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"995\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"pass\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"YES\\",\\"tipo\\":\\"char(255)\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Pass\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"Pass\\\\\\" }\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"998\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"fk_app\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"\\",\\"tipo\\":\\"\\",\\"componente\\":\\"Text Input\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"App\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"1\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\"}\\",\\"fk_catalogo\\":\\"95\\"},{\\"id\\":\\"1096\\",\\"esDefault\\":\\"\\",\\"extras\\":\\"\\",\\"campo\\":\\"fk_user\\",\\"llave\\":\\"\\",\\"esNulo\\":\\"\\",\\"tipo\\":\\"\\",\\"componente\\":\\"Combo Box\\",\\"comp_config\\":\\"{\\\\\\"etiqueta\\\\\\":\\\\\\"Usuario\\\\\\",\\\\\\"ayuda\\\\\\":\\\\\\"user\\\\\\",\\\\\\"requerido\\\\\\":\\\\\\"1\\\\\\",\\\\\\"oculto\\\\\\":\\\\\\"0\\\\\\",\\\\\\"editable\\\\\\":\\\\\\"1\\\\\\",\\\\\\"target\\\\\\":\\\\\\"18\\\\\\",\\\\\\"campo_a_mostrar\\\\\\":\\\\\\"nombre\\\\\\"}\\",\\"fk_catalogo\\":\\"95\\"}]"}', 94),
(998, '', '', 'fk_app', '', '', '', 'Text Input', '{"etiqueta":"App","ayuda":"","requerido":"1","oculto":"1","editable":"1"}', 95),
(999, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 96),
(1000, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0","ayuda":"Nombre" }', 96),
(1001, '', '', 'ruta', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Ruta","requerido":"0","editable":"1","oculto":"0","ayuda":"Ruta" }', 96),
(1080, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 42),
(1081, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0","ayuda":"Nombre" }', 42),
(1082, '', '', 'tabla', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Tabla","requerido":"0","editable":"1","oculto":"0","ayuda":"Tabla" }', 42),
(1083, '', '', 'llave_primaria', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Llave_primaria","requerido":"0","editable":"1","oculto":"0","ayuda":"Llave_primaria" }', 42),
(1084, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 108),
(1085, '', '', 'nombre', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Nombre","requerido":"0","editable":"1","oculto":"0","ayuda":"Nombre" }', 108),
(1086, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 109),
(1087, '', '', 'titulo', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Titulo","requerido":"0","editable":"1","oculto":"0","ayuda":"Titulo" }', 109),
(1088, '', '', 'target', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Target","requerido":"0","editable":"1","oculto":"0","ayuda":"Target" }', 109),
(1089, '', '', 'es_menu_externo', '', 'YES', 'int(1)', 'Text Input', '{"etiqueta":"Es_menu_externo","requerido":"0","editable":"1","oculto":"0","ayuda":"Es_menu_externo" }', 109),
(1090, '', '', 'icon', '', 'YES', 'char(255)', 'Text Input', '{"etiqueta":"Icon","requerido":"0","editable":"1","oculto":"0","ayuda":"Icon" }', 109),
(1091, '', '', 'fk_menu', '', 'YES', 'int(11)', 'Combo Box', '{"etiqueta":"Padre","ayuda":"Menu Padre","requerido":"0","oculto":"0","editable":"1","target":"109","campo_a_mostrar":"titulo"}', 109),
(1092, '', '', 'fk_app', '', 'YES', 'int(11)', 'Combo Box', '{"etiqueta":"Aplicacion","ayuda":"Aplicacion","requerido":"0","oculto":"0","editable":"1","target":"94","campo_a_mostrar":"nombre"}', 109),
(1093, '', 'auto_increment', 'id', 'PRI', 'NO', 'int(11)', 'Text Input', '{"etiqueta":"Id","ayuda":"Id","requerido":"0","oculto":"1","editable":"1"}', 110),
(1094, '', '', 'fk_usuario', '', 'NO', 'int(11)', 'Combo Box', '{"etiqueta":"Usuario","ayuda":"Usuario","requerido":"0","oculto":"0","editable":"1","target":"18","campo_a_mostrar":"nombre"}', 110),
(1095, '', '', 'fk_app', '', 'NO', 'int(11)', 'Combo Box', '{"etiqueta":"Aplicacion","ayuda":"Aplicacion","requerido":"0","oculto":"0","editable":"1","target":"94","campo_a_mostrar":"nombre"}', 110),
(1096, '', '', 'fk_usuario', '', '', '', 'Combo Box', '{"etiqueta":"Usuario","ayuda":"Usuario","requerido":"1","oculto":"0","editable":"1","target":"18","campo_a_mostrar":"nombre"}', 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constructor_tabla`
--

CREATE TABLE IF NOT EXISTS `constructor_tabla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_empresa`
--

CREATE TABLE IF NOT EXISTS `erp_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) NOT NULL,
  `telefonos` char(255) NOT NULL,
  `logo` char(255) NOT NULL,
  `sitios_web` char(255) NOT NULL,
  `actividad` char(255) NOT NULL,
  `RFC` char(1) NOT NULL,
  `fk_pais` int(11) NOT NULL,
  `fk_estado` int(11) NOT NULL,
  `fk_municipio` int(11) NOT NULL,
  `localidad` char(255) NOT NULL,
  `referencia` char(255) NOT NULL,
  `calle` char(255) NOT NULL,
  `numero_exterior` char(50) NOT NULL,
  `numero_interior` char(50) NOT NULL,
  `colonia` char(255) NOT NULL,
  `codigo_postal` char(50) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_usuario_aplicacion`
--

CREATE TABLE IF NOT EXISTS `erp_usuario_aplicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) NOT NULL,
  `fk_app` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_acl`
--

CREATE TABLE IF NOT EXISTS `system_acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) DEFAULT NULL,
  `modulo` char(255) DEFAULT NULL,
  `controlador` char(255) DEFAULT NULL,
  `accion` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `system_acl`
--

INSERT INTO `system_acl` (`id`, `fk_user`, `modulo`, `controlador`, `accion`) VALUES
(2, 0, 'asdf', 'asdf', 'asfd'),
(3, 2, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_catalogos`
--

CREATE TABLE IF NOT EXISTS `system_catalogos` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Volcado de datos para la tabla `system_catalogos`
--

INSERT INTO `system_catalogos` (`id`, `fk_modulo`, `nombre`, `controlador`, `modelo`, `tabla`, `pk_tabla`, `icono`, `titulo_nuevo`, `titulo_edicion`, `titulo_busqueda`, `msg_creado`, `msg_actualizado`, `pregunta_eliminar`, `msg_eliminado`, `msg_cambios`, `campos_busqueda`) VALUES
(18, 8, 'Usuarios', 'usuarios', 'Usuario', 'system_usuarios', 'id', 'http://png.findicons.com/files/icons/1620/crystal_project/64/personal.png', 'Nuevo Usuario', '''Usuario: '' + getValorCampo(''nombre'')', 'Buscar Usuario', 'Usuario Creado', 'Usuario Actualizado', 'ï¿½Eliminar Usuario?', '', '', 'nick, email, name'),
(32, 2, 'Modulos', 'modulos', 'modulo', 'system_modulos', 'id', 'http://png.findicons.com/files/icons/1681/siena/48/puzzle_yellow.png', 'Nuevo Modulo', '''Modulo: '' + getValorCampo(''nombre'')', 'Modulos', 'Modulo Creado', 'Modulo Actualizado', '¿Eliminar Modulo?', '', '', ''),
(33, 2, 'Catalogos', 'catalogos', 'Catalogo', 'system_catalogos', 'id', 'http://png.findicons.com/files/icons/577/refresh_cl/48/windows_view_icon.png', 'Nuevo Catalogo', '''Catalogo: '' + getValorCampo(''nombre'')', '''Buscar Catalogos''', 'Catalogo Creado', 'Catalogo Actualizado', 'Eliminar Catalogo', 'Catalogo Eliminado', 'Ha hecho cambios en el catalogo,ï¿½Guardar antes de salir?', 'nombre'),
(40, 8, 'Paginas', 'paginas', 'pagina', 'system_pagina', 'id', 'default.png', 'Nueva Pagina', 'Pagina:  {titulo}', 'Buscar Paginas', 'Pagina Creada', 'Pagina Actualizada', 'Â¿Eliminar Pagina?', 'Pagina Eliminada', 'Desea Guardar los cambios', 'nombre'),
(41, 2, 'Elemento del Catalogo', 'elementos', 'elemento', 'constructor_elemento_catalogo', 'id', '', 'Nuevo Elemento', '''Editar Elemento''', 'Buscar Elemento', 'Elemento Creado', 'Elemento Actualizado', 'Â¿Eliminar Elemento?', 'Elemento Eliminado', 'Â¿Guardar Cambios del Elemento?', 'Field, componente'),
(42, 8, 'Modelo C', 'modelos', 'modeloc', 'system_modelos', 'id', '', 'Nuevo Modelo', '''Editando Modelo: ''+ getValorCampo(''nombre'')', 'Buscar Modelo', '', '', '', '', '', 'nombre'),
(43, 8, 'Autor', 'autores', 'autor', 'system_users', 'id', '', 'Nuevo Autor', 'Autor:  {name}', 'Busqueda de Autores', 'Autor Creado', 'Autor Actualizado', 'Â¿Eliminar?', 'Eliminado', 'cambios pendientes', 'name'),
(44, 2, 'UM', 'unidades', 'unidad', 'exp_um', 'id', '', 'Nueva Unidad de Medida', '''UM: '' +getValorCampo(''nombre'')', 'Buscar Unidades de Medida', 'UM creada', 'UM actualizada', 'Â¿Eliminar UM?', 'UM eliminada', 'Â¿Guardar los cambios?', 'nombre, abreviacion'),
(45, 8, 'Categoria', 'categorias', 'categoria', 'cms_categoria', 'id', '', 'Nueva Categoria', 'Categoria: {nombre}', 'Buscar Categoria', 'Categoria Creada', 'Categoria Actualizada', 'Â¿Eliminar Categoria?', '', '', 'nombre'),
(46, 2, 'Conceptos', 'conceptos', 'concepto', 'exp_concepto', 'id', '', 'Nuevo Concepto', '''Concepto: '' + getValorCampo(''nombre'')', 'Conceptos', 'Concepto Creado', 'Concepto Actualizado', 'Â¿Eliminar Concepto?', 'Concepto Eliminado', 'Â¿Guardar antes de salir?', 'nombre'),
(47, 2, 'Cotizacion', 'cotizaciones', 'cotizacion', 'exp_cotizacion', 'id', '', 'Nueva Cotizacion', '''Cotizacion: ''+getValorCampo(''serie'')+''  ''+getValorCampo(''folio'')', 'Cotizaciones', 'Cotizacion Creada', 'Cotizacion Actualizada', 'Â¿Eliminar Cotizacion?', 'Cotizacion Eliminada', '', ''),
(48, 2, 'concepto_cotizacion', 'conceptos_cotizacion', 'concepto_cotizacion', 'exp_conceptos_cotizacion', 'id', '', 'Nuevo Concepto de Cotizacion', '''Concepto: ''+getValorCampo(''fk_concepto'')', 'Conceptos de Cotizacion', 'Concepto Creado', 'Concepto Actualizado', 'Â¿Eliminar Concepto?', 'Concepto Eliminado', '', ''),
(94, 8, 'Aplicaciones', 'apps', 'app', 'constructor_app', 'id', '', 'Nueva App', 'Aplicacion: {nombre}', 'Aplicaciones', 'Aplicacion Creada', 'Aplicacion Actualizada', 'Â¿Eliminar Aplicacion?', 'Aplicacion Eliminada', '', ''),
(95, 8, 'Conexion', 'conexiones', 'conexion', 'constructor_db_config', 'id', '', 'Nueva Conexion', 'Conexion: {db_host} - {db_name}', 'Conexiones', 'Conexion Creada', 'Conexion Actualizada', '¿Eliminar?', 'Conexion Eliminada', '', ''),
(96, 2, 'Temas', 'temas', 'tema', 'system_tema', 'id', '', 'Nuevo Tema', 'Tema: {nombre}', 'Temas', 'Tema Creado', 'Tema Actualizado', 'Â¿Eliminar Tema?', 'Tema Eliminado', '', ''),
(108, 8, 'Categoria de Pagina', 'categorias_de_pagina', 'categoria_de_pagina', 'system_categoria_pagina', 'id', '', 'Nueva Categoria de Pagina', 'Categoria de Pagina: {nombre}', 'Buscar Categorias de Pagina', 'Categoria de Pagina Creada', 'Categoria de Pagina Actualizada', 'Â¿Eliminar Categoria de Pagina?', 'Categoria de Pagina Eliminada', '', ''),
(109, 8, 'Menu', 'menus', 'menu', 'system_menu', 'id', '', 'Nuevo Menu', 'Menu: {titulo}', 'Menus', 'Menu Creado', 'Menu Actualizado', '¿Eliminar Menu?', 'Menu Eliminado', '', ''),
(110, 8, 'Aplicaciones del Usuario', 'aplicaciones_del_usuario', 'aplicacion_usuario', 'erp_usuario_aplicacion', 'id', '', 'Nueva Aplicacion Para el Usuario', 'Aplicacion: {fk_app} -  {fk_usuario}', 'Aplicaciones de Usuarios', 'Aplicacion Instalada', 'Aplicacion Actualizada', '¿Desinstalar Aplicacion?', 'Aplicacion Desinstalada', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_categoria_pagina`
--

CREATE TABLE IF NOT EXISTS `system_categoria_pagina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `system_categoria_pagina`
--

INSERT INTO `system_categoria_pagina` (`id`, `nombre`) VALUES
(1, 'Publicas'),
(2, 'Inicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) DEFAULT NULL,
  `tema` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `system_config`
--

INSERT INTO `system_config` (`id`, `fk_user`, `tema`) VALUES
(1, 1, 'artic'),
(2, 20, 'artic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_menu`
--

CREATE TABLE IF NOT EXISTS `system_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` char(255) DEFAULT NULL,
  `target` char(255) DEFAULT NULL,
  `es_menu_externo` int(1) DEFAULT NULL,
  `icon` char(255) DEFAULT NULL,
  `fk_menu` int(11) DEFAULT NULL,
  `fk_app` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `system_menu`
--

INSERT INTO `system_menu` (`id`, `titulo`, `target`, `es_menu_externo`, `icon`, `fk_menu`, `fk_app`) VALUES
(1, 'Ventas', 'ventas/ventas/buscar', 0, '', 0, 8),
(2, 'Conceptos', 'ventas/conceptos/buscar', 0, '', 0, 8),
(3, 'Clientes', 'ventas/clientes/buscar', 0, '', 0, 8),
(4, 'Recibos', 'nomina/recibos/buscar', 0, '', 1, 9),
(5, 'Empresas', 'erp/empresas/buscar', 0, '', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_modelos`
--

CREATE TABLE IF NOT EXISTS `system_modelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `tabla` char(255) DEFAULT NULL,
  `llave_primaria` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `system_modelos`
--

INSERT INTO `system_modelos` (`id`, `nombre`, `tabla`, `llave_primaria`) VALUES
(1, 'autor', 'system_users', 'id'),
(2, 'unidad', 'exp_um', 'id'),
(3, 'producto', 'exp_concepto', 'id'),
(4, 'pagina', 'system_pagina', 'id'),
(5, 'categoria', 'cms_categoria', 'id'),
(6, 'concepto', 'exp_concepto', 'id'),
(7, 'cotizacion', 'exp_cotizacion', 'id');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_modulos`
--

CREATE TABLE IF NOT EXISTS `system_modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `icono` char(255) DEFAULT NULL,
  `nombre_interno` char(255) DEFAULT NULL,
  `ruta_base` char(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `system_modulos`
--

INSERT INTO `system_modulos` (`id`, `nombre`, `icono`, `nombre_interno`, `ruta_base`, `orden`) VALUES
(2, 'Constructor', 'http://png-1.findicons.com/files/icons/2003/business/64/shopping_full.png', 'constructor', '/', 0),
(8, 'Octopus Framework', '', 'sistema', '/', 0),
(9, 'Erp', '', 'erp', '/', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_pagina`
--

CREATE TABLE IF NOT EXISTS `system_pagina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` char(255) DEFAULT NULL,
  `autor` text,
  `contenido` text,
  `fk_categoria_pagina` int(11) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `ultima_edicion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `system_pagina`
--

INSERT INTO `system_pagina` (`id`, `titulo`, `autor`, `contenido`, `fk_categoria_pagina`, `fecha_creacion`, `ultima_edicion`) VALUES
(1, 'Cerritos', '144', 'asdfas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AAA', '1          ', 'BLA bla bla ble ble ble', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Un Titulo', '1', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Nueva Pagina', '1 ', '', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_tema`
--

CREATE TABLE IF NOT EXISTS `system_tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `ruta` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `system_tema`
--

INSERT INTO `system_tema` (`id`, `nombre`, `ruta`) VALUES
(1, 'Artic', 'http://cdn.wijmo.com/themes/arctic/jquery-wijmo.css'),
(2, 'Midnight', 'http://cdn.wijmo.com/themes/midnight/jquery-wijmo.css'),
(3, 'aristo', 'http://cdn.wijmo.com/themes/aristo/jquery-wijmo.css'),
(4, 'rocket', 'http://cdn.wijmo.com/themes/rocket/jquery-wijmo.css'),
(5, 'cobalt', 'http://cdn.wijmo.com/themes/cobalt/jquery-wijmo.css'),
(6, 'Sterling', 'http://cdn.wijmo.com/themes/sterling/jquery-wijmo.css'),
(7, 'Black Tie', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/black-tie/jquery-ui.css'),
(8, 'Blitzer', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/blitzer/jquery-ui.css'),
(9, 'Cupertino', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/cupertino/jquery-ui.css'),
(10, 'Dark Hive', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/dark-hive/jquery-ui.css'),
(11, 'Dot Luv', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/dot-luv/jquery-ui.css'),
(12, 'Eggplant', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/eggplant/jquery-ui.css'),
(13, 'Excite Bike', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/excite-bike/jquery-ui.css'),
(14, 'Flick', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/flick/jquery-ui.css'),
(15, 'Humanity', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/humanity/jquery-ui.css'),
(16, 'Le Frog', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/le-frog/jquery-ui.css'),
(17, 'Mint Chocolate', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/mint-choc/jquery-ui.css'),
(18, 'Overcast', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/overcast/jquery-ui.css'),
(19, 'Pepper Grinder', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/pepper-grinder/jquery-ui.css'),
(20, 'Redmond', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/redmond/jquery-ui.css'),
(21, 'Smoothness', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/smoothness/jquery-ui.css'),
(22, 'South Street', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/south-street/jquery-ui.css'),
(23, 'Start', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/start/jquery-ui.css'),
(24, 'Sunny', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/sunny/jquery-ui.css'),
(25, 'Swanky Purse', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/swanky-purse/jquery-ui.css'),
(26, 'Trontasic', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/trontastic/jquery-ui.css'),
(27, 'UI Darkness', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/ui-darkness/jquery-ui.css'),
(28, 'UI Lightness', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/ui-lightness/jquery-ui.css'),
(29, 'Vader', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/vader/jquery-ui.css');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_usuarios`
--

CREATE TABLE IF NOT EXISTS `system_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) NOT NULL,
  `pass` text,
  `email` char(255) DEFAULT NULL,
  `nombre` char(255) DEFAULT NULL,
  `apellidoss` char(255) DEFAULT NULL,
  `ultima_conexion` datetime DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `fk_rol` int(11) NOT NULL DEFAULT '2',
  `ip` char(50) NOT NULL,
  PRIMARY KEY (`id`,`fk_rol`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `usuario` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Volcado de datos para la tabla `system_usuarios`
--

INSERT INTO `system_usuarios` (`id`, `username`, `pass`, `email`, `nombre`, `apellidoss`, `ultima_conexion`, `creado`, `fk_rol`, `ip`) VALUES
(16, 'admin', '098f6bcd4621d373cade4e832627b4f6', 'email@webmaster.com', 'Administrador del sistema', NULL, '2013-12-13 17:43:45', '0000-00-00 00:00:00', 1, ''),
(102, 'demo', '098f6bcd4621d373cade4e832627b4f6', 'demo', 'Usuario Demo', NULL, '2014-01-07 11:52:37', '0000-00-00 00:00:00', 2, ''),
(138, '', '912ec803b2ce49e4a541068d495ab570', '', 'asdf', NULL, '2014-01-05 17:44:04', NULL, 2, ''),
(141, 'asdf', '912ec803b2ce49e4a541068d495ab570', 'asdf', '', NULL, '2014-01-05 17:44:48', NULL, 2, ''),
(144, 'cesar', '202cb962ac59075b964b07152d234b70', 'cesar', 'cesar', NULL, '2014-01-05 17:49:45', NULL, 2, ''),
(145, 'diego', '078c007bd92ddec308ae2f5115c1775d', 'diego@email.com', 'diego', NULL, '2014-01-06 17:38:53', NULL, 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system__categoria_pagina`
--

CREATE TABLE IF NOT EXISTS `system__categoria_pagina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(255) DEFAULT NULL,
  `fk_categoria_padre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `constructor_elemento_catalogo`
--
ALTER TABLE `constructor_elemento_catalogo`
  ADD CONSTRAINT `fk_catalogo` FOREIGN KEY (`fk_catalogo`) REFERENCES `system_catalogos` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
