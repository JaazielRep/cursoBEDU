/*
Navicat MySQL Data Transfer

Source Server         : PROYECTO
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : eperfect_empresasep

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-26 18:20:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `anuncios`
-- ----------------------------
DROP TABLE IF EXISTS `anuncios`;
CREATE TABLE `anuncios` (
  `folio` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(10) unsigned NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anuncios
-- ----------------------------
INSERT INTO `anuncios` VALUES ('5', '74', '2013-10-07 00:00:00');
INSERT INTO `anuncios` VALUES ('6', '74', '2013-10-07 00:00:00');
INSERT INTO `anuncios` VALUES ('25', '80', '2013-11-15 16:11:48');
INSERT INTO `anuncios` VALUES ('27', '88', '2014-01-16 10:01:28');
INSERT INTO `anuncios` VALUES ('28', '88', '2014-01-16 10:01:46');
INSERT INTO `anuncios` VALUES ('29', '88', '2014-01-16 10:01:21');
INSERT INTO `anuncios` VALUES ('30', '87', '2014-01-16 10:01:04');
INSERT INTO `anuncios` VALUES ('31', '90', '2014-02-21 20:02:53');
INSERT INTO `anuncios` VALUES ('36', '73', '2014-12-07 16:12:16');
INSERT INTO `anuncios` VALUES ('38', '73', '2015-01-29 19:01:41');
INSERT INTO `anuncios` VALUES ('39', '73', '2015-01-29 19:01:56');

-- ----------------------------
-- Table structure for `articulos_mvc`
-- ----------------------------
DROP TABLE IF EXISTS `articulos_mvc`;
CREATE TABLE `articulos_mvc` (
  `clave` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of articulos_mvc
-- ----------------------------
INSERT INTO `articulos_mvc` VALUES ('002', 'cuaderno', '5', '5.5');
INSERT INTO `articulos_mvc` VALUES ('003', 'plumas', '10', '2.3');

-- ----------------------------
-- Table structure for `bancos`
-- ----------------------------
DROP TABLE IF EXISTS `bancos`;
CREATE TABLE `bancos` (
  `id_banco` int(8) NOT NULL,
  `id_empresa` int(6) NOT NULL,
  `sucursal` varchar(15) CHARACTER SET latin1 NOT NULL,
  `numero_cuenta` varchar(20) CHARACTER SET latin1 NOT NULL,
  `clave_interbancaria` varchar(20) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  `	titularcta` varchar(70) NOT NULL,
  PRIMARY KEY (`id_banco`,`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bancos
-- ----------------------------
INSERT INTO `bancos` VALUES ('1', '4', 'afirme', '123', '123', 'http://www.afirme.com.mx/Portal/Portal.do', '');
INSERT INTO `bancos` VALUES ('1', '101', 'afirme', '12345', '123456789012345678', 'http://www.afirme.com.mx/Portal/Portal.do', '');
INSERT INTO `bancos` VALUES ('1', '102', 'afirme', '123', '1234', 'http://www.afirme.com.mx/Portal/Portal.do', '');
INSERT INTO `bancos` VALUES ('2', '4', 'banamex', '123123', '123123', 'http://www.banamex.com/', '');
INSERT INTO `bancos` VALUES ('2', '28', 'banamex', '1475468', '002180700614754685', 'http://www.banamex.com/', '');
INSERT INTO `bancos` VALUES ('2', '91', 'banamex', '100980', '', 'http://www.banamex.com/', '');
INSERT INTO `bancos` VALUES ('2', '95', 'banamex', '', '', 'http://www.banamex.com/', '');
INSERT INTO `bancos` VALUES ('2', '98', 'banamex', '', '', 'http://www.banamex.com/', '');
INSERT INTO `bancos` VALUES ('3', '4', 'banorte', '123', '123', 'http://www.banorte.com/portal/personas/home.web', '');
INSERT INTO `bancos` VALUES ('4', '4', 'bancomer', '123', '123', 'http://www.bancomer.com.mx/', '');
INSERT INTO `bancos` VALUES ('5', '4', 'santander', '123', '123', 'http://www.santander.com.mx/NuevaVersion/index.html', '');
INSERT INTO `bancos` VALUES ('5', '95', 'santander', '', '', 'http://www.santander.com.mx/NuevaVersion/index.html', '');
INSERT INTO `bancos` VALUES ('5', '98', 'santander', '', '', 'http://www.santander.com.mx/NuevaVersion/index.html', '');
INSERT INTO `bancos` VALUES ('6', '4', 'scotiabank', '123', '123', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '55', 'scotiabank', '123', '123', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '56', 'scotiabank', '3576626', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '84', 'scotiabank', '3576626', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '85', 'scotiabank', '3576626', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '87', 'scotiabank', '3576626', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '90', 'scotiabank', '3576626', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('6', '98', 'scotiabank', '', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx', '');
INSERT INTO `bancos` VALUES ('7', '4', 'mifel', '123', '123', 'http://www.mifel.com.mx/Portal/?id_category=1', '');
INSERT INTO `bancos` VALUES ('7', '106', 'mifel', '123', '123', 'http://www.mifel.com.mx/Portal/?id_category=1', '');
INSERT INTO `bancos` VALUES ('8', '4', 'hsbc', '123', '123', 'http://www.hsbc.com.mx/1/2/', '');
INSERT INTO `bancos` VALUES ('8', '9', 'hsbc', '453453453534534', '', 'http://www.hsbc.com.mx/1/2/', '');
INSERT INTO `bancos` VALUES ('8', '19', 'hsbc', '6398261274', '', 'http://www.hsbc.com.mx/1/2/', '');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id_banner` varchar(20) NOT NULL,
  `banner` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('destacados', 'destacados');
INSERT INTO `banner` VALUES ('ofertas del dia', 'ofertas del dia');
INSERT INTO `banner` VALUES ('banner superior', 'banner superior');
INSERT INTO `banner` VALUES ('banner lateral', 'banner lateral');
INSERT INTO `banner` VALUES ('sugerencias', 'sugerencias');

-- ----------------------------
-- Table structure for `bitacoracompras`
-- ----------------------------
DROP TABLE IF EXISTS `bitacoracompras`;
CREATE TABLE `bitacoracompras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(11) NOT NULL,
  `nombre_comprador` varchar(100) NOT NULL,
  `folio_producto` int(11) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `codigo_producto` varchar(25) NOT NULL,
  `precio_producto` double NOT NULL,
  `subtot_unit` double NOT NULL,
  `moneda` varchar(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `calle1` varchar(150) NOT NULL,
  `calle2` varchar(150) NOT NULL,
  `calle3` varchar(150) NOT NULL,
  `no_ext` tinyint(4) NOT NULL,
  `no_int` tinyint(4) NOT NULL,
  `cp` int(11) NOT NULL,
  `referencias` varchar(250) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `fecha_pedido` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bitacoracompras
-- ----------------------------
INSERT INTO `bitacoracompras` VALUES ('1', '4', 'Andres León', '9', '', 'AM-SNK50', '440.5', '440.5', '$', 'landres697@gmail.com', '6542132132', '1', '20', 'SANTA CATARINA QUIANE', 'Quiane', 'Berriozabal', 'Mina', 'Nuño Del Mercado', '117', '117', '68000', '        	  ', '8115514', '2014-09-09', '1');
INSERT INTO `bitacoracompras` VALUES ('2', '91', 'Andres LeÃ³n', '371', '', 'depo1', '1699', '1699', '$', 'landres697@gmail.com', '6542132132', '1', '11', 'SANTO TOMÃS', 'Prueba', 'Berriozabal', 'Mina', 'NuÃ±o Del Mercado', '117', '117', '68000', '        	  ', '8015787', '2014-09-09', '1');
INSERT INTO `bitacoracompras` VALUES ('3', '83', 'Grace Cuadros', '326', '', 'ES0020', '260', '780', '$', 'gracobr@hotmail.com', '0155556508', '3', '19', 'Abasolo', 'Abasolo', 'Abasolo', 'Abasolo', 'H', '2', '1', '44', '        	  ', '6633277', '2014-09-11', '1');
INSERT INTO `bitacoracompras` VALUES ('4', '83', 'Grace Cuadros', '353', '', 'JUTE31', '1950', '19500', '$', 'gracobr@hotmail.com', '0155556508', '10', '19', 'Abasolo', 'Abasolo', 'Abasolo', 'Abasolo', 'H', '2', '1', '44', '        	  ', '6633277', '2014-09-11', '1');
INSERT INTO `bitacoracompras` VALUES ('5', '4', 'Andres Leon', '9', '', 'AM-SNK50', '440.5', '440.5', '$', 'landres697@gmail.com', '5456465465', '1', '11', 'AYAPANGO', 'Asdasd', 'Sadasd', 'Asdasd', 'Sdaasd', '45', '45', '56412', '        	  ', '227159', '2014-09-11', '1');
INSERT INTO `bitacoracompras` VALUES ('6', '95', 'Andres Leon', '405', '', 'BORL10', '970', '970', '$', 'asdas@sadasd', '4545645646', '1', '2', 'Ensenada', 'Asdasd', 'Sadasd', 'Asdasd', 'Sadas', '12', '4', '45645', '        	  ', '433958', '2014-09-11', '1');
INSERT INTO `bitacoracompras` VALUES ('7', '108', 'Andres Asd', '623', '', '26-FJ37', '97', '97', '$', 'landres697@gmail.com', '1231231231', '1', '3', 'ComondÃº', 'Sadasd', 'Asdas', 'Sadsadas', 'Sadasdas', '123', '123', '12312', '        	  ', '6167826', '2014-09-11', '1');

-- ----------------------------
-- Table structure for `calificacion`
-- ----------------------------
DROP TABLE IF EXISTS `calificacion`;
CREATE TABLE `calificacion` (
  `id_empresa` int(8) NOT NULL,
  `calificacion` int(6) NOT NULL DEFAULT '0',
  `votos` int(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of calificacion
-- ----------------------------
INSERT INTO `calificacion` VALUES ('19', '0', '0');
INSERT INTO `calificacion` VALUES ('26', '0', '0');
INSERT INTO `calificacion` VALUES ('27', '0', '0');
INSERT INTO `calificacion` VALUES ('28', '0', '0');
INSERT INTO `calificacion` VALUES ('31', '0', '0');
INSERT INTO `calificacion` VALUES ('37', '0', '0');
INSERT INTO `calificacion` VALUES ('42', '5', '1');
INSERT INTO `calificacion` VALUES ('50', '0', '0');
INSERT INTO `calificacion` VALUES ('55', '0', '0');
INSERT INTO `calificacion` VALUES ('56', '0', '0');
INSERT INTO `calificacion` VALUES ('65', '0', '0');
INSERT INTO `calificacion` VALUES ('74', '0', '0');
INSERT INTO `calificacion` VALUES ('81', '0', '0');
INSERT INTO `calificacion` VALUES ('82', '0', '0');
INSERT INTO `calificacion` VALUES ('83', '0', '0');
INSERT INTO `calificacion` VALUES ('84', '0', '0');
INSERT INTO `calificacion` VALUES ('85', '0', '0');
INSERT INTO `calificacion` VALUES ('87', '0', '0');
INSERT INTO `calificacion` VALUES ('90', '0', '0');
INSERT INTO `calificacion` VALUES ('91', '0', '0');
INSERT INTO `calificacion` VALUES ('92', '0', '0');
INSERT INTO `calificacion` VALUES ('95', '0', '0');
INSERT INTO `calificacion` VALUES ('98', '0', '0');
INSERT INTO `calificacion` VALUES ('101', '0', '0');
INSERT INTO `calificacion` VALUES ('102', '0', '0');
INSERT INTO `calificacion` VALUES ('103', '0', '0');
INSERT INTO `calificacion` VALUES ('104', '0', '0');
INSERT INTO `calificacion` VALUES ('105', '0', '0');
INSERT INTO `calificacion` VALUES ('106', '0', '0');
INSERT INTO `calificacion` VALUES ('107', '0', '0');
INSERT INTO `calificacion` VALUES ('109', '0', '0');
INSERT INTO `calificacion` VALUES ('110', '0', '0');
INSERT INTO `calificacion` VALUES ('111', '0', '0');
INSERT INTO `calificacion` VALUES ('112', '0', '0');
INSERT INTO `calificacion` VALUES ('113', '0', '0');
INSERT INTO `calificacion` VALUES ('114', '0', '0');
INSERT INTO `calificacion` VALUES ('115', '0', '0');
INSERT INTO `calificacion` VALUES ('116', '0', '0');
INSERT INTO `calificacion` VALUES ('117', '0', '0');
INSERT INTO `calificacion` VALUES ('118', '0', '0');
INSERT INTO `calificacion` VALUES ('119', '0', '0');
INSERT INTO `calificacion` VALUES ('120', '0', '0');
INSERT INTO `calificacion` VALUES ('121', '0', '0');
INSERT INTO `calificacion` VALUES ('122', '0', '0');
INSERT INTO `calificacion` VALUES ('123', '0', '0');
INSERT INTO `calificacion` VALUES ('124', '0', '0');
INSERT INTO `calificacion` VALUES ('125', '0', '0');
INSERT INTO `calificacion` VALUES ('126', '0', '0');
INSERT INTO `calificacion` VALUES ('127', '0', '0');
INSERT INTO `calificacion` VALUES ('128', '0', '0');
INSERT INTO `calificacion` VALUES ('129', '0', '0');
INSERT INTO `calificacion` VALUES ('130', '0', '0');
INSERT INTO `calificacion` VALUES ('131', '0', '0');
INSERT INTO `calificacion` VALUES ('132', '0', '0');
INSERT INTO `calificacion` VALUES ('133', '0', '0');
INSERT INTO `calificacion` VALUES ('134', '0', '0');
INSERT INTO `calificacion` VALUES ('135', '0', '0');
INSERT INTO `calificacion` VALUES ('136', '0', '0');
INSERT INTO `calificacion` VALUES ('137', '0', '0');
INSERT INTO `calificacion` VALUES ('138', '0', '0');
INSERT INTO `calificacion` VALUES ('139', '0', '0');
INSERT INTO `calificacion` VALUES ('140', '0', '0');
INSERT INTO `calificacion` VALUES ('141', '0', '0');
INSERT INTO `calificacion` VALUES ('142', '0', '0');
INSERT INTO `calificacion` VALUES ('143', '0', '0');
INSERT INTO `calificacion` VALUES ('144', '0', '0');
INSERT INTO `calificacion` VALUES ('145', '0', '0');
INSERT INTO `calificacion` VALUES ('146', '0', '0');
INSERT INTO `calificacion` VALUES ('147', '0', '0');
INSERT INTO `calificacion` VALUES ('148', '0', '0');
INSERT INTO `calificacion` VALUES ('149', '0', '0');
INSERT INTO `calificacion` VALUES ('150', '0', '0');
INSERT INTO `calificacion` VALUES ('151', '0', '0');
INSERT INTO `calificacion` VALUES ('152', '0', '0');
INSERT INTO `calificacion` VALUES ('153', '0', '0');
INSERT INTO `calificacion` VALUES ('154', '0', '0');
INSERT INTO `calificacion` VALUES ('155', '0', '0');
INSERT INTO `calificacion` VALUES ('156', '0', '0');
INSERT INTO `calificacion` VALUES ('157', '0', '0');
INSERT INTO `calificacion` VALUES ('158', '0', '0');
INSERT INTO `calificacion` VALUES ('159', '0', '0');
INSERT INTO `calificacion` VALUES ('160', '0', '0');
INSERT INTO `calificacion` VALUES ('161', '0', '0');
INSERT INTO `calificacion` VALUES ('162', '0', '0');
INSERT INTO `calificacion` VALUES ('163', '0', '0');
INSERT INTO `calificacion` VALUES ('164', '0', '0');
INSERT INTO `calificacion` VALUES ('165', '0', '0');
INSERT INTO `calificacion` VALUES ('166', '0', '0');
INSERT INTO `calificacion` VALUES ('167', '0', '0');
INSERT INTO `calificacion` VALUES ('168', '0', '0');
INSERT INTO `calificacion` VALUES ('169', '0', '0');

-- ----------------------------
-- Table structure for `carrito`
-- ----------------------------
DROP TABLE IF EXISTS `carrito`;
CREATE TABLE `carrito` (
  `id_usuario` int(6) NOT NULL,
  `id_empresa` int(6) NOT NULL,
  `folio_producto` int(6) NOT NULL,
  `nombre_producto` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codigo_producto` varchar(12) CHARACTER SET utf8 NOT NULL,
  `cantidad` int(4) NOT NULL DEFAULT '1',
  `precio` double NOT NULL,
  `id_compra` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `total_pagar_general` double NOT NULL,
  `status` int(2) NOT NULL,
  `subtot_unit` double NOT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 NOT NULL,
  `tipo_usuario` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of carrito
-- ----------------------------
INSERT INTO `carrito` VALUES ('5', '95', '419', 'Chaleco Ejecutivo ', 'CEJE70', '10', '650', '0', '0000-00-00 00:00:00', '0', '0', '6500', '$', 'empresa');
INSERT INTO `carrito` VALUES ('5', '91', '374', 'Chamarras chaquetas de piel super deportivas CAT', 'depo3', '5', '1849', '0', '0000-00-00 00:00:00', '0', '0', '9245', '$', 'empresa');
INSERT INTO `carrito` VALUES ('5', '83', '342', 'Juego Tequilero de Flores elaborado en cerámica de alta temperatura. ', 'JUTE30', '1', '1105', '0', '0000-00-00 00:00:00', '0', '0', '1105', '$', 'empresa');

-- ----------------------------
-- Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) NOT NULL,
  `url_foto` varchar(120) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categorias
-- ----------------------------
INSERT INTO `categorias` VALUES ('1', 'Accesorios para auto y transportación', 'Imagenes_e_perfect/categorias/accesorios-auto.jpg');
INSERT INTO `categorias` VALUES ('2', 'Autos y transportación', 'Imagenes_e_perfect/categorias/carros.png');
INSERT INTO `categorias` VALUES ('3', 'Animales y mascotas', 'Imagenes_e_perfect/categorias/mascotas.jpg');
INSERT INTO `categorias` VALUES ('4', 'Celulares y cámaras', 'Imagenes_e_perfect/categorias/camaras-celulares.jpg');
INSERT INTO `categorias` VALUES ('5', 'Computación y electrónica', 'Imagenes_e_perfect/categorias/computacion-y-electronica.png');
INSERT INTO `categorias` VALUES ('6', 'Deportes y tiempo libre', 'Imagenes_e_perfect/categorias/deportes y tiempo libre.jpg');
INSERT INTO `categorias` VALUES ('7', 'Entradas y boletos para eventos', 'Imagenes_e_perfect/categorias/imgboletos.jpg');
INSERT INTO `categorias` VALUES ('8', 'Fiestas y eventos', 'Imagenes_e_perfect/categorias/eventos-fiestas.jpg');
INSERT INTO `categorias` VALUES ('9', 'Inmuebles', 'Imagenes_e_perfect/categorias/inmuebles.png');
INSERT INTO `categorias` VALUES ('10', 'Instrumentos musicales', 'Imagenes_e_perfect/categorias/instrumentos-music.jpg');
INSERT INTO `categorias` VALUES ('11', 'Manualidades, coleccionables y antiguedades', 'Imagenes_e_perfect/categorias/antiguedades.jpg');
INSERT INTO `categorias` VALUES ('12', 'Maquinaria y equipo industrial', 'Imagenes_e_perfect/categorias/industriales.jpg');
INSERT INTO `categorias` VALUES ('13', 'Música, libros y películas', 'Imagenes_e_perfect/categorias/Libros_y_pel_culas.jpg');
INSERT INTO `categorias` VALUES ('14', 'Negocios agropecuarios', 'Imagenes_e_perfect/categorias/produc. campo.jpg');
INSERT INTO `categorias` VALUES ('15', 'Restaurantes y hotelería', 'Imagenes_e_perfect/categorias/restaurante.jpg');
INSERT INTO `categorias` VALUES ('16', 'Ropa calzado y accesorios', 'Imagenes_e_perfect/categorias/ropa.jpg');
INSERT INTO `categorias` VALUES ('17', 'Salud y belleza', 'Imagenes_e_perfect/categorias/belleza.jpg');
INSERT INTO `categorias` VALUES ('18', 'Servicios y negocios', 'Imagenes_e_perfect/categorias/negocios-servicios.jpg');
INSERT INTO `categorias` VALUES ('19', 'Todo para el hogar y la oficina', 'Imagenes_e_perfect/categorias/para-el-hogar.jpg');
INSERT INTO `categorias` VALUES ('20', 'Otros', 'Imagenes_e_perfect/categorias/otros.jpg');

-- ----------------------------
-- Table structure for `comentarios`
-- ----------------------------
DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE `comentarios` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `folio_anuncio` int(10) DEFAULT NULL,
  `autor_preg` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `email_preg` varchar(30) NOT NULL,
  `id_vendedor` int(8) NOT NULL,
  `tipo_vendedor` int(1) NOT NULL,
  `pregunta` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_publicacion` date NOT NULL,
  `respuesta` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `autor_resp` varchar(30) CHARACTER SET utf8 NOT NULL,
  `fecha_resp` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comentarios
-- ----------------------------
INSERT INTO `comentarios` VALUES ('1', '13', 'preg', 'hgh@hotm', '4', '1', 'preg1', '2014-09-01', 'resp1', ' 4', '2014-09-01');
INSERT INTO `comentarios` VALUES ('2', '13', 'preg', 'grs@hotmail', '4', '1', 'preg2', '2014-09-01', 'resp2', ' 4', '2014-09-01');
INSERT INTO `comentarios` VALUES ('3', '11', 'otra ', 'otr@hotma', '4', '2', 'pregu3', '2014-09-01', '', '', '0000-00-00');
INSERT INTO `comentarios` VALUES ('4', '11', 'gt', 'gt@hot', '4', '1', 'preg4', '2014-09-01', 'resp4', ' 4', '2014-09-01');
INSERT INTO `comentarios` VALUES ('7', '12', 'grace', 'gra@hotm', '4', '1', 'preggrac', '2014-09-01', 'wdkefenf', ' 4', '2014-09-01');
INSERT INTO `comentarios` VALUES ('8', '12', 'graco', 'gra@hotm', '4', '1', 'bien preg', '2014-09-01', 'bien resp', ' 4', '2014-09-01');
INSERT INTO `comentarios` VALUES ('9', '11', 'hola', 'hola@hot', '4', '1', 'hola', '2014-09-01', 'haha', ' B-Perfect', '2014-09-05');
INSERT INTO `comentarios` VALUES ('10', '11', 'turu', 'turu@hot', '4', '1', 'titi', '2014-09-01', '', '', '0000-00-00');
INSERT INTO `comentarios` VALUES ('11', '14', 'grace', 'grs@hotmail', '4', '1', 'otravez', '2014-09-01', 'nn', ' B-Perfect', '2014-09-03');

-- ----------------------------
-- Table structure for `compras`
-- ----------------------------
DROP TABLE IF EXISTS `compras`;
CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `total` double NOT NULL,
  `id_empresa_vendedor` int(11) NOT NULL,
  `id_vendedor` int(4) NOT NULL,
  `id_empresa_comprador` int(11) NOT NULL,
  `id_comprador` int(4) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  `apellido` varchar(40) CHARACTER SET utf8 NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8 NOT NULL,
  `municipio` varchar(30) CHARACTER SET utf8 NOT NULL,
  `colonia` varchar(35) CHARACTER SET utf8 NOT NULL,
  `calle` varchar(35) CHARACTER SET utf8 NOT NULL,
  `entre_calle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `y_calle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `no_ext` varchar(4) CHARACTER SET utf8 NOT NULL,
  `no_int` varchar(4) CHARACTER SET utf8 NOT NULL,
  `cp` int(5) NOT NULL,
  `telefono` varchar(13) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(40) CHARACTER SET utf8 NOT NULL,
  `referencias` varchar(300) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of compras
-- ----------------------------
INSERT INTO `compras` VALUES ('51', '3357984', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('50', '1816779', '0', '55', '0', '0', '100', 'Carlos', 'Cabral', 'Durango', 'Lerdo', 'Centro', 'Juarez', 'Aldama', 'Cuauhtemoc', '173', '0', '35150', '8712434410', 'carloscabralv@gmail.com', '        	  ');
INSERT INTO `compras` VALUES ('49', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '0', '', '', '');
INSERT INTO `compras` VALUES ('48', '2963981', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('46', '4805469', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('47', '2963981', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('52', '3987852', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('53', '5194045', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('54', '3575360', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('55', '6472247', '0', '56', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `compras` VALUES ('56', '548706', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', '2', 'Ensenada', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');

-- ----------------------------
-- Table structure for `destacados`
-- ----------------------------
DROP TABLE IF EXISTS `destacados`;
CREATE TABLE `destacados` (
  `id_destacado` int(2) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(5) NOT NULL,
  `folio` varchar(8) NOT NULL,
  PRIMARY KEY (`id_destacado`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of destacados
-- ----------------------------
INSERT INTO `destacados` VALUES ('5', '56', '144');
INSERT INTO `destacados` VALUES ('6', '56', '140');
INSERT INTO `destacados` VALUES ('7', '56', '163');
INSERT INTO `destacados` VALUES ('8', '55', '156');
INSERT INTO `destacados` VALUES ('10', '55', '127');
INSERT INTO `destacados` VALUES ('11', '55', '150');
INSERT INTO `destacados` VALUES ('12', '65', '264');
INSERT INTO `destacados` VALUES ('13', '56', '135');
INSERT INTO `destacados` VALUES ('14', '56', '205');
INSERT INTO `destacados` VALUES ('15', '56', '204');
INSERT INTO `destacados` VALUES ('16', '56', '133');
INSERT INTO `destacados` VALUES ('17', '56', '176');
INSERT INTO `destacados` VALUES ('18', '56', '199');
INSERT INTO `destacados` VALUES ('19', '56', '158');
INSERT INTO `destacados` VALUES ('20', '82', '272');
INSERT INTO `destacados` VALUES ('21', '82', '274');
INSERT INTO `destacados` VALUES ('24', '0', '415');
INSERT INTO `destacados` VALUES ('25', '0', '419');
INSERT INTO `destacados` VALUES ('26', '0', '409');
INSERT INTO `destacados` VALUES ('27', '0', '410');
INSERT INTO `destacados` VALUES ('28', '0', '418');
INSERT INTO `destacados` VALUES ('29', '0', '416');
INSERT INTO `destacados` VALUES ('30', '0', '375');
INSERT INTO `destacados` VALUES ('31', '0', '25');
INSERT INTO `destacados` VALUES ('32', '0', '66');
INSERT INTO `destacados` VALUES ('33', '0', '6');
INSERT INTO `destacados` VALUES ('34', '0', '6');
INSERT INTO `destacados` VALUES ('35', '0', '1320');

-- ----------------------------
-- Table structure for `empresas`
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_propietario` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `municipio` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `region` int(3) DEFAULT NULL,
  `calle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cp` int(5) DEFAULT NULL,
  `telefono` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `movil` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rfc` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `tipo_tienda` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tiempo_meses` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `dias` int(3) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `link` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_activacion` datetime NOT NULL,
  `fecha_caducidad` datetime NOT NULL,
  `no_anuncios` tinyint(4) NOT NULL DEFAULT '0',
  `limite_anuncios` int(4) DEFAULT NULL,
  `acercade_empresa` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `autorizado` int(1) DEFAULT '0',
  `ultimo_acceso` datetime NOT NULL,
  `status` varchar(15) CHARACTER SET utf8 NOT NULL,
  `visitado` int(5) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresas
-- ----------------------------
INSERT INTO `empresas` VALUES ('3', 'COSMETIQAL', 'Graciela Cuadros', 'México', 'Tlalnepantla de Baz', '12', 'Av.Mario Colín 3', '54060', '', '044-5519145511', 'cosmetical@live.com.mx', 'GACG800910ID5', 'Pyme', '12-meses', '365', '12000', '0', '12000', null, '../ImagenesAnuncios/3/cosmetiqal.jpg', '2015-03-20 16:44:50', '2013-11-22 14:11:56', '2014-11-22 14:11:56', '0', '50', null, '0', '2015-01-04 00:00:00', 'Vencido', '1');
INSERT INTO `empresas` VALUES ('4', 'B-Perfect', 'Graciela Gabino Cuadros', 'Morelos', 'Temoac', '12', 'Mario Colí­n 3 Col. Ind La Loma', '54060', '', '044-5519145511', 'bperfect@live.com', 'GACG800910ID5', 'Micro', '3 Meses', '90', '1750', '280', '2030', null, '../ImagenesAnuncios/4/b-perfect.jpg', '2015-03-28 23:53:55', '2013-10-22 16:10:34', '2014-11-06 16:10:34', '99', '50', '<div>Somos una empresa dedicada a la fabricación y maquila de productos de cosmetología. Nuestro objetivo es satisfacer las necesidades de nuestros clientes.</div><div><br/></div><div>Venta de productos para el cuidado de la piel</div><div>productos para el cuidado personal</div><div>Salud y Belleza</div><div>Cuidado de la piel</div>', '0', '2015-03-29 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('5', 'REGEN 7', 'Alma Ortiz', 'México', 'Tlalnepantla de Baz', '12', 'Mario Colin 3 Col. Ind La Loma', '54060', '', '044-5519145511', 'regensiete@live.com', 'GACG800910ID5', 'Micro', '12 Meses', '365', '5900', '944', '6844', 'http://www.linearegen7.blogspot.mx/', '../ImagenesAnuncios/5/regen7.png', '2015-01-04 15:11:41', '2013-11-22 14:11:07', '2014-11-22 14:11:07', '2', '50', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Empresa de origen Politécnico, fabricando productos para el cuidado del cabello desde hace 15 años.</span><div style=\"color: rgb(66, 66, 66); text-align: justify;\">Nuestros productos son de origen natural y ayudan  en el tratamiento de la caída y regeneración capilar siendo sus resultados visibles a partir de la segunda semana de utilización dando a su cabello con una nueva vida.</div>', '0', '2015-01-04 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('6', 'Body Natural', 'Pedro Antunes', 'México', 'Tlalnepantla de Baz', '12', 'Mario Colín 3', '54060', '', '044-5519145511', 'bodynat@live.com', 'GACG850910ID5', 'Pyme', '12-Meses', '365', '12000', '0', '12000', null, '../ImagenesAnuncios/6/body-natural.jpg', '2014-12-10 23:32:38', '2013-11-22 14:11:10', '2014-11-22 14:11:10', '13', '100', 'Somos una empresa mexicana, con mas de 20 años en el mercado con amplia experiencia en el desarrollo y fabricación de productos de belleza y cuidado corporal. Estamos en franca expansión,  podremos surtir en toda la república, buscamos distribuídores para el interior y damos excelentes precios. Tenemos la experiencia, el conocimiento y los medios para el desarrollo de nuevos productos. Aceptamos maquilas.', '3', '2014-10-30 00:00:00', '', '1');
INSERT INTO `empresas` VALUES ('9', 'Pabellón Ecatepec', 'Beatriz  Núñez Farfán', 'México', 'Ecatepec de Morelos', '5', 'Av. Vía Morelos 351-A', '55540', '55 65976698', '044-5522803673', 'bnunez@grupoxtra.com', 'ICG871103F95', 'Master', '12-Meses', '360', '24000', '0', '24000', 'http://www.pabellonecatepec.mx', '../ImagenesAnuncios/archivos/9/GetAttachment[1].jpg', '2014-02-20 10:22:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '500', 'Ven a lo grande a Pabellón Ecatepec\nVen a ver la mejor pelicula en Xtra Cinemas Ecatepec\nLocales en renta Pabellón Ecatepec\n', '0', '2013-10-23 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('19', 'MUSCH', 'EDUARDO ROMERO', 'México', 'Ecatepec de Morelos', '5', '', '55210', ' ', '019 993054937', 'innovesa2013@yahoo.com.mx', '', 'Negocio', '3-Meses', '180', '1000', '0', '1000', '', '../ImagenesAnuncios/19/LOGO COSMETICO.png', '2014-03-26 10:53:41', '2013-11-06 13:11:16', '2014-05-06 13:02:16', '4', '20', 'Los productos MUSCH COSMETICS están desarrollados con ingredientes naturales.', '3', '2013-11-21 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('26', 'SALSAS PICCOSSA', 'GLORIA ERNESTINA ORTEGA  VELAZQUEZ  Y MIREYA NAVA RAMIREZ', 'Distrito Federal', 'Tlalpan', '1', 'CAMINIO VIEJO AL MANINAL 71 COL. SANTO TOMAS DE AJ', '14710', '55-39681946', '55-48470197', 'ventas@piccossa.com.mx', 'OEVE521107NA1', 'Negocio', '3-Meses', '90', '0', '0', '0', 'http://www.piccossa.com.mx', '../ImagenesAnuncios/26/logo-piccossa-121kb.jpg', '2014-02-20 10:23:14', '2013-12-19 17:12:40', '2014-03-19 18:03:40', '0', '20', '<p style=\"font-family: \'Times New Roman\';\">Delicioss Salsas Gourmet producidas con diversas especies de chile, sin conservadores artificiales, y envasadas bajo las especificaciones sanitarias adecuadas indicadas en la NORMA Oficial Mexicana NOM-130-SSA1-1995.</p><p style=\"font-family: \'Times New Roman\';\">Con recetas de la cocina tradicional de Zacatlan de las Manzanas,nuestras salsas se pueden combinar mariscos,camarones,caldos,sopas,y todo tipo de comida!!</p><p style=\"font-family: \'Times New Roman\';\">NUESTRAS PRESENTACIONES:</p><p style=\"font-family: \'Times New Roman\';\">* Salsa Chipotle en envase de cristal en presentación de 125gr. y 250gr.</p><p style=\"font-family: \'Times New Roman\';\">* Salsa de Árbol en envase de cristal en presentación de 125gr. y 250gr.</p><p style=\"font-family: \'Times New Roman\';\">* Salsa Chiltepín en envase de cristal en presentación de 125gr. y 250gr.</p><p style=\"font-family: \'Times New Roman\';\">* Salsa Verde en envase de cristal en presentación de 125gr. y ', '3', '2013-12-19 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('27', 'Arte y Diseño Promocional Fénix', 'Javier Valero Cuéllar', 'Distrito Federal', 'Azcapotzalco', '1', 'Norte 81 #244 - B', '2080', '0155-53420188', '044-5514961360', 'fenixcompras@gmail.com', '', 'Micro', '3-Meses', '180', '1500', '0', '1500', 'http://www.fenixpromociones.com/', '../ImagenesAnuncios/27/logo de fenix.jpg', '2014-03-26 10:56:07', '2013-12-13 10:12:18', '2014-04-13 11:03:18', '15', '50', 'Desarrollo y comercialización de artículos promocionales en general, nos enfocamos en el servicio y asesoramiento de proyectos para nuestros clientes', '3', '2014-02-01 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('28', 'Carretos Publicidad y Serigrafìa', 'OCTAVIO  ramirez naveja', 'Estado de México', 'Tlalnepantla de Baz', '12', 'Av Mario Colin S/N Tren Suburbano Tlalnepantla Loc', '54106', '0155-46210199', '044-5560986622', 'carretos_publicidad@yahoo.com.mx', 'RANO660118NS6', 'Negocio', '1-Mes', '74', '350', '56', '406', '', '../ImagenesAnuncios/28/Carreto (1).jpg', '2013-12-26 12:52:48', '2013-12-16 15:12:40', '2014-02-28 15:02:40', '6', '15', '<b>Venta de productos promocionales para empresas y particulares </b><br/><br/>- Serigrafìa<br/>- Sand Blast en ceramica, vidrio.<br/>- Sublimaciòn en tazas, mouse pad, locetas, platos, playeras.<br/>- Vitrificado<br/><br/><br/>', '3', '2013-12-26 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('31', 'Centro Incubador de Empresas Azcapotzalco ', 'Diana Erika Calvillo Reyes', 'Distrito Federal', 'Azcapotzalco', '1', 'Av. 22 de febrero #440 Col San Marcos ', '2020', '-62623099', '-49965657', 'decalvilloreyes@hotmail.com', 'CARD741119T3', 'Master', '12-Meses', '365', '12900', '0', '12900', '', '../ImagenesAnuncios/31/ciea.jpg', '2013-12-19 16:07:49', '2013-12-17 16:12:07', '2014-12-17 16:12:07', '1', '5000', 'Aporyar a los emprendedores y empresarios atravez de capacitaciones y asesorias brindandoles herramientas teorico-practicas para que inicien o mejoren su negocio, siendo de esta menera promotores activos de la economia nacional. El proceso de pre-incubacion tiene como principal objetivo brindarles asesorias y cursos especializados a los emprendedores y/o empresarios en un breve periodo de tiempo.', '3', '2013-12-19 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('37', 'Lurica', 'Pedro Gil', 'Estado de México', 'Acambay', '1', '', '0', '-', '044-5519145511', 'commerce2014@live.com', '', 'Pyme', '12-Meses', '365', '7000', '1120', '8120', '', '../ImagenesAnuncios/37/Lurica_logo.jpg', '2014-04-27 12:44:32', '2014-01-23 12:01:01', '2015-01-23 12:01:01', '18', '100', '<span style=\"font-family: \'Myriad Pro\', Verdana, Geneva, sans-serif; text-align: justify;\">Somos una empresa Mexicana dedicada al suministro y soluciones de productos de limpieza para autos; contamos con un catálogo especializado de productos en solucionar situaciones cotidianas dentro del ramo. </span><br style=\"font-family: \'Myriad Pro\', Verdana, Geneva, sans-serif; text-align: justify;\"/><br style=\"font-family: \'Myriad Pro\', Verdana, Geneva, sans-serif; text-align: justify;\"/><span style=\"font-family: \'Myriad Pro\', Verdana, Geneva, sans-serif; text-align: justify;\">Estamos comprometidos con el cuidado del medioambiente, la seguridad en los usuarios y la disminución de desperdicios de las empresas generando ahorros y optimizando los recursos.</span>', '3', '2014-04-27 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('42', 'Vie Naturelle', 'Fernando Ruíz', 'Estado de México', 'Atizapán', '1', 'Atizapán', '0', '-', '-', 'commerce2014@live.com', '', 'Micro', '12-Meses', '360', '6300', '0', '6300', '', '../ImagenesAnuncios/42/vienaturelle_logo2.jpg', '2014-05-04 15:51:42', '2014-02-02 00:02:29', '2015-01-28 00:01:29', '18', '50', '<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Empresa mexicana,\r\ndedicada a la elaboración y comercialización de productos para el cuidado\r\npersonal, así como de sabores esencias y colores.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Vie Naturelle, les\r\nagradece el favorecernos con su preferencia al elegir nuestra línea de productos\r\ncomo partícipe del cuidado personal y el de sus familias. Nuestros productos\r\nestán elaborados aprovechando las bondades de la naturaleza, a través de los extractos\r\ny las esencias que nos brindan todos sus beneficios.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Nuestra empresa\r\nvisualiza que nuestros productos logren ser colocados rápidamente en todos los\r\nhogares mexicanos.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Queremos también\r\ncontribuir con el desarrollo y potencial de nuestro país.<font size=\"4\" face=\"Arial, sans-serif\"><o:p></o:p></font></p>', '3', '2014-05-04 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('50', 'CICE S.C.', 'María de Lourdes Yañez Gutierrez', 'Distrito Federal', 'Coyoacán', '2', 'Juan de Dios Arias # 73', '6860', '55-65500044', '-43268960', 'lyanez29@hotmail.com', 'CIC090309E43', 'Negocio', '12-Meses', '365', '6300', '0', '6300', 'http://www.incubadorayaceleradoramexiconuevo.org.mx', '../ImagenesAnuncios/50/Slide1.GIF', '2014-03-03 16:36:57', '2014-03-01 10:03:12', '2015-03-01 10:03:12', '1', '20', '<html/>', '3', '2014-03-03 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('55', 'Cuore Gifts & Art', 'Isabel Michel', 'Jalisco', 'Zapopan', '12', 'Av. Cubilete 220-1  Col. Chapalita', '55719', '-', '-', 'commerce2014@live.com', '', 'Pyme', '12-Meses', '365', '7000', '0', '7000', '', '../ImagenesAnuncios/55/cuore.png', '2015-03-12 11:17:39', '2014-03-03 13:03:36', '2015-03-03 13:03:36', '12', '100', '<p style=\"margin-left:18.0pt\" class=\"MsoNormal\">Somos\r\n una empresa especialiazada en fabricar\r\nproductos de arte en gifts  de cualquier\r\ntipo. Siempre estamos buscando productos atractivos y originales para nuestros\r\nclientes, para poder distribuir antes que nadie productos originales y\r\nnovedosos.<o:p></o:p></p>\r\n\r\n<p style=\"margin-left:18.0pt\" class=\"MsoNormal\">Nuestro\r\ncatálogo de regalos es muy amplio y variado, contando con<b><span> </span>infinidad de\r\nproductos</b><span> distintos\r\npara personalizar (¡y creciendo!).</span><o:p></o:p></p>\r\n\r\n      Somos\r\nEspecialistas en regalos originales y divertidos, Regalos personales.', '3', '2014-04-27 00:00:00', '', '9');
INSERT INTO `empresas` VALUES ('56', 'Security Solutions', 'Rodrigo Vargas', 'Estado de México', 'Tlalnepantla de Baz', '12', 'Tlalnepantla ', '0', '0155-53182309', '-', 'commerce2014@live.com', '', 'Plus', '12-Meses', '365', '11500', '0', '11500', '', '../ImagenesAnuncios/56/HID.png', '2015-05-15 15:38:55', '2014-03-03 13:03:47', '2015-03-03 13:03:47', '99', '300', '<p class=\"MsoNormal\">Somos una empresa orgullosamente mexicana dedicados a la\r\ncomercialización y distribución de \r\nsistemas integrales de seguridad.</p>', '3', '2014-05-03 00:00:00', '', '17');
INSERT INTO `empresas` VALUES ('65', 'Angela Aromaterapia y Herbolaria', 'Angeles Dominguez', 'Distrito Federal', 'Gustavo A. Madero', '1', '', '7270', '0155-63109695', '044-5525622655', 'angelesdm@gmail.com', '', 'Negocio', '6-Meses', '240', '1900', '0', '1900', '', '../ImagenesAnuncios/65/logotipo-angela-.png', '2015-03-20 16:45:20', '2014-03-20 10:03:44', '2014-11-15 09:11:44', '17', '20', 'Cojines/almohadillas terapéuticas, elaboradas con semillas, aceites esenciales y hierbas aromáticas, que con la acción de la aromaterapia y fitoterapia son auxiliares para eliminar.<div><br/></div><div>Contracturas musculares, fatiga, estrés, dolores de espalda lumbares y cuello, cólicos menstruales, insomnio, dolor de cabeza, migraña, esguinces, dolor de rodillas, dolor de túnel carpiano.</div><div><br/></div><div>Auxiliares para la relajación y eliminar el estrés, ayudan a mejorar la circulación (várices).</div>', '3', '2014-05-26 00:00:00', '', '1');
INSERT INTO `empresas` VALUES ('73', 'EmpresaDePrueba', 'Graciela', 'Mexico', 'Tultitlan', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2014-09-01 11:46:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', null, null, '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('74', 'SANELLO', 'Paula Gonzalez', 'Distrito Federal', 'Venustiano Carranza', '2', 'Calle 6 num. 479', '15610', '0155-15450261', '044-5537009403', 'paulany27@hotmail.com', '', 'Negocio', '6-Meses', '180', '1900', null, '1900', '', '../ImagenesAnuncios/74/sanello logo.jpg', '2014-07-31 03:59:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', null, 'Somos una micro empresa de reciente creacion comprometida con la economia de nuestros clientes poniendo a su alcance prendas de vestir,bolsas de mano y accesorios con un concepto innovador a traves de la creatividad de jovenes empresarios mexicanos.<div>Fabricamos productos de concepto unico ( piezas unicas), con aplicaciones hecgas a mano.</div><div>Nuestra calidad y servicio son nuestra mejor carta de presentacion.</div>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('81', 'LPS Right Choice Right Now.', 'Luis Jiménez', 'Estado de México', 'Tlalnepantla de Baz', '0', '', '0', '0155-', '044-5533875003', 'commerce2014@live.com', '', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '', '../ImagenesAnuncios/81/logotipolps.jpg', '2014-06-04 09:41:33', '2014-04-29 21:04:46', '2015-04-29 21:04:46', '10', '20', 'Es una marca de la familia que agrupa ITW Polimex. Soluciones de empaque, equipos de prueba y medición , partes para la industria automotriz de Equipo original, Polímeros y fluidos, equipos para alimentos, equipos de construcción y productos para soldadura especializados, atendemos varios segmentos de mercado como los son Automotriz de Refacciones, ferretero, industrial, autoservicios, calzado y zapateria. <div>LÍDER EN LA INDUSTRIA SA MRO durante más de cinco décadas, LPS Laboratorios ha proporcionado mantenimiento de conveniencia-empaquetado de productos químicos para la industria, el sector aeroespacial, militar y de telecomunicaciones instalaciones en todo el mundo. Ventas	(55)50-89-28-70 Ext 130 & 131</div>', '3', '2014-05-30 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('82', 'Devcon Industrial', 'Devcon Industrial Industrial', 'Estado de México', 'Tlalnepantla de Baz', '0', '', '0', '-', '044-5533875003', 'commerce2014@live.com', '', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '', '../ImagenesAnuncios/82/logo.jpg', '2014-06-04 09:42:19', '2014-04-29 22:04:02', '2015-04-29 22:04:02', '7', '20', 'Devcon industrial marca que agrupa ITW Polymex. Atiende a más de 40 segmentos de mercado los cuales se pueden agrupar en ocho grandes grupos que son: Soluciones de empaque , equipos de prueba y Medición, partes para la industria automotriz de equipo original, polimeros y fluidos, equipos para alimentos, equipos de construcción y productos para soldadura especializados, segmentos de mercado como son Automotriz de refacciones , ferretero, industrial, autoservicios, calzado y papelería. Ya sea que necesite para reconstruir el equipo a las especificaciones originales o evitar fallos que se produzcan en un programa de mantenimiento preventivo, ITW tiene la solución. Mira a los productos Devcon ® para la reparación de metal, reparación caucho o aplicaciones de reparación de piso.', '3', '2014-05-26 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('83', 'La Vajilla Mexicana ', 'Joao Bragansa', 'Distrito Federal', 'Azcapotzalco', '0', '', '2240', '-', '044-5520552611', 'commerce2014@live.com', '', 'Pyme', '12-Meses', '365', '7000', '0', '7000', '', '../ImagenesAnuncios/83/DSC00016.jpg', '2015-02-04 17:25:18', '2014-04-30 16:04:45', '2015-04-30 16:04:45', '56', '100', 'Empresa dedicada a resaltar los valores culturales del pueblo Mexicano através de la cerámica de alta temperatura posicionandonos en el mercado nacional e internacional como una empresa de inspiración y  manufactura artistica en cada uno de los productos. <div>Ofrecemos la cerámica de alta temperatura a nivel nacional e internacional como un producto artesanal de alta calidad y elaborado por manos mexicanas....</div>', '3', '2015-02-04 00:00:00', '', '2');
INSERT INTO `empresas` VALUES ('84', 'ROCOL', 'Luis Jimenez', 'Querétaro', 'Querétaro', '3', '', '0', '0155-', '044-5533875003', 'commerce2014@live.com', '', 'Micro', '12-Meses', '360', '6300', '0', '6300', '', '../ImagenesAnuncios/84/logo rocol.jpg', '2014-06-04 09:43:13', '2014-04-30 16:04:52', '2015-04-25 16:04:52', '14', '50', '<p class=\"MsoNormal\">Rocol es parte de la familia\r\nde marcas que agrupa ITW Polymex. Atendemos varios segmentos de mercado como\r\nson: Automotriz de refacciones, Ferretero, Industrial, Autoservicios, Minería, Hotelería,\r\nAeronáutica, Textil, Metalúrgica, Calzado y Papelería entre otros.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">En Rocol desarrollamos,\r\nfabricamos y comercializamos lubricantes industriales de tecnología avanzada y\r\nsistemas de señalización de línea para las industrias en todo el mundo. Nos\r\nespecializamos en grasas especializadas de alta temperatura, alta presión, alta\r\ncarga, alta velocidad, multiusos de grado alimenticio, de industria\r\nalimenticia, estamos certificado por la (NSF).<span style=\"font-size:\r\n13.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:windowtext\"><o:p></o:p></span></p>', '3', '2014-05-28 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('85', 'Permatex', 'Luis Jimenez', 'Aguascalientes', 'Aguascalientes', '1', '', '0', '0155-', '044-5533875003', 'commerce2014@live.com', '', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '', '../ImagenesAnuncios/85/PermatexBxSwirlc.jpg', '2014-06-04 09:43:43', '2014-04-30 16:04:00', '2015-04-30 16:04:00', '6', '20', '<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Desde 1909 Permatex ha mantenido su\r\nexcelente calidad de marca, ofreciendo la línea mas completa de productos especializados. El principal objetivo de ITW es\r\nsatisfacer las necesidades del cliente a través de de ofrecer soluciones innovadoras\r\ncon valor agregado, convirtiéndonos en un proveedor altamente confiable,\r\nreforzando de este modo la relación con nuestros socios comerciales. </p>', '3', '2014-05-19 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('87', 'DYKEM', 'Luis  Jimenez', 'Baja California', 'Ensenada', '1', '', '0', '0155-', '044-5533875003', 'commerce2014@live.com', '', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '', '../ImagenesAnuncios/87/dykembrandlogo.jpg', '2014-06-04 09:44:34', '2014-04-30 17:04:57', '2015-04-30 17:04:57', '4', '20', '<p class=\"MsoNormal\">La mejor producción de marcadores industriales, textiles,\r\npermanentes, temporales y tintas para maquinado, los mejores por excelencia.\r\nSomos parte de la familia agrupada de ITW, gracias a eso podemos ofrecer una amplia\r\ngama de productos a nuestros socios comerciales, con los cuales podemos crecer\r\njuntos en los negocios.  <font size=\"4\"><span style=\"line-height: 115%;\"><o:p></o:p></span></font></p>', '3', '2014-05-19 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('90', 'MARVIL INDUSTRIAL', 'Luis Jimenez', 'Puebla', 'Puebla', '5', '', '0', '0155-', '044-5533875003', 'commerce2014@live.com', '', 'Micro', '12-Meses', '360', '6300', '0', '6300', '', '../ImagenesAnuncios/90/logo marvil.jpg', '2014-06-04 09:45:16', '2014-05-09 15:05:57', '2015-05-04 15:05:57', '9', '50', '<p class=\"MsoNormal\">MARVIL INDUSTRIAL es parte de\r\nla familia de marcas que agrupa ITW Polymex. Atendemos varios segmentos de\r\nmercado como son: Automotriz de refacciones, Ferretero, Industrial,\r\nAutoservicios, Minería, Hotelería, Aeronáutica, Textil, Metalúrgica, Calzado y\r\nPapelería entre otros.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">MARVIL INDUSTRIAL es una empresa de productos\r\nde limpieza de grado industrial, hotelería, jabones, desengrasantes, ceras para\r\npulir.<font size=\"3\" face=\"Arial, sans-serif\" color=\"rgba(0, 0, 0, 0)\"><o:p></o:p></font></p>', '3', '2014-05-19 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('91', 'Prenda Piel', 'Graciela Cuadros', 'Estado de México', 'Tultitlán', '4', '', '0', '-', '044-5517669041', 'gracobr@hotmail.com', '', 'Pyme', '12-Meses', '365', '7000', '0', '7000', '', '91/91logo.jpg', '2015-05-15 15:42:29', '2014-05-05 00:05:57', '2015-05-05 00:05:57', '2', '100', '<p class=\"MsoNormal\"><span lang=\"ES-MX\">En</span><span> </span>Prenda Piel,\r\nrealizamos todo tipo de<span> </span>Diseños Exclusivos en Piel, tenemos para ti:\r\nChamarras, Monederos, Cinturones, Bolsas, Gabardinas, Bléiseres, Faldas, Sacos,\r\nPantalones, Trajes, Equipo de Motociclista Completo, Logotipos, Vestiduras para\r\nCarro, todo lo que necesites en Piel te lo Diseñamos y Confeccionamos.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Artículos de piel, logotipos en piel,\r\nchamarras para motociclista en piel, reparación de prendas de piel, chaparreras\r\nen piel, diseño en piel, abrigos en piel.<o:p></o:p></p>\r\n\r\nTenemos gran variedad de\r\nChamarras en Piel para Dama y Caballero, todas son de<span> </span>Diseño Exclusivo, podemos confeccionar tu charra, pantalón, falda, abrigo,\r\nbléiser, bolsa con diseños de tu agrado, colores de piel, texturas, trabajamos\r\ncon Piel de Borrego, Ternera y Becerro.<br/>\r\n<br/>\r\nAlgunos de nuestros diseños de moda actual,\r\ntambién contamos con el<span> </span>Equi', '0', '2015-05-15 00:00:00', 'Vencido', '14');
INSERT INTO `empresas` VALUES ('92', 'Pollos Rudos', 'Yair Gervacio', 'Estado de México', 'Coacalco de Berriozábal', '5', 'Higueras 4', '0', 'dfghjklñ{', 'vgbhnjk', 'yair_gervacio@hotmail.com', 'vgbhjk', 'Master', '6-Meses', '180', '7350', '0', '7350', 'www.pollosrudos.com', '../ImagenesAnuncios/92/choliza.jpg', '2014-05-16 18:16:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '5000', '<span style=\"white-space:pre\">			</span>Heavy Metal (Prueba de registro yair)', '0', '2014-05-16 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('95', 'Sculptural ', 'Celia  Castañeda ', 'Estado de México', 'Toluca', '1', 'Avenida Paseo Colon  Norte No.334 Col Capultitlan ', '50260', '722-2126383', '-', 'commerce2014@live.com', '', 'Micro', '12-Meses', '360', '6300', '0', '6300', '', '../ImagenesAnuncios/95/logo.JPG', '2015-02-11 12:58:55', '2014-05-22 22:05:12', '2015-05-17 22:05:12', '16', '50', '<div style=\"text-align: center;\">Sculptural</div><div>Sculptural es una empresa 100% mexicana que desde hace 15 años se dedica a la comercialización de lencería y corsetería remodeladora para dama y caballero.</div><div>Sin embargo es hasta el año de 1998, que su fundadora la Dra. y MSP. Celia Oralía Castañeda Hernández, inicia la fabricación de este tipo de productos, pues los existentes en el mercado no cumplían con las expectativas de díselo y calidad</div><div><br/></div><div>Actualmente, Sculptural cuenta con una amplia gama de productos remodeladores basados en conocimientos científicos para su diseño , además de asesoría de médicos especializados en estética y ortopedia, que hace que Sculptural sea una marca que además de belleza y remodelación también te brinda salud, comodidad y calidad en todos y cada uno de los productos y servicios que ofrece.</div><div><br/></div>', '3', '2014-05-22 00:00:00', '', '29');
INSERT INTO `empresas` VALUES ('98', 'Productora Titanio Records ', 'Enrique  Perez', 'Estado de México', 'Tlalnepantla de Baz', '12', '', '0', '-', '-', 'commerce2014@live.com', '', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '', '../ImagenesAnuncios/98/logotipo.jpg', '2014-05-26 17:58:43', '2014-05-23 00:05:39', '2015-05-23 00:05:39', '13', '20', 'Venta de CD´s ejecutivos', '3', '2014-05-26 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('101', 'EL GRAN SOMBRERO', 'CARLOS CABRAL', 'Coahuila', 'Torreón', '4', 'ggggggggggg', '35150', '8712-434410', '871-434410', 'carloscabralv@hotmail.com', 'CAVC620721NI0', 'Negocio', '12-Meses', '365', '3700', '0', '3700', '123456', '../ImagenesAnuncios/101/avatar20864_7.jpg', '2014-05-31 18:22:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2', '20', 'CONFECCION Y VENTA DE SOMBREROS', '0', '2014-05-31 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('102', 'el loro', 'Jorge Hernandez', 'Estado de México', 'Acambay', '1', 'DFGSDFG', '0', '0155-14844130', '015-14844130', 'jorgewin07@gmail.com', 'LAMAS-884875', 'Negocio', '12-Meses', '365', '3700', '592', '4292', '', '../ImagenesAnuncios/102/slide-1-728.jpg', '2014-06-03 16:32:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '20', 'este es un ejercicio..................................', '0', '2014-06-03 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('103', 'pruebas', 'grace cuadrs', 'Morelos', 'Amacuzac', '1', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Negocio', '', '0', '0', '0', '0', '', '../ImagenesAnuncios/103/EP nuevo logo2.png', '2014-06-06 20:24:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '<html/>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('104', 'gracemaspruebas', 'graciela cuadros', 'Baja California Sur', 'Comondú', '1', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Pyme', '3-Meses', '90', '2200', '352', '2552', '', '../ImagenesAnuncios/104/camaras-celulares.jpg', '2014-07-19 11:23:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '<html/>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('105', 'gracemaspruebasnnn', 'graciela jlkskd', 'Campeche', 'Calakmul', '1', '', '0', '-', '-', 'gracobr@hotmail.com', '', null, null, null, null, null, null, '', '../ImagenesAnuncios/105/LOGO_mexico_nuevo.jpg', '2014-07-19 12:37:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', null, '<html/>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('106', 'pruevasIVA', 'grac hghg', 'Campeche', 'Calakmul', '1', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Negocio', '6-Meses', '180', '1900', '304', '2204', '', '../ImagenesAnuncios/106/aduana.jpg', '2014-07-19 19:46:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '20', '<html/>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('107', 'sc c', 'jshdbv jsjdv', 'Coahuila', 'Abasolo', '1', '', '0', '-', '-', 'mcnv@h', '', 'Negocio', '3-Meses', '90', '1000', '160', '1160', '', '../ImagenesAnuncios/107/Corona.png', '2014-07-22 22:52:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '20', '<html/>', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('109', 'graco', 'graco graco', 'Jalisco', 'Acatic', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Master', '12-Meses', '365', '12900', '2064', '14964', '', '../ImagenesAnuncios/109', '2014-09-07 17:41:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '5000', '', '0', '2014-09-07 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('110', 'pol', 'pol pol', 'Michoacán', 'Acuitzio', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Master', '3-Meses', '90', '4000', '640', '4640', '', '../ImagenesAnuncios/110', '2014-09-07 20:15:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '5000', '', '0', '2014-09-07 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('111', 'grace', 'grace  p', '31', 'Apozol', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', '', '6', '0', '3400', '544', '3944', '', '../ImagenesAnuncios/111', '2014-09-19 13:55:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('112', 'gracoprb', 'graco gb', '3', 'Palizada', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', '', '6', '0', '4000', '640', '4640', '', '../ImagenesAnuncios/112', '2014-09-19 13:57:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('113', 'gracobp', 'grac gr', '3', 'Calkiní', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', '', '6', '0', '4000', '640', '4640', '', '../ImagenesAnuncios/113', '2014-09-19 14:02:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('114', 'gracobp', 'grace ga', '12', 'Apaxtla', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Plus', '12-Meses', '365', '11500', '1840', '13340', '', '../ImagenesAnuncios/114', '2014-09-21 22:15:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '300', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('115', 'cuadros', 'grace cuadros', '9', 'Canatlán', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '12-Meses', '365', '7000', '1120', '8120', '', '../ImagenesAnuncios/115', '2014-09-21 22:23:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('116', 'gracobp', 'grace gb', '11', 'Abasolo', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '12-Meses', '360', '6300', '1008', '7308', '', '../ImagenesAnuncios/116', '2014-09-21 22:33:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('117', 'gracobp', 'grace fef', '9', 'Canatlán', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '12-Meses', '365', '7000', '1120', '8120', '', '../ImagenesAnuncios/117', '2014-09-21 23:02:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('118', 'cuatro', 'una dos', '14', 'Acatlán', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Plus', '3-Meses', '90', '3300', '528', '3828', '', '../ImagenesAnuncios/118', '2014-10-04 11:27:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '300', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('119', 'prueba', 'ju hu', '15', 'Acatic', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/119', '2014-10-04 12:50:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('120', 'grace prueass con logo nuevo', 'graco cuadros', '4', 'Calkiní', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Pyme', '6-Meses', '180', '4000', '640', '4640', '', '120/120logo.jpg', '2014-10-14 23:32:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '2014-10-14 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('121', 'luna', 'luna luna', '11', 'Acambay', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/121', '2014-10-21 00:23:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('122', 'luno', 'luno luno', '11', 'Acambay', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/122', '2014-10-21 00:31:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('123', 'olo', 'olo olo', '11', '321', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Negocio', '3-Meses', '90', '1000', '160', '1160', '', '../ImagenesAnuncios/123', '2014-10-21 00:43:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '20', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('124', 'ilo', 'hla lol', '11', 'Almoloya de Alquisiras', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/124', '2014-10-21 00:58:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('125', 'limo', 'pol pal', '11', '', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/125', '2014-10-21 01:02:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('126', 'idmun', 'muid munid', '3', 'Comondú', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Plus', '12-Meses', '365', '11500', '1840', '13340', '', '../ImagenesAnuncios/126', '2014-10-21 01:10:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '300', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('127', 'polo', 'tres dos', '4', 'Calakmul', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '12-Meses', '365', '7000', '1120', '8120', '', '../ImagenesAnuncios/127', '2014-10-21 01:12:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('128', 'lol', 'lol lol', '5', 'Acacoyagua', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/128', '2014-10-21 01:48:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('129', 'plo', 'Pol pol', '7', 'Villa Unión', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '12-Meses', '360', '6300', '1008', '7308', '', '../ImagenesAnuncios/129', '2014-10-21 01:51:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('130', 'uilo', 'yu yu', '17', 'Temoac', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/130', '2014-10-21 01:58:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('131', 'jhhgdh', 'grace cgrsdr', '18', 'Acaponeta', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '3-Meses', '90', '1750', '280', '2030', '', '../ImagenesAnuncios/131', '2014-10-21 02:00:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('132', 'oo', 'ho oj', '18', 'Acaponeta', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Plus', '12-Meses', '365', '11500', '1840', '13340', '', '../ImagenesAnuncios/132', '2014-10-21 02:02:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '300', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('133', 'uno', 'uno no', '17', 'Puente de Ixtla', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/133', '2014-10-21 02:05:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('134', 'ujuh', 'ju ju', '16', 'Acuitzio', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/134', '2014-10-21 02:07:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('135', 'patiro', 'pato patin ', '16', 'Acuitzio', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/135', '2014-10-21 02:09:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('136', 'jdnvjfbv', 'lun nbhdb', '17', '886', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/136', '2014-10-21 02:11:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('137', 'ju', 'hu huh', '5', '33', '0', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/137', '2014-10-21 02:17:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('138', 'ggg', 'hola ji', '2', 'Ensenada', '0', 'hvg', '0', '-', '-', 'gabinocuadros@hotmail.com', 'ggg', 'Micro', '3-Meses', '90', '1750', '280', '2030', '', '../ImagenesAnuncios/138', '2014-10-24 12:27:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('139', 'luna', 'grace lun', 'Chihuahua', 'Ahumada', '149', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Pyme', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/139', '2014-10-28 15:38:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('140', 'luna', 'grace ola', 'Chiapas', 'Acacoyagua', '33', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Pyme', '12-Meses', '365', '7000', '1120', '8120', '', '../ImagenesAnuncios/140', '2014-10-29 10:34:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('141', 'lina', 'grace lo', '', 'Amacuzac', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/141', '2014-10-30 16:31:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('142', 'luna', 'lolo lo', '', 'Alvaro Obregón', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/142', '2014-10-30 16:32:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('143', 'usua', 'hagh usua', '', 'Villa Unión', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/143', '2014-10-30 17:01:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('144', 'rico', 'luna lunas', '', 'Acatlán', '0', 'mario colin', '0', '555-555', '45-45', 'gracobr@hotmail.com', 'gacg800910', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/144', '2014-10-30 17:06:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('145', 'tres', 'uno dos', '', 'Acatic', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/145', '2014-10-30 17:08:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('146', 'tre', 're re', '', 'Amacuzac', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/146', '2014-10-30 17:12:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('147', 'usu', 'uno ape', '', 'Acacoyagua', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/147', '2014-10-30 17:15:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('148', 'ubp', 'uuddisis djsi', '', 'Acacoyagua', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/148', '2014-10-30 17:21:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('149', 'yu', 'frfr jdghsgfj cd', '', 'Calkiní', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/149', '2014-10-30 17:23:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('150', 'grace', 'gygy usuuudud', 'Nayarit', 'San Blas', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/150', '2014-10-30 17:28:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('151', 'SCBHD', 'uno USUSO', 'Chiapas', 'Acacoyagua', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/151', '2014-10-30 17:30:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('152', 'ahumada', 'LUNES MART', 'Chihuahua', 'Ahumada', '0', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/152', '2014-10-30 17:41:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('153', 'uno', 'uno dos ', 'Chihuahua', 'Ahumada', '149', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/153', '2014-10-30 17:50:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('154', 'rio', 'uno ds', 'Chiapas', 'Acacoyagua', '33', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/154', '2014-10-30 17:56:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `empresas` VALUES ('155', 'la prueba estados', 'grace gabino', 'Estado de México', 'Acolman', '320', 'mario colin', '54060', '0155-55650851', '044-5517669041', 'gracobr@hotmail.com', 'gacg800910', 'Micro', '6-Meses', '180', '3400', '544', '3944', 'www.e-perfect.com.mx', '../ImagenesAnuncios/155', '2014-11-02 14:13:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('156', 'prueba', 'grace dos', 'Campeche', 'Calkiní', '22', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/156', '2014-11-02 14:55:48', '2014-11-02 14:11:16', '2015-05-01 15:05:16', '0', '50', '', '3', '2014-11-02 00:00:00', 'Vigente', '0');
INSERT INTO `empresas` VALUES ('157', 'lola pr', 'lola pol', 'Michoac', 'Briseñas', '785', '', '0', '-', '-', 'gracobr@hotmail', '', 'Pyme', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/157', '2014-11-02 16:01:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '2014-11-02 00:00:00', 'Vencido', '0');
INSERT INTO `empresas` VALUES ('158', 'en espere', 'cuatro lop', 'Estado de México', 'Aculco', '319', '', '0', '-', '-', 'gracobr@hot', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/158', '2014-11-02 16:11:41', '2014-11-02 16:11:52', '2015-05-01 17:05:52', '1', '50', '', '3', '2014-11-02 00:00:00', 'vigente', '0');
INSERT INTO `empresas` VALUES ('159', 'local', 'local clar', 'Tamaulipas', 'Jiménez', '1991', '', '0', '-', '-', 'gracobr@gmail.com', '', 'Micro', '6-Meses', '180', '3400', '544', '3944', '', '../ImagenesAnuncios/159', '2014-11-06 15:20:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '2014-11-06 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('160', 'yyyyyyyyy', 'yy yyy', 'Distrito Federal', 'Gustavo A. Madero', '270', '', '54060', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/160', '2014-12-15 19:26:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('161', 'seismilnovecientos', 'seismilnovecientos seis', 'Nuevo León', 'General Escobedo', '958', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Pyme', '12-Meses', '365', '6900', '1104', '8004', '', '../ImagenesAnuncios/161', '2015-01-03 01:20:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('162', 'PRUEBA MARTES', 'PRUEBA GRACE PRIII', 'Chiapas', 'Acacoyagua', '33', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/162', '2015-02-03 20:21:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('163', 'isjfidn', 'knfj ihfihg', 'Morelos', 'Amacuzac', '886', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '12-Meses', '365', '5900', '944', '6844', '', '../ImagenesAnuncios/163', '2015-02-03 20:37:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('164', 'ISASHFJF', 'ksafj igb', 'Baja California Sur', 'Comondú', '17', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '12-Meses', '365', '5900', '944', '6844', '', '../ImagenesAnuncios/164', '2015-02-03 21:08:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('165', 'KSNVJFN', 'MA VF LMBFK', 'Chiapas', 'Acacoyagua', '33', '', '0', '-', '-', 'gabinocuadros@hotmail.com', 'KNVJFB', 'Micro', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/165', '2015-02-03 21:10:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('166', 'KSANVJD', 'SJFDJ FUDGU', 'Michoac', 'Acuitzio', '775', '', '0', '-', '-', 'gabinocuadros@hotmail.com', '', 'Micro', '6-Meses', '180', '4000', '640', '4640', '', '../ImagenesAnuncios/166', '2015-02-03 21:14:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('167', 'grace pruebas', 'grace ga', 'Michoac', 'Acuitzio', '775', '', '54060', '-', '-', 'gabinocuadros@hotmail.com', '', 'Negocio', '6-Meses', '180', '3000', '480', '3480', '', '../ImagenesAnuncios/167', '2015-03-12 12:11:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '20', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('168', 'uno', 'grace cuadros', 'Campeche', 'Calakmul', '31', '', '0', '-', '-', 'gracobr@hotmail.com', '', 'Micro', '12-Meses', '365', '5900', '944', '6844', '', '../ImagenesAnuncios/168', '2015-03-30 12:21:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '50', '', '0', '0000-00-00 00:00:00', 'En espera auto', '0');
INSERT INTO `empresas` VALUES ('169', 'skdkvjf', 'graciela cuadros', 'Michoac', 'Acuitzio', '775', 'm vj', '0', '-', '-', 'lili@hotmail.com', 'c nv nv', 'Pyme', '12-Meses', '365', '6900', '1104', '8004', '', '../ImagenesAnuncios/169', '2015-05-02 15:18:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '100', '<html/>', '0', '2015-05-02 00:00:00', 'En espera auto', '0');

-- ----------------------------
-- Table structure for `envio_pedidos`
-- ----------------------------
DROP TABLE IF EXISTS `envio_pedidos`;
CREATE TABLE `envio_pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `total` double NOT NULL,
  `id_empresa_vendedor` int(11) NOT NULL,
  `id_vendedor` int(4) NOT NULL,
  `id_empresa_comprador` int(11) NOT NULL,
  `id_comprador` int(4) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  `apellido` varchar(40) CHARACTER SET utf8 NOT NULL,
  `estado` varchar(30) CHARACTER SET utf8 NOT NULL,
  `municipio` varchar(30) CHARACTER SET utf8 NOT NULL,
  `colonia` varchar(35) CHARACTER SET utf8 NOT NULL,
  `calle` varchar(35) CHARACTER SET utf8 NOT NULL,
  `entre_calle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `y_calle` varchar(50) CHARACTER SET utf8 NOT NULL,
  `no_ext` varchar(4) CHARACTER SET utf8 NOT NULL,
  `no_int` varchar(4) CHARACTER SET utf8 NOT NULL,
  `cp` int(5) NOT NULL,
  `telefono` varchar(12) CHARACTER SET utf8 NOT NULL,
  `correo` varchar(40) CHARACTER SET utf8 NOT NULL,
  `referencias` varchar(300) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of envio_pedidos
-- ----------------------------
INSERT INTO `envio_pedidos` VALUES ('14', '1934665', '3285', '5', '0', '0', '71', 'Abigail Sarahi ', 'Leyva Rosales', 'Oaxaca', 'Acatlán de Pérez Figueroa', 'Conocida', 'Conocida', 'Conocida 2', 'Conocida 3', '1', '0', '1', '000000000001', 'llera1705@hotmail.com', 'Por aqu');
INSERT INTO `envio_pedidos` VALUES ('10', '1934665', '160', '5', '0', '0', '71', 'J', 'K', 'Campeche', 'Escárcega', '', '', '', '', '', '', '9', '8', '', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('13', '1934665', '160', '5', '0', '0', '71', 'Abigail Sarahi ', 'Leyva Rosales', 'Michoacán de Ocampo', 'Chavinda', 'Ygf', 'Kjbk', 'Kvbkh', 'Kh', 'bvk', 'Bk', '98769', '976786345678', 'llera1705@hotmail.com', '     jgfvu   	  ');
INSERT INTO `envio_pedidos` VALUES ('11', '1934665', '160', '5', '0', '0', '71', 'J', 'K', 'Campeche', 'Escárcega', '', '', '', '', '', '', '9', '8', '', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('12', '1934665', '160', '5', '0', '0', '71', 'Abigail Sarahi ', 'Leyva Rosales', 'Colima', 'Cuauhtémoc', 'Ygf', 'Kjbk', 'Kvbkh', 'Kh', 'bvk', 'Bk', '98769', '976786345678', 'llera1705@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('8', '1934665', '160', '5', '0', '0', '71', 'J', 'K', 'Campeche', 'Escárcega', '', '', '', '', '', '', '9', '8', '', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('9', '1934665', '160', '5', '0', '0', '71', 'J', 'K', 'Campeche', 'Escárcega', '', '', '', '', '', '', '9', '8', '', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('15', '1048858', '839', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'México', 'Coacalco de Berriozábal', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '    EL Modulo de policias    	  ');
INSERT INTO `envio_pedidos` VALUES ('16', '6416590', '25', '27', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('17', '4752660', '25', '27', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('18', '1778541', '839', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('19', '7404611', '839', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('20', '368494', '1238', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('21', '2668528', '4860', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('22', '1613513', '4860', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('23', '4675196', '4860', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('24', '5934705', '4860', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('25', '1561803', '4860', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'M', 'Acambay', 'San Rafael', 'P Dorantes', 'J M Pav', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('26', '6030209', '10950', '6', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Chiapas', 'Acacoyagua', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('27', '3772156', '0', '56', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('28', '9232695', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('29', '1982763', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('30', '6313792', '0', '6', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('31', '6952660', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('32', '4138573', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('33', '2303523', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('34', '3178864', '0', '71', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('35', '3178864', '0', '71', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('36', '6772735', '0', '6', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('37', '6772735', '0', '6', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('38', '9531546', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('39', '9531546', '0', '4', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('40', '1570061', '0', '55', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('41', '2202331', '0', '55', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('42', '9031737', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'San Rafael', 'P Dorantes', 'J M Pavón', 'M Flores', 'D', '302', '55719', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('49', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '0', '', '', '');
INSERT INTO `envio_pedidos` VALUES ('48', '2963981', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('46', '4805469', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('47', '2963981', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('50', '1816779', '0', '55', '0', '0', '100', 'Carlos', 'Cabral', 'Durango', 'Lerdo', 'Centro', 'Juarez', 'Aldama', 'Cuauhtemoc', '173', '0', '35150', '8712434410', 'carloscabralv@gmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('51', '3357984', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Michoacán', 'Acuitzio', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('52', '3987852', '0', '83', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('53', '5194045', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('54', '3575360', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('55', '6472247', '0', '56', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', 'Nuevo León', 'Abasolo', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');
INSERT INTO `envio_pedidos` VALUES ('56', '548706', '0', '91', '0', '0', '73', 'Graciela Cuadros', 'Cuadros', '2', 'Ensenada', 'F', 'G', 'G', 'M Flores', '3', '3', '55555', '5558911365', 'gabinocuadros@hotmail.com', '        	  ');

-- ----------------------------
-- Table structure for `envios_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `envios_empresas`;
CREATE TABLE `envios_empresas` (
  `id_envio` int(10) NOT NULL,
  `id_empresa` int(8) NOT NULL,
  `compania` varchar(30) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id_envio`,`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of envios_empresas
-- ----------------------------
INSERT INTO `envios_empresas` VALUES ('1', '4', 'aeroflash', 'http://www.aeroflash.com.mx/');
INSERT INTO `envios_empresas` VALUES ('1', '103', 'aeroflash', 'http://www.aeroflash.com.mx/');
INSERT INTO `envios_empresas` VALUES ('2', '4', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '19', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '28', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '42', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '55', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '81', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '82', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '83', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '84', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '85', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '87', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '92', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '95', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '98', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '101', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('2', '102', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `envios_empresas` VALUES ('3', '3', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '4', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '5', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '6', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '9', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '19', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '28', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '42', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '55', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '83', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '85', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '87', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '90', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '91', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '92', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '95', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '98', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '102', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('3', '103', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `envios_empresas` VALUES ('4', '4', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '9', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '56', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '81', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '82', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '87', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '90', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '95', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '98', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('4', '102', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `envios_empresas` VALUES ('5', '4', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '9', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '19', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '55', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '56', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '91', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('5', '102', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `envios_empresas` VALUES ('6', '4', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('6', '56', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('6', '83', 'redpack', 'r');
INSERT INTO `envios_empresas` VALUES ('6', '90', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('6', '91', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('6', '102', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('6', '103', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `envios_empresas` VALUES ('7', '4', 'ups', 'http://www.ups.com/content/mx/es/index.jsx');
INSERT INTO `envios_empresas` VALUES ('7', '84', 'ups', 'http://www.ups.com/content/mx/es/index.jsx');
INSERT INTO `envios_empresas` VALUES ('7', '102', 'ups', 'http://www.ups.com/content/mx/es/index.jsx');
INSERT INTO `envios_empresas` VALUES ('8', '4', 'pakmail', 'http://www.pakmail.com.mx/');
INSERT INTO `envios_empresas` VALUES ('8', '83', 'pakmail', 'p');
INSERT INTO `envios_empresas` VALUES ('8', '85', 'pakmail', 'http://www.pakmail.com.mx/');
INSERT INTO `envios_empresas` VALUES ('8', '102', 'pakmail', 'http://www.pakmail.com.mx/');

-- ----------------------------
-- Table structure for `estados`
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  `imagen_estado` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados
-- ----------------------------
INSERT INTO `estados` VALUES ('1', 'Aguascalientes', 'img_edos/Aguascalientes.png');
INSERT INTO `estados` VALUES ('2', 'Baja California', 'img_edos/Baja_California.png');
INSERT INTO `estados` VALUES ('3', 'Baja California Sur', 'img_edos/Baja_California_Sur.png');
INSERT INTO `estados` VALUES ('4', 'Campeche', 'img_edos/Campeche.png');
INSERT INTO `estados` VALUES ('5', 'Chiapas', 'img_edos/Chiapas.png');
INSERT INTO `estados` VALUES ('6', 'Chihuahua', 'img_edos/Chihuahua.png');
INSERT INTO `estados` VALUES ('7', 'Coahuila', 'img_edos/Coahuila.png');
INSERT INTO `estados` VALUES ('8', 'Colima', 'img_edos/Colima.png');
INSERT INTO `estados` VALUES ('9', 'Distrito Federal', 'img_edos/Distrito_Federal.png');
INSERT INTO `estados` VALUES ('10', 'Durango', 'img_edos/Durango.png');
INSERT INTO `estados` VALUES ('11', 'Estado de México', 'img_edos/Mexico.png');
INSERT INTO `estados` VALUES ('12', 'Guanajuato', 'img_edos/Guanajuato.png');
INSERT INTO `estados` VALUES ('13', 'Guerrero', 'img_edos/Guerrero.png');
INSERT INTO `estados` VALUES ('14', 'Hidalgo', 'img_edos/Hidalgo.png');
INSERT INTO `estados` VALUES ('15', 'Jalisco', 'img_edos/Jalisco.png');
INSERT INTO `estados` VALUES ('16', 'Michoac', 'img_edos/Michoacan.png');
INSERT INTO `estados` VALUES ('17', 'Morelos', 'img_edos/Morelos.png');
INSERT INTO `estados` VALUES ('18', 'Nayarit', 'img_edos/Nayarit.png');
INSERT INTO `estados` VALUES ('19', 'Nuevo León', 'img_edos/Nuevo_Leon.png');
INSERT INTO `estados` VALUES ('20', 'Oaxaca', 'img_edos/Oaxaca.png');
INSERT INTO `estados` VALUES ('21', 'Puebla', 'img_edos/Puebla.png');
INSERT INTO `estados` VALUES ('22', 'Querétaro', 'img_edos/Queretaro.png');
INSERT INTO `estados` VALUES ('23', 'Quintana Roo', 'img_edos/Quintana_Roo.png');
INSERT INTO `estados` VALUES ('24', 'San Luis Potos', 'img_edos/San_Luis_Potosi.png');
INSERT INTO `estados` VALUES ('25', 'Sinaloa', 'img_edos/Sinaloa.png');
INSERT INTO `estados` VALUES ('26', 'Sonora', 'img_edos/Sonora.png');
INSERT INTO `estados` VALUES ('27', 'Tabasco', 'img_edos/Tabasco.png');
INSERT INTO `estados` VALUES ('28', 'Tamaulipas', 'img_edos/Tamaulipas.png');
INSERT INTO `estados` VALUES ('29', 'Tlaxcala', 'img_edos/Tlaxcala.png');
INSERT INTO `estados` VALUES ('30', 'Veracruz', 'img_edos/Veracruz.png');
INSERT INTO `estados` VALUES ('31', 'Yucatán', 'img_edos/Yucatan.png');
INSERT INTO `estados` VALUES ('32', 'Zacatecas', 'img_edos/Zacatecas.png');

-- ----------------------------
-- Table structure for `estados_del_admin`
-- ----------------------------
DROP TABLE IF EXISTS `estados_del_admin`;
CREATE TABLE `estados_del_admin` (
  `numero_referencia` varchar(20) NOT NULL,
  `estado` int(3) NOT NULL,
  `region` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of estados_del_admin
-- ----------------------------
INSERT INTO `estados_del_admin` VALUES ('2626307', '9', '1');
INSERT INTO `estados_del_admin` VALUES ('2626307', '9', '3');
INSERT INTO `estados_del_admin` VALUES ('2626307', '15', '5');
INSERT INTO `estados_del_admin` VALUES ('2626307', '15', '9');
INSERT INTO `estados_del_admin` VALUES ('2626307', '15', '11');
INSERT INTO `estados_del_admin` VALUES ('2626307', '15', '12');
INSERT INTO `estados_del_admin` VALUES ('2626307', '15', '16');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '1');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '2');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '3');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '4');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '5');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '6');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '7');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '8');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '9');
INSERT INTO `estados_del_admin` VALUES ('2626281', '16', '10');
INSERT INTO `estados_del_admin` VALUES ('12345', '5', '1');
INSERT INTO `estados_del_admin` VALUES ('12345', '5', '2');
INSERT INTO `estados_del_admin` VALUES ('12345', '5', '3');
INSERT INTO `estados_del_admin` VALUES ('12345', '5', '4');
INSERT INTO `estados_del_admin` VALUES ('12345', '5', '5');
INSERT INTO `estados_del_admin` VALUES ('1234', '12', '4');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '1');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '2');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '3');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '4');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '5');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '6');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '7');
INSERT INTO `estados_del_admin` VALUES ('2626265', '20', '8');
INSERT INTO `estados_del_admin` VALUES ('2626282', '9', '1');
INSERT INTO `estados_del_admin` VALUES ('2626282', '9', '2');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '1');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '2');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '3');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '4');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '5');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '6');
INSERT INTO `estados_del_admin` VALUES ('2626308', '31', '7');
INSERT INTO `estados_del_admin` VALUES ('2626309', '27', '1');
INSERT INTO `estados_del_admin` VALUES ('2626309', '27', '2');
INSERT INTO `estados_del_admin` VALUES ('2626309', '27', '3');
INSERT INTO `estados_del_admin` VALUES ('2626309', '27', '4');
INSERT INTO `estados_del_admin` VALUES ('2626309', '27', '5');

-- ----------------------------
-- Table structure for `fotos_producto`
-- ----------------------------
DROP TABLE IF EXISTS `fotos_producto`;
CREATE TABLE `fotos_producto` (
  `folio_anuncio` int(10) NOT NULL,
  `url_foto1` varchar(50) NOT NULL,
  `url_foto2` varchar(50) DEFAULT NULL,
  `url_foto3` varchar(50) DEFAULT NULL,
  `url_foto4` varchar(50) DEFAULT NULL,
  `url_foto5` varchar(50) DEFAULT NULL,
  `url_foto6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fotos_producto
-- ----------------------------
INSERT INTO `fotos_producto` VALUES ('38', 'gabinocuadros@hotmail.com/381.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_producto` VALUES ('39', 'gabinocuadros@hotmail.com/391.jpg', 'null', 'null', 'null', 'null', 'null');

-- ----------------------------
-- Table structure for `fotos_productos_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `fotos_productos_empresas`;
CREATE TABLE `fotos_productos_empresas` (
  `folio_producto` int(8) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  `url_foto1` varchar(100) NOT NULL,
  `url_foto2` varchar(100) NOT NULL,
  `url_foto3` varchar(100) NOT NULL,
  `url_foto4` varchar(100) NOT NULL,
  `url_foto5` varchar(100) NOT NULL,
  `url_foto6` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fotos_productos_empresas
-- ----------------------------
INSERT INTO `fotos_productos_empresas` VALUES ('15', '5', '5/151.jpg', '5/152.jpg', '5/153.png', '5/154.png', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('16', '6', '6/161.jpg', '6/162.jpg', '6/163.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('17', '6', '6/171.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('18', '6', '6/181.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('19', '6', '6/191.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('20', '6', '6/201.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('21', '5', '5/211.png', '5/212.jpg', '5/213.JPG', '5/214.png', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('22', '6', '6/221.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('23', '6', '6/231.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('24', '6', '6/241.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('25', '6', '6/251.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('26', '6', '6/261.png', '6/262.png', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('27', '5', '5/271.JPG', '5/272.jpg', '5/273.png', '5/274.png', '5/275.jpg', '5/276.png');
INSERT INTO `fotos_productos_empresas` VALUES ('28', '6', '6/281.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('35', '6', '6/351.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('36', '5', '5/361.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('37', '6', '6/371.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('38', '5', '5/381.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('39', '5', '5/391.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('40', '5', '5/401.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('41', '5', '5/411.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('42', '5', '5/421.JPG', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('43', '5', '5/431.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('56', '19', '19/561.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('57', '19', '19/571.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('60', '19', '19/601.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('61', '19', '19/611.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('65', '27', '27/651.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('66', '27', '27/661.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('67', '27', '27/671.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('68', '27', '27/681.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('69', '27', '27/691.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('70', '27', '27/701.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('71', '27', '27/711.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('72', '27', '27/721.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('73', '27', '27/731.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('74', '27', '27/741.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('75', '27', '27/751.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('77', '31', '31/771.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('78', '28', '28/781.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('79', '28', '28/791.jpg', '28/792.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('80', '28', '28/801.jpg', '28/802.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('81', '28', '28/811.jpg', '28/812.jpg', '28/813.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('82', '28', '28/821.jpg', '28/822.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('83', '27', '27/831.jpg', '27/832.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('84', '27', '27/841.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('85', '27', '27/851.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('86', '27', '27/861.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('87', '37', '37/871.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('88', '37', '37/881.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('89', '37', '37/891.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('90', '37', '37/901.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('91', '37', '37/911.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('92', '37', '37/921.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('93', '37', '37/931.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('94', '37', '37/941.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('95', '37', '37/951.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('97', '42', '42/971.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('98', '42', '42/981.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('99', '42', '42/991.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('100', '42', '42/1001.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('101', '42', '42/1011.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('102', '42', '42/1021.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('103', '42', '42/1031.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('104', '42', '42/1041.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('105', '42', '42/1051.jpg', 'null', 'null', '42/1054.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('106', '42', '42/1061.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('107', '42', '42/1071.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('108', '42', '42/1081.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('109', '42', '42/1091.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('110', '42', '42/1101.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('111', '42', '42/1111.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('112', '42', '42/1121.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('113', '42', '42/1131.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('114', '42', '42/1141.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('117', '37', '37/1171.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('118', '37', '37/1181.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('119', '37', '37/1191.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('120', '37', '37/1201.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('121', '37', '37/1211.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('122', '37', '37/1221.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('123', '37', '37/1231.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('124', '37', '37/1241.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('125', '37', '37/1251.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('126', '55', '55/1261.png', '55/1262.jpg', '55/1263.png', '55/1264.png', '55/1265.png', '55/1266.png');
INSERT INTO `fotos_productos_empresas` VALUES ('127', '55', '55/1271.jpg', '55/1272.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('128', '55', '55/1281.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('129', '55', '55/1291.jpg', '55/1292.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('130', '55', '55/1301.png', '55/1302.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('131', '55', '55/1311.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('132', '50', '50/1321.jpg', '50/1322.jpg', '50/1323.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('133', '56', '56/1331.jpg', '56/1332.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('135', '56', '56/1351.jpg', '56/1352.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('138', '56', '56/1381.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('139', '56', '56/1391.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('140', '56', '56/1401.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('141', '55', '55/1411.png', '55/1412.png', '55/1413.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('142', '56', '56/1421.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('143', '56', '56/1431.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('144', '56', '56/1441.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('145', '55', '55/1451.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('146', '56', '56/1461.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('147', '55', '55/1471.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('148', '56', '56/1481.jpg', '56/1482.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('149', '56', '56/1491.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('150', '55', '55/1501.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('151', '56', '56/1511.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('152', '55', '55/1521.png', '55/1522.png', '55/1523.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('153', '56', '56/1531.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('154', '56', '56/1541.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('155', '56', '56/1551.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('156', '55', '55/1561.jpg', '55/1562.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('157', '56', '56/1571.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('158', '56', '56/1581.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('159', '56', '56/1591.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('160', '56', '56/1601.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('161', '56', '56/1611.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('162', '56', '56/1621.jpg', '56/1622.jpg', '56/1623.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('163', '56', '56/1631.jpg', '56/1632.jpg', '56/1633.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('164', '56', '56/1641.jpg', '56/1642.jpg', '56/1643.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('165', '56', '56/1651.jpg', '56/1652.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('166', '56', '56/1661.jpg', '56/1662.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('167', '56', '56/1671.jpg', '56/1672.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('168', '56', '56/1681.jpg', '56/1682.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('169', '56', '56/1691.jpg', '56/1692.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('170', '56', '56/1701.jpg', '56/1702.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('171', '56', '56/1711.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('173', '56', '56/1731.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('174', '56', '56/1741.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('175', '56', '56/1751.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('176', '56', '56/1761.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('177', '56', '56/1771.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('178', '56', '56/1781.jpg', '56/1782.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('179', '56', '56/1791.jpg', '56/1792.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('180', '56', '56/1801.jpg', '56/1802.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('181', '56', '56/1811.jpg', '56/1812.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('182', '56', '56/1821.jpg', '56/1822.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('183', '56', '56/1831.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('184', '56', '56/1841.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('185', '56', '56/1851.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('186', '56', '56/1861.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('187', '56', '56/1871.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('188', '56', '56/1881.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('189', '56', '56/1891.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('190', '56', '56/1901.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('191', '56', '56/1911.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('192', '56', '56/1921.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('193', '56', '56/1931.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('194', '56', '56/1941.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('195', '56', '56/1951.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('196', '56', '56/1961.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('197', '56', '56/1971.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('198', '56', '56/1981.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('199', '56', '56/1991.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('200', '56', '56/2001.jpg', '56/2002.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('201', '56', '56/2011.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('202', '56', '56/2021.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('203', '56', '56/2031.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('204', '56', '56/2041.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('205', '56', '56/2051.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('207', '56', '56/2071.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('208', '56', '56/2081.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('209', '56', '56/2091.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('211', '56', '56/2111.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('212', '56', '56/2121.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('213', '56', '56/2131.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('214', '56', '56/2141.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('216', '56', '56/2161.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('217', '56', '56/2171.jpg', 'Coloca una foto', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('218', '56', '56/2181.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('219', '56', '56/2191.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('220', '56', '56/2201.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('221', '56', '56/2211.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('222', '56', '56/2221.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('223', '56', '56/2231.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('224', '56', '56/2241.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('225', '56', '56/2251.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('226', '56', '56/2261.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('227', '56', '56/2271.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('228', '56', '56/2281.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('229', '56', '56/2291.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('230', '56', '56/2301.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('231', '56', '56/2311.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('232', '56', '56/2321.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('233', '56', '56/2331.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('234', '56', '56/2341.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('235', '56', '56/2351.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('236', '56', '56/2361.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('237', '56', '56/2371.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('238', '56', '56/2381.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('239', '56', '56/2391.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('240', '56', '56/2401.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('241', '56', '56/2411.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('242', '56', '56/2421.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('243', '56', '56/2431.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('244', '56', '56/2441.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('245', '56', '56/2451.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('246', '56', '56/2461.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('247', '56', '56/2471.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('263', '65', '65/2631.jpg', '65/2632.jpg', '65/2633.jpg', '65/2634.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('264', '65', '65/2641.jpg', '65/2642.jpg', '65/2643.jpg', '65/2644.jpg', '65/2645.jpg', '65/2646.jpg');
INSERT INTO `fotos_productos_empresas` VALUES ('265', '65', '65/2651.jpg', '65/2652.jpg', '65/2653.jpg', '65/2654.jpg', '65/2655.jpg', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('268', '81', '81/2681.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('269', '81', '81/2691.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('270', '81', '81/2701.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('271', '82', '82/2711.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('272', '82', '82/2721.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('273', '82', '82/2731.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('274', '82', '82/2741.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('275', '82', '82/2751.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('276', '82', '82/2761.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('277', '82', '82/2771.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('278', '83', '83/2781.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('284', '65', '65/2841.jpg', '65/2842.jpg', '65/2843.jpg', '65/2844.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('285', '65', '65/2851.jpg', '65/2852.jpg', '65/2853.jpg', '65/2854.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('286', '65', '65/2861.jpg', '65/2862.jpg', '65/2863.jpg', '65/2864.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('287', '65', '65/2871.jpg', '65/2872.jpg', '65/2873.jpg', '65/2874.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('288', '65', '65/2881.jpg', '65/2882.jpg', '65/2883.jpg', '65/2884.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('289', '65', '65/2891.jpg', '65/2892.jpg', '65/2893.jpg', '65/2894.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('290', '81', '81/2901.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('291', '84', '84/2911.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('292', '84', '84/2921.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('293', '85', '85/2931.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('294', '81', '81/2941.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('296', '81', '81/2961.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('297', '85', '85/2971.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('298', '84', '84/2981.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('299', '85', '85/2991.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('300', '85', '85/3001.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('301', '84', '84/3011.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('302', '81', '81/3021.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('303', '85', '85/3031.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('304', '81', '81/3041.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('305', '81', '81/3051.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('306', '84', '84/3061.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('307', '85', '85/3071.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('308', '84', '84/3081.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('309', '81', '81/3091.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('310', '84', '84/3101.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('311', '84', '84/3111.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('312', '84', '84/3121.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('313', '84', '84/3131.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('314', '87', '87/3141.jpg', '87/3142.jpg', '87/3143.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('315', '87', '87/3151.jpg', '87/3152.png', '87/3153.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('316', '84', '84/3161.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('317', '87', '87/3171.jpg', '87/3172.jpg', '87/3173.jpg', '87/3174.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('318', '84', '84/3181.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('319', '87', '87/3191.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('320', '83', '83/3201.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('321', '83', '83/3211.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('322', '83', '83/3221.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('323', '83', '83/3231.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('324', '83', '83/3241.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('325', '83', '83/3251.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('326', '83', '83/3261.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('327', '83', '83/3271.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('328', '83', '83/3281.jpg', '83/3282.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('329', '83', '83/3291.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('330', '83', '83/3301.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('331', '83', '83/3311.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('332', '83', '83/3321.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('333', '83', '83/3331.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('334', '83', '83/3341.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('335', '83', '83/3351.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('336', '83', '83/3361.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('337', '83', '83/3371.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('338', '83', '83/3381.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('339', '83', '83/3391.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('340', '83', '83/3401.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('341', '83', '83/3411.jpg', '83/3412.jpg', '83/3413.jpg', '83/3414.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('342', '83', '83/3421.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('343', '83', '83/3431.jpg', '83/3432.jpg', '83/3433.jpg', '83/3434.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('347', '83', '83/3471.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('348', '83', '83/3481.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('349', '83', '83/3491.jpg', '83/3492.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('350', '83', '83/3501.jpg', '83/3502.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('351', '83', '83/3511.jpg', '83/3512.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('352', '83', '83/3521.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('353', '83', '83/3531.jpg', '83/3532.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('354', '84', '84/3541.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('355', '83', '83/3551.jpg', '83/3552.jpg', '83/3553.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('356', '83', '83/3561.jpg', '83/3562.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('357', '84', '84/3571.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('358', '83', '83/3581.jpg', '83/3582.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('359', '83', '83/3591.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('360', '83', '83/3601.jpg', 'Coloca una foto', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('361', '83', '83/3611.jpg', '83/3612.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('362', '83', '83/3621.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('363', '83', '83/3631.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('364', '83', '83/3641.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('365', '83', '83/3651.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('366', '83', '83/3661.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('367', '83', '83/3671.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('368', '83', '83/3681.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('369', '83', '83/3691.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('370', '90', '90/3701.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('374', '91', '91/3741.JPG', '91/3742.JPG', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('375', '91', '91/3751.JPG', '91/3752.JPG', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('376', '65', '65/3761.jpg', '65/3762.jpg', '65/3763.jpg', '65/3764.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('377', '65', '65/3771.jpg', '65/3772.jpg', '65/3773.jpg', '65/3774.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('378', '65', '65/3781.JPG', '65/3782.JPG', '65/3783.jpg', '65/3784.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('379', '65', '65/3791.jpg', '65/3792.jpg', '65/3793.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('380', '65', '65/3801.jpg', '65/3802.jpg', '65/3803.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('381', '65', '65/3811.jpg', '65/3812.jpg', '65/3813.jpg', '65/3814.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('382', '65', '65/3821.jpg', '65/3822.jpg', '65/3823.jpg', '65/3824.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('383', '65', '65/3831.jpg', '65/3832.jpg', '65/3833.jpg', '65/3834.jpg', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('385', '90', '90/3851.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('386', '90', '90/3861.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('387', '90', '90/3871.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('388', '90', '90/3881.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('389', '90', '90/3891.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('390', '90', '90/3901.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('391', '90', '90/3911.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('392', '90', '90/3921.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('393', '83', '83/3931.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('394', '83', '83/3941.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('395', '83', '83/3951.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('396', '83', '83/3961.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('397', '83', '83/3971.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('398', '83', '83/3981.jpg', '83/3982.jpg', '83/3983.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('399', '83', '83/3991.jpg', '83/3992.jpg', '83/3993.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('400', '83', '83/4001.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('401', '83', '83/4011.jpg', '83/4012.jpg', '83/4013.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('402', '83', '83/4021.jpg', '83/4022.jpg', '83/4023.jpg', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('405', '95', '95/4051.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('406', '95', '95/4061.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('407', '95', '95/4071.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('408', '95', '95/4081.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('409', '95', '95/4091.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('410', '95', '95/4101.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('411', '95', '95/4111.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('412', '95', '95/4121.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('413', '95', '95/4131.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('414', '95', '95/4141.png', '95/4142.png', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('415', '95', '95/4151.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('416', '95', '95/4161.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('417', '95', '95/4171.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('418', '95', '95/4181.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('419', '95', '95/4191.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('420', '95', '95/4201.png', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('421', '98', '98/4211.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('422', '98', '98/4221.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('423', '98', '98/4231.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('424', '98', '98/4241.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('425', '98', '98/4251.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('426', '98', '98/4261.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('427', '98', '98/4271.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('428', '98', '98/4281.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('429', '98', '98/4291.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('430', '98', '98/4301.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('431', '98', '98/4311.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('432', '98', '98/4321.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('433', '98', '98/4331.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('438', '101', '101/4381.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('439', '101', '101/4391.jpg', '101/4392.jpg', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('440', '102', '102/4401.jpg', 'null', 'null', 'null', 'null', 'null');
INSERT INTO `fotos_productos_empresas` VALUES ('451', '158', '158/4511.png', 'null', 'null', 'null', 'null', 'null');

-- ----------------------------
-- Table structure for `funciones_admin`
-- ----------------------------
DROP TABLE IF EXISTS `funciones_admin`;
CREATE TABLE `funciones_admin` (
  `numero_referencia` varchar(20) NOT NULL,
  `funcion_tipo_us` varchar(8) NOT NULL,
  `clasificacion_fun` varchar(8) NOT NULL,
  `funcion` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of funciones_admin
-- ----------------------------
INSERT INTO `funciones_admin` VALUES ('1234', 'su', 'usu', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'su', 'usu', '2');
INSERT INTO `funciones_admin` VALUES ('1234', 'su', 'usu', '3');
INSERT INTO `funciones_admin` VALUES ('1234', 'su', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'adgees', 'ti', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'adgees', 'ti', '2');
INSERT INTO `funciones_admin` VALUES ('1234', 'adgees', 'pu', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'adgees', 'pu', '2');
INSERT INTO `funciones_admin` VALUES ('1234', 'co', 'pa', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'co', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'co', 'fa', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('1234', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('1234', 'ades', 'an', '3');
INSERT INTO `funciones_admin` VALUES ('00003', 'su', 'usu', '1');
INSERT INTO `funciones_admin` VALUES ('00003', 'su', 'usu', '2');
INSERT INTO `funciones_admin` VALUES ('00003', 'su', 'usu', '3');
INSERT INTO `funciones_admin` VALUES ('00003', 'adgees', 'ti', '1');
INSERT INTO `funciones_admin` VALUES ('00003', 'adgees', 'ti', '2');
INSERT INTO `funciones_admin` VALUES ('00003', 'co', 'pa', '1');
INSERT INTO `funciones_admin` VALUES ('00003', 'co', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('00003', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('00003', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('00003', 'ades', 'an', '3');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'usu', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'usu', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'usu', '3');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'pu', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'pu', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'pu', '3');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '3');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '4');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '5');
INSERT INTO `funciones_admin` VALUES ('22222', 'su', 'ba', '6');
INSERT INTO `funciones_admin` VALUES ('22222', 'adgees', 'ti', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'adgees', 'ti', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'adgees', 'pu', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'adgees', 'pu', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'co', 'pa', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'co', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'co', 'fa', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('22222', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('22222', 'ades', 'an', '3');
INSERT INTO `funciones_admin` VALUES ('22222', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626307', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626307', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('2626307', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626281', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626281', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('2626281', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('12345', 'adgees', 'ti', '1');
INSERT INTO `funciones_admin` VALUES ('12345', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('12345', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('12345', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626265', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626265', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('2626265', 'ades', 'an', '3');
INSERT INTO `funciones_admin` VALUES ('2626265', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626282', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626282', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('2626282', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626308', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626308', 'ades', 'an', '2');
INSERT INTO `funciones_admin` VALUES ('2626308', 'ades', 'em', '1');
INSERT INTO `funciones_admin` VALUES ('2626309', 'ades', 'an', '1');
INSERT INTO `funciones_admin` VALUES ('2626309', 'ades', 'em', '1');

-- ----------------------------
-- Table structure for `funciones_del_admin`
-- ----------------------------
DROP TABLE IF EXISTS `funciones_del_admin`;
CREATE TABLE `funciones_del_admin` (
  `numero_referencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `alta_usuario` int(2) NOT NULL,
  `modificar_usuario` int(2) NOT NULL,
  `eliminar_usuario` int(2) NOT NULL,
  `alta_tienda` int(2) NOT NULL,
  `baja_tienda` int(2) NOT NULL,
  `verificar_pagos` int(2) NOT NULL,
  `autorizar_anuncios` int(2) NOT NULL,
  `subir_anuncios` int(2) NOT NULL,
  `ver_empresa` int(2) NOT NULL,
  `ver_empresa2` int(2) NOT NULL,
  `ver_empresa3` int(2) NOT NULL,
  `autorizar_publicidad` int(2) NOT NULL,
  `autorizar_publicidad2` int(2) NOT NULL,
  `autorizar_publicidad3` int(2) NOT NULL,
  `alta_publicidad` int(2) NOT NULL,
  `alta_publicidad2` int(2) NOT NULL,
  `alta_publicidad3` int(2) NOT NULL,
  `baja_publicidad` int(2) NOT NULL,
  `subir_ofertas` int(2) NOT NULL,
  `subir_sugerencias` int(2) NOT NULL,
  `subir_destacados` int(2) NOT NULL,
  `subir_destacados2` int(2) NOT NULL,
  `subir_ofertas2` int(2) NOT NULL,
  `subir_sugerencias2` int(2) NOT NULL,
  `ver_facturas` int(2) NOT NULL,
  `crear_tienda` int(2) NOT NULL,
  `e_mailing` int(2) NOT NULL,
  `alta_tabla` int(2) NOT NULL,
  `baja_tabla` int(2) NOT NULL,
  `modificar_tabla` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of funciones_del_admin
-- ----------------------------
INSERT INTO `funciones_del_admin` VALUES ('E-P54060BAGJLM', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `funciones_del_admin` VALUES ('1000', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '0', '0', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `funciones_del_admin` VALUES ('0106239', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105940', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105314', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105932', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105738', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105723', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105222', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105738', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105146', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106747', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0105132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106253', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106840', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106959', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106504', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106943', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106107', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106204', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106114', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106857', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0106838', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107812', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107119', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107310', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107225', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107348', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107100', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107136', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107426', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107130', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107514', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107626', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107142', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107116', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107855', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107432', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107316', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107526', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107136', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107637', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107752', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107708', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107340', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107358', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107913', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107738', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107619', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107739', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107446', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107302', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107926', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107541', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107211', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107646', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107814', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107307', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107159', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107846', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `funciones_del_admin` VALUES ('0107841', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `galeria`
-- ----------------------------
DROP TABLE IF EXISTS `galeria`;
CREATE TABLE `galeria` (
  `id_img` int(4) NOT NULL,
  `img_url_carpeta` varchar(200) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_caduca` date NOT NULL,
  `url_link` varchar(100) NOT NULL,
  PRIMARY KEY (`id_img`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of galeria
-- ----------------------------
INSERT INTO `galeria` VALUES ('1', 'Galeria/coure.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=55&Marca=Cuore%20Gifts%20&%20Art');
INSERT INTO `galeria` VALUES ('2', 'Galeria/hp.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/buscador/detalle_producto.php?folio=1');
INSERT INTO `galeria` VALUES ('3', 'Galeria/MUSH.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=19&Marca=MUSCH');
INSERT INTO `galeria` VALUES ('4', 'Galeria/chamarras.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=91&Marca=Prenda%20Piel');
INSERT INTO `galeria` VALUES ('5', 'Galeria/security.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=144');
INSERT INTO `galeria` VALUES ('6', 'Galeria/devcon.jpg', '2014-03-28', '2014-04-30', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=82&Marca=Devcon%20Industrial');
INSERT INTO `galeria` VALUES ('7', 'Galeria/lps.jpg', '0000-00-00', '0000-00-00', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=81&Marca=LPS%20Right%20Choice%20Right%20');
INSERT INTO `galeria` VALUES ('8', 'Galeria/fajas.jpg', '0000-00-00', '0000-00-00', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=95&Marca=Sculptural');

-- ----------------------------
-- Table structure for `img_categorias`
-- ----------------------------
DROP TABLE IF EXISTS `img_categorias`;
CREATE TABLE `img_categorias` (
  `id_categorias` int(4) NOT NULL,
  `dir_imgcate` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of img_categorias
-- ----------------------------
INSERT INTO `img_categorias` VALUES ('1', 'Imagenes_e_perfect/categorias/1.png');
INSERT INTO `img_categorias` VALUES ('2', 'Imagenes_e_perfect/categorias/2.png');
INSERT INTO `img_categorias` VALUES ('3', 'Imagenes_e_perfect/categorias/3.png');
INSERT INTO `img_categorias` VALUES ('4', 'Imagenes_e_perfect/categorias/4.png');
INSERT INTO `img_categorias` VALUES ('5', 'Imagenes_e_perfect/categorias/5.png');
INSERT INTO `img_categorias` VALUES ('6', 'Imagenes_e_perfect/categorias/6.png');
INSERT INTO `img_categorias` VALUES ('7', 'Imagenes_e_perfect/categorias/7.png');
INSERT INTO `img_categorias` VALUES ('8', 'Imagenes_e_perfect/categorias/8.png');
INSERT INTO `img_categorias` VALUES ('9', 'Imagenes_e_perfect/categorias/9.png');
INSERT INTO `img_categorias` VALUES ('10', 'Imagenes_e_perfect/categorias/10.png');
INSERT INTO `img_categorias` VALUES ('11', 'Imagenes_e_perfect/categorias/11.png');
INSERT INTO `img_categorias` VALUES ('12', 'Imagenes_e_perfect/categorias/12.png');
INSERT INTO `img_categorias` VALUES ('13', 'Imagenes_e_perfect/categorias/13.png');
INSERT INTO `img_categorias` VALUES ('14', 'Imagenes_e_perfect/categorias/14.png');
INSERT INTO `img_categorias` VALUES ('15', 'Imagenes_e_perfect/categorias/15.png');
INSERT INTO `img_categorias` VALUES ('16', 'Imagenes_e_perfect/categorias/16.png');
INSERT INTO `img_categorias` VALUES ('17', 'Imagenes_e_perfect/categorias/17.png');
INSERT INTO `img_categorias` VALUES ('18', 'Imagenes_e_perfect/categorias/18.png');
INSERT INTO `img_categorias` VALUES ('19', 'Imagenes_e_perfect/categorias/19.png');
INSERT INTO `img_categorias` VALUES ('20', 'Imagenes_e_perfect/categorias/20.png');

-- ----------------------------
-- Table structure for `mis_compras`
-- ----------------------------
DROP TABLE IF EXISTS `mis_compras`;
CREATE TABLE `mis_compras` (
  `id_status_compra` int(2) NOT NULL,
  `nombre_status` varchar(25) NOT NULL,
  PRIMARY KEY (`id_status_compra`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mis_compras
-- ----------------------------
INSERT INTO `mis_compras` VALUES ('0', 'En espera de Pago');
INSERT INTO `mis_compras` VALUES ('1', 'Pagado, Envio en Proceso');
INSERT INTO `mis_compras` VALUES ('2', 'Compra Finalizada');

-- ----------------------------
-- Table structure for `municipios`
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_municipio` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL COMMENT 'Id de tabla estados',
  PRIMARY KEY (`id_municipio`)
) ENGINE=MyISAM AUTO_INCREMENT=2578 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of municipios
-- ----------------------------
INSERT INTO `municipios` VALUES ('1', 'Aguascalientes', '1');
INSERT INTO `municipios` VALUES ('2', 'Asientos', '1');
INSERT INTO `municipios` VALUES ('3', 'Calvillo', '1');
INSERT INTO `municipios` VALUES ('4', 'Cosío', '1');
INSERT INTO `municipios` VALUES ('5', 'Jesús María', '1');
INSERT INTO `municipios` VALUES ('6', 'Pabellón de Arteaga', '1');
INSERT INTO `municipios` VALUES ('7', 'Rincón de Romos', '1');
INSERT INTO `municipios` VALUES ('8', 'San José de Gracia', '1');
INSERT INTO `municipios` VALUES ('9', 'Tepezalá', '1');
INSERT INTO `municipios` VALUES ('10', 'San Francisco de los Romo', '1');
INSERT INTO `municipios` VALUES ('11', 'El Llano', '1');
INSERT INTO `municipios` VALUES ('12', 'Ensenada', '2');
INSERT INTO `municipios` VALUES ('13', 'Mexicali', '2');
INSERT INTO `municipios` VALUES ('14', 'Tecate', '2');
INSERT INTO `municipios` VALUES ('15', 'Tijuana', '2');
INSERT INTO `municipios` VALUES ('16', 'Playas de Rosarito', '2');
INSERT INTO `municipios` VALUES ('17', 'Comondú', '3');
INSERT INTO `municipios` VALUES ('18', 'Mulegé', '3');
INSERT INTO `municipios` VALUES ('19', 'La Paz', '3');
INSERT INTO `municipios` VALUES ('20', 'Los Cabos', '3');
INSERT INTO `municipios` VALUES ('21', 'Loreto', '3');
INSERT INTO `municipios` VALUES ('22', 'Calkiní', '4');
INSERT INTO `municipios` VALUES ('23', 'Campeche', '4');
INSERT INTO `municipios` VALUES ('24', 'Carmen', '4');
INSERT INTO `municipios` VALUES ('25', 'Champotón', '4');
INSERT INTO `municipios` VALUES ('26', 'Hecelchakán', '4');
INSERT INTO `municipios` VALUES ('27', 'Hopelchén', '4');
INSERT INTO `municipios` VALUES ('28', 'Palizada', '4');
INSERT INTO `municipios` VALUES ('29', 'Tenabo', '4');
INSERT INTO `municipios` VALUES ('30', 'Escárcega', '4');
INSERT INTO `municipios` VALUES ('31', 'Calakmul', '4');
INSERT INTO `municipios` VALUES ('32', 'Candelaria', '4');
INSERT INTO `municipios` VALUES ('33', 'Acacoyagua ', '5');
INSERT INTO `municipios` VALUES ('34', 'Acala ', '5');
INSERT INTO `municipios` VALUES ('35', 'Acapetahua ', '5');
INSERT INTO `municipios` VALUES ('36', 'Aldama ', '5');
INSERT INTO `municipios` VALUES ('37', 'Altamirano ', '5');
INSERT INTO `municipios` VALUES ('38', 'Amatán', '5');
INSERT INTO `municipios` VALUES ('39', 'Amatenango de la Frontera ', '5');
INSERT INTO `municipios` VALUES ('40', 'Amatenango del Valle ', '5');
INSERT INTO `municipios` VALUES ('41', 'Angel Albino Corzo', '5');
INSERT INTO `municipios` VALUES ('42', 'Arriaga ', '5');
INSERT INTO `municipios` VALUES ('43', 'Bejucal de Ocampo ', '5');
INSERT INTO `municipios` VALUES ('44', 'Bella Vista ', '5');
INSERT INTO `municipios` VALUES ('45', 'Benemérito de las Américas ', '5');
INSERT INTO `municipios` VALUES ('46', 'Berriozábal ', '5');
INSERT INTO `municipios` VALUES ('47', 'Bochil ', '5');
INSERT INTO `municipios` VALUES ('48', 'El Bosque ', '5');
INSERT INTO `municipios` VALUES ('49', 'Cacahoatán ', '5');
INSERT INTO `municipios` VALUES ('50', 'Catazajá', '5');
INSERT INTO `municipios` VALUES ('51', 'Cintalapa ', '5');
INSERT INTO `municipios` VALUES ('52', 'Coapilla ', '5');
INSERT INTO `municipios` VALUES ('53', 'Comitán de Domínguez ', '5');
INSERT INTO `municipios` VALUES ('54', 'La concordia ', '5');
INSERT INTO `municipios` VALUES ('55', 'Copinalá', '5');
INSERT INTO `municipios` VALUES ('56', 'Chalchihuitán ', '5');
INSERT INTO `municipios` VALUES ('57', 'Chamula ', '5');
INSERT INTO `municipios` VALUES ('58', 'Chanal ', '5');
INSERT INTO `municipios` VALUES ('59', 'Chapultenango ', '5');
INSERT INTO `municipios` VALUES ('60', 'Chenalhó', '5');
INSERT INTO `municipios` VALUES ('61', 'Chiapa de Corzo ', '5');
INSERT INTO `municipios` VALUES ('62', 'Chiapilla ', '5');
INSERT INTO `municipios` VALUES ('63', 'Chicoasén ', '5');
INSERT INTO `municipios` VALUES ('64', 'Chicomuselo ', '5');
INSERT INTO `municipios` VALUES ('65', 'Chilón ', '5');
INSERT INTO `municipios` VALUES ('66', 'Escuintla ', '5');
INSERT INTO `municipios` VALUES ('67', 'Francisco León ', '5');
INSERT INTO `municipios` VALUES ('68', 'Frontera Comalapa ', '5');
INSERT INTO `municipios` VALUES ('69', 'Frontera Hidalgo ', '5');
INSERT INTO `municipios` VALUES ('70', 'La Grandeza ', '5');
INSERT INTO `municipios` VALUES ('71', 'Huehuetán ', '5');
INSERT INTO `municipios` VALUES ('72', 'Huixtán ', '5');
INSERT INTO `municipios` VALUES ('73', 'Huitiupán ', '5');
INSERT INTO `municipios` VALUES ('74', 'Huixtla ', '5');
INSERT INTO `municipios` VALUES ('75', 'La Independencia ', '5');
INSERT INTO `municipios` VALUES ('76', 'Ixhuatán ', '5');
INSERT INTO `municipios` VALUES ('77', 'Ixtacomitán ', '5');
INSERT INTO `municipios` VALUES ('78', 'Ixtapa ', '5');
INSERT INTO `municipios` VALUES ('79', 'Ixtapangajoya ', '5');
INSERT INTO `municipios` VALUES ('80', 'Jiquipilas ', '5');
INSERT INTO `municipios` VALUES ('81', 'Juárez ', '5');
INSERT INTO `municipios` VALUES ('82', 'Larráinzar', '5');
INSERT INTO `municipios` VALUES ('83', 'La Libertad ', '5');
INSERT INTO `municipios` VALUES ('84', 'Mapastepec ', '5');
INSERT INTO `municipios` VALUES ('85', 'Maravilla de Tenejapa ', '5');
INSERT INTO `municipios` VALUES ('86', 'Marqués de Comillas ', '5');
INSERT INTO `municipios` VALUES ('87', 'Mazapa de Madero ', '5');
INSERT INTO `municipios` VALUES ('88', 'Mazatán ', '5');
INSERT INTO `municipios` VALUES ('89', 'Metapa ', '5');
INSERT INTO `municipios` VALUES ('90', 'Mitontic ', '5');
INSERT INTO `municipios` VALUES ('91', 'Montecristo de Guerrero ', '5');
INSERT INTO `municipios` VALUES ('92', 'Motozintla ', '5');
INSERT INTO `municipios` VALUES ('93', 'Nicolás Ruiz', '5');
INSERT INTO `municipios` VALUES ('94', 'Ocosingo ', '5');
INSERT INTO `municipios` VALUES ('95', 'Ocotepec ', '5');
INSERT INTO `municipios` VALUES ('96', 'Ocozocoautla de Espinosa', '5');
INSERT INTO `municipios` VALUES ('97', 'Ostuacán ', '5');
INSERT INTO `municipios` VALUES ('98', 'Osumacinta ', '5');
INSERT INTO `municipios` VALUES ('99', 'Oxchuc ', '5');
INSERT INTO `municipios` VALUES ('100', 'Palenque ', '5');
INSERT INTO `municipios` VALUES ('101', 'Pantelhó', '5');
INSERT INTO `municipios` VALUES ('102', 'Pantepec ', '5');
INSERT INTO `municipios` VALUES ('103', 'Pichucalco ', '5');
INSERT INTO `municipios` VALUES ('104', 'Pijijiapan ', '5');
INSERT INTO `municipios` VALUES ('105', 'El Porvenir ', '5');
INSERT INTO `municipios` VALUES ('106', 'Pueblo Nuevo Solistahuacán', '5');
INSERT INTO `municipios` VALUES ('107', 'Rayón ', '5');
INSERT INTO `municipios` VALUES ('108', 'Reforma ', '5');
INSERT INTO `municipios` VALUES ('109', 'Las Rosas ', '5');
INSERT INTO `municipios` VALUES ('110', 'Sabanilla ', '5');
INSERT INTO `municipios` VALUES ('111', 'Salto de Agua ', '5');
INSERT INTO `municipios` VALUES ('112', 'San Andrés Duraznal ', '5');
INSERT INTO `municipios` VALUES ('113', 'San Cristóbal de las Casas ', '5');
INSERT INTO `municipios` VALUES ('114', 'San Fernando ', '5');
INSERT INTO `municipios` VALUES ('115', 'San Juan Cancuc ', '5');
INSERT INTO `municipios` VALUES ('116', 'San Lucas ', '5');
INSERT INTO `municipios` VALUES ('117', 'Santiago el Pinar ', '5');
INSERT INTO `municipios` VALUES ('118', 'Siltepec ', '5');
INSERT INTO `municipios` VALUES ('119', 'Simojovel ', '5');
INSERT INTO `municipios` VALUES ('120', 'Sitalá', '5');
INSERT INTO `municipios` VALUES ('121', 'Socoltenango ', '5');
INSERT INTO `municipios` VALUES ('122', 'Solosuchiapa ', '5');
INSERT INTO `municipios` VALUES ('123', 'Soyaló', '5');
INSERT INTO `municipios` VALUES ('124', 'Suchiapa ', '5');
INSERT INTO `municipios` VALUES ('125', 'Suchiate ', '5');
INSERT INTO `municipios` VALUES ('126', 'Sunuapa ', '5');
INSERT INTO `municipios` VALUES ('127', 'Tapachula ', '5');
INSERT INTO `municipios` VALUES ('128', 'Tapalapa ', '5');
INSERT INTO `municipios` VALUES ('129', 'Tapilula ', '5');
INSERT INTO `municipios` VALUES ('130', 'Tecpatán', '5');
INSERT INTO `municipios` VALUES ('131', 'Tenejapa ', '5');
INSERT INTO `municipios` VALUES ('132', 'Teopisca ', '5');
INSERT INTO `municipios` VALUES ('133', 'Tila ', '5');
INSERT INTO `municipios` VALUES ('134', 'Tonalá', '5');
INSERT INTO `municipios` VALUES ('135', 'Totolapa ', '5');
INSERT INTO `municipios` VALUES ('136', 'La Trinitaria ', '5');
INSERT INTO `municipios` VALUES ('137', 'Tumbalá', '5');
INSERT INTO `municipios` VALUES ('138', 'Tuxtla Gutiérrez ', '5');
INSERT INTO `municipios` VALUES ('139', 'Tuxtla Chico ', '5');
INSERT INTO `municipios` VALUES ('140', 'Tuzantán ', '5');
INSERT INTO `municipios` VALUES ('141', 'Tzimo ', '5');
INSERT INTO `municipios` VALUES ('142', 'Unión Juárez ', '5');
INSERT INTO `municipios` VALUES ('143', 'Venustiano Carranza ', '5');
INSERT INTO `municipios` VALUES ('144', 'Villa Comaltitlán ', '5');
INSERT INTO `municipios` VALUES ('145', 'Villa Corzo ', '5');
INSERT INTO `municipios` VALUES ('146', 'Villaflores ', '5');
INSERT INTO `municipios` VALUES ('147', 'Yajalón ', '5');
INSERT INTO `municipios` VALUES ('148', 'Zinacantán ', '5');
INSERT INTO `municipios` VALUES ('149', 'Ahumada', '6');
INSERT INTO `municipios` VALUES ('150', 'Aldama', '6');
INSERT INTO `municipios` VALUES ('151', 'Allende', '6');
INSERT INTO `municipios` VALUES ('152', 'Aquiles Serdán', '6');
INSERT INTO `municipios` VALUES ('153', 'Ascensión', '6');
INSERT INTO `municipios` VALUES ('154', 'Bachíniva', '6');
INSERT INTO `municipios` VALUES ('155', 'Balleza', '6');
INSERT INTO `municipios` VALUES ('156', 'Batopilas', '6');
INSERT INTO `municipios` VALUES ('157', 'Bocoyna', '6');
INSERT INTO `municipios` VALUES ('158', 'Buenaventura', '6');
INSERT INTO `municipios` VALUES ('159', 'Camargo', '6');
INSERT INTO `municipios` VALUES ('160', 'Carichí', '6');
INSERT INTO `municipios` VALUES ('161', 'Casas Grandes', '6');
INSERT INTO `municipios` VALUES ('162', 'Coronado', '6');
INSERT INTO `municipios` VALUES ('163', 'Coyame del Sotol', '6');
INSERT INTO `municipios` VALUES ('164', 'La Cruz', '6');
INSERT INTO `municipios` VALUES ('165', 'Cuauhtémoc', '6');
INSERT INTO `municipios` VALUES ('166', 'Cusihuiriachi', '6');
INSERT INTO `municipios` VALUES ('167', 'Chihuahua', '6');
INSERT INTO `municipios` VALUES ('168', 'Chínipas', '6');
INSERT INTO `municipios` VALUES ('169', 'Delicias', '6');
INSERT INTO `municipios` VALUES ('170', 'Dr. Belisario Domínguez', '6');
INSERT INTO `municipios` VALUES ('171', 'Galeana', '6');
INSERT INTO `municipios` VALUES ('172', 'Santa Isabel', '6');
INSERT INTO `municipios` VALUES ('173', 'Gómez Farías', '6');
INSERT INTO `municipios` VALUES ('174', 'Gran Morelos', '6');
INSERT INTO `municipios` VALUES ('175', 'Guachochi', '6');
INSERT INTO `municipios` VALUES ('176', 'Guadalupe', '6');
INSERT INTO `municipios` VALUES ('177', 'Guadalupe y Calvo', '6');
INSERT INTO `municipios` VALUES ('178', 'Guazapares', '6');
INSERT INTO `municipios` VALUES ('179', 'Guerrero', '6');
INSERT INTO `municipios` VALUES ('180', 'Hidalgo del Parral', '6');
INSERT INTO `municipios` VALUES ('181', 'Huejotitán', '6');
INSERT INTO `municipios` VALUES ('182', 'Ignacio Zaragoza', '6');
INSERT INTO `municipios` VALUES ('183', 'Janos', '6');
INSERT INTO `municipios` VALUES ('184', 'Jiménez', '6');
INSERT INTO `municipios` VALUES ('185', 'Juárez', '6');
INSERT INTO `municipios` VALUES ('186', 'Julimes', '6');
INSERT INTO `municipios` VALUES ('187', 'López', '6');
INSERT INTO `municipios` VALUES ('188', 'Madera', '6');
INSERT INTO `municipios` VALUES ('189', 'Maguarichi', '6');
INSERT INTO `municipios` VALUES ('190', 'Manuel Benavides', '6');
INSERT INTO `municipios` VALUES ('191', 'Matachí', '6');
INSERT INTO `municipios` VALUES ('192', 'Matamoros', '6');
INSERT INTO `municipios` VALUES ('193', 'Meoqui', '6');
INSERT INTO `municipios` VALUES ('194', 'Morelos', '6');
INSERT INTO `municipios` VALUES ('195', 'Moris', '6');
INSERT INTO `municipios` VALUES ('196', 'Namiquipa', '6');
INSERT INTO `municipios` VALUES ('197', 'Nonoava', '6');
INSERT INTO `municipios` VALUES ('198', 'Nuevo Casas Grandes', '6');
INSERT INTO `municipios` VALUES ('199', 'Ocampo', '6');
INSERT INTO `municipios` VALUES ('200', 'Ojinaga', '6');
INSERT INTO `municipios` VALUES ('201', 'Praxedis G. Guerrero', '6');
INSERT INTO `municipios` VALUES ('202', 'Riva Palacio', '6');
INSERT INTO `municipios` VALUES ('203', 'Rosales', '6');
INSERT INTO `municipios` VALUES ('204', 'Rosario', '6');
INSERT INTO `municipios` VALUES ('205', 'San Francisco de Borja', '6');
INSERT INTO `municipios` VALUES ('206', 'San Francisco de Conchos', '6');
INSERT INTO `municipios` VALUES ('207', 'San Francisco del Oro', '6');
INSERT INTO `municipios` VALUES ('208', 'Santa Bárbara', '6');
INSERT INTO `municipios` VALUES ('209', 'Satevó', '6');
INSERT INTO `municipios` VALUES ('210', 'Saucillo', '6');
INSERT INTO `municipios` VALUES ('211', 'Temósachi', '6');
INSERT INTO `municipios` VALUES ('212', 'El Tule', '6');
INSERT INTO `municipios` VALUES ('213', 'Urique', '6');
INSERT INTO `municipios` VALUES ('214', 'Uruachi', '6');
INSERT INTO `municipios` VALUES ('215', 'Valle de Zaragoza', '6');
INSERT INTO `municipios` VALUES ('216', 'Abasolo', '7');
INSERT INTO `municipios` VALUES ('217', 'Acuña', '7');
INSERT INTO `municipios` VALUES ('218', 'Allende', '7');
INSERT INTO `municipios` VALUES ('219', 'Arteaga', '7');
INSERT INTO `municipios` VALUES ('220', 'Candela', '7');
INSERT INTO `municipios` VALUES ('221', 'Castaños', '7');
INSERT INTO `municipios` VALUES ('222', 'Cuatrociénegas', '7');
INSERT INTO `municipios` VALUES ('223', 'Escobedo', '7');
INSERT INTO `municipios` VALUES ('224', 'Francisco I. Madero', '7');
INSERT INTO `municipios` VALUES ('225', 'Frontera', '7');
INSERT INTO `municipios` VALUES ('226', 'General Cepeda', '7');
INSERT INTO `municipios` VALUES ('227', 'Guerrero', '7');
INSERT INTO `municipios` VALUES ('228', 'Hidalgo', '7');
INSERT INTO `municipios` VALUES ('229', 'Jiménez', '7');
INSERT INTO `municipios` VALUES ('230', 'Juárez', '7');
INSERT INTO `municipios` VALUES ('231', 'Lamadrid', '7');
INSERT INTO `municipios` VALUES ('232', 'Matamoros', '7');
INSERT INTO `municipios` VALUES ('233', 'Monclova', '7');
INSERT INTO `municipios` VALUES ('234', 'Morelos', '7');
INSERT INTO `municipios` VALUES ('235', 'Múzquiz', '7');
INSERT INTO `municipios` VALUES ('236', 'Nadadores', '7');
INSERT INTO `municipios` VALUES ('237', 'Nava', '7');
INSERT INTO `municipios` VALUES ('238', 'Ocampo', '7');
INSERT INTO `municipios` VALUES ('239', 'Parras', '7');
INSERT INTO `municipios` VALUES ('240', 'Piedras Negras', '7');
INSERT INTO `municipios` VALUES ('241', 'Progreso', '7');
INSERT INTO `municipios` VALUES ('242', 'Ramos Arizpe', '7');
INSERT INTO `municipios` VALUES ('243', 'Sabinas', '7');
INSERT INTO `municipios` VALUES ('244', 'Sacramento', '7');
INSERT INTO `municipios` VALUES ('245', 'Saltillo', '7');
INSERT INTO `municipios` VALUES ('246', 'San Buenaventura', '7');
INSERT INTO `municipios` VALUES ('247', 'San Juan de Sabinas', '7');
INSERT INTO `municipios` VALUES ('248', 'San Pedro', '7');
INSERT INTO `municipios` VALUES ('249', 'Sierra Mojada', '7');
INSERT INTO `municipios` VALUES ('250', 'Torreón', '7');
INSERT INTO `municipios` VALUES ('251', 'Viesca', '7');
INSERT INTO `municipios` VALUES ('252', ' Villa Unión', '7');
INSERT INTO `municipios` VALUES ('253', ' Zaragoza', '7');
INSERT INTO `municipios` VALUES ('254', 'Armería', '8');
INSERT INTO `municipios` VALUES ('255', 'Colima', '8');
INSERT INTO `municipios` VALUES ('256', 'Comala', '8');
INSERT INTO `municipios` VALUES ('257', 'Coquimatlán', '8');
INSERT INTO `municipios` VALUES ('258', 'Cuauhtémoc', '8');
INSERT INTO `municipios` VALUES ('259', 'Ixtlahuacán', '8');
INSERT INTO `municipios` VALUES ('260', 'Manzanillo', '8');
INSERT INTO `municipios` VALUES ('261', 'Minatitlán', '8');
INSERT INTO `municipios` VALUES ('262', 'Tecomán', '8');
INSERT INTO `municipios` VALUES ('263', 'Villa de Alvarez', '8');
INSERT INTO `municipios` VALUES ('264', 'Alvaro Obregón', '9');
INSERT INTO `municipios` VALUES ('265', 'Azcapotzalco', '9');
INSERT INTO `municipios` VALUES ('266', 'Benito Juárez', '9');
INSERT INTO `municipios` VALUES ('267', 'Coyoacán', '9');
INSERT INTO `municipios` VALUES ('268', 'Cuajimalpa de Morelos', '9');
INSERT INTO `municipios` VALUES ('269', 'Cuauhtémoc', '9');
INSERT INTO `municipios` VALUES ('270', 'Gustavo A. Madero', '9');
INSERT INTO `municipios` VALUES ('271', 'Iztacalco', '9');
INSERT INTO `municipios` VALUES ('272', 'Iztapalapa', '9');
INSERT INTO `municipios` VALUES ('273', 'La Magdalena Contreras', '9');
INSERT INTO `municipios` VALUES ('274', 'Miguel Hidalgo', '9');
INSERT INTO `municipios` VALUES ('275', 'Milpa Alta', '9');
INSERT INTO `municipios` VALUES ('276', 'Tláhuac', '9');
INSERT INTO `municipios` VALUES ('277', 'Tlalpan', '9');
INSERT INTO `municipios` VALUES ('278', 'Venustiano Carranza', '9');
INSERT INTO `municipios` VALUES ('279', 'Xochimilco', '9');
INSERT INTO `municipios` VALUES ('280', 'Canatlán', '10');
INSERT INTO `municipios` VALUES ('281', 'Canelas', '10');
INSERT INTO `municipios` VALUES ('282', 'Coneto de Comonfort', '10');
INSERT INTO `municipios` VALUES ('283', 'Cuencamé', '10');
INSERT INTO `municipios` VALUES ('284', 'Durango', '10');
INSERT INTO `municipios` VALUES ('285', 'Gral. Simón Boívar', '10');
INSERT INTO `municipios` VALUES ('286', 'Gómez Palacio', '10');
INSERT INTO `municipios` VALUES ('287', 'Guadalupe Victoria', '10');
INSERT INTO `municipios` VALUES ('288', 'Guanaceví', '10');
INSERT INTO `municipios` VALUES ('289', 'Hidalgo', '10');
INSERT INTO `municipios` VALUES ('290', 'Indé', '10');
INSERT INTO `municipios` VALUES ('291', 'Lerdo', '10');
INSERT INTO `municipios` VALUES ('292', 'Mapimí', '10');
INSERT INTO `municipios` VALUES ('293', 'Mezquital', '10');
INSERT INTO `municipios` VALUES ('294', 'Nazas', '10');
INSERT INTO `municipios` VALUES ('295', 'Nombre de Dios', '10');
INSERT INTO `municipios` VALUES ('296', 'Ocampo', '10');
INSERT INTO `municipios` VALUES ('297', 'El Oro', '10');
INSERT INTO `municipios` VALUES ('298', 'Otáez', '10');
INSERT INTO `municipios` VALUES ('299', 'Pánuco de Coronado', '10');
INSERT INTO `municipios` VALUES ('300', 'Peñón Blanco', '10');
INSERT INTO `municipios` VALUES ('301', 'Poanas', '10');
INSERT INTO `municipios` VALUES ('302', 'Pueblo Nuevo', '10');
INSERT INTO `municipios` VALUES ('303', 'Rodeo', '10');
INSERT INTO `municipios` VALUES ('304', 'San Bernardo', '10');
INSERT INTO `municipios` VALUES ('305', 'San Dimas', '10');
INSERT INTO `municipios` VALUES ('306', 'San Juan de Guadalupe', '10');
INSERT INTO `municipios` VALUES ('307', 'San Juan del Río', '10');
INSERT INTO `municipios` VALUES ('308', 'San Luis del Cordero', '10');
INSERT INTO `municipios` VALUES ('309', 'San Pedro del Gallo', '10');
INSERT INTO `municipios` VALUES ('310', 'Súchil', '10');
INSERT INTO `municipios` VALUES ('311', 'Tamazula', '10');
INSERT INTO `municipios` VALUES ('312', 'Tepehuanes', '10');
INSERT INTO `municipios` VALUES ('313', 'Tlahualilo', '10');
INSERT INTO `municipios` VALUES ('314', 'Topia', '10');
INSERT INTO `municipios` VALUES ('315', 'Vicente Guerrero', '10');
INSERT INTO `municipios` VALUES ('316', 'Santa Clara', '10');
INSERT INTO `municipios` VALUES ('317', 'Santiago Papasquiaro', '10');
INSERT INTO `municipios` VALUES ('318', 'Nuevo Ideal', '10');
INSERT INTO `municipios` VALUES ('319', 'Aculco', '11');
INSERT INTO `municipios` VALUES ('320', 'Acolman', '11');
INSERT INTO `municipios` VALUES ('321', 'Acambay', '11');
INSERT INTO `municipios` VALUES ('322', 'Almoloya de Alquisiras', '11');
INSERT INTO `municipios` VALUES ('323', 'Almoloya de Juárez', '11');
INSERT INTO `municipios` VALUES ('324', 'Almoloya del Río', '11');
INSERT INTO `municipios` VALUES ('325', 'Amanalco', '11');
INSERT INTO `municipios` VALUES ('326', 'Amatepec', '11');
INSERT INTO `municipios` VALUES ('327', 'Amecameca', '11');
INSERT INTO `municipios` VALUES ('328', 'Apaxco', '11');
INSERT INTO `municipios` VALUES ('329', 'Atenaco', '11');
INSERT INTO `municipios` VALUES ('330', 'Atizapán', '11');
INSERT INTO `municipios` VALUES ('331', 'Atizapán de Zaragoza', '11');
INSERT INTO `municipios` VALUES ('332', 'Atlacomulco', '11');
INSERT INTO `municipios` VALUES ('333', 'Atlautla', '11');
INSERT INTO `municipios` VALUES ('334', 'Axapusco', '11');
INSERT INTO `municipios` VALUES ('335', 'Ayapango', '11');
INSERT INTO `municipios` VALUES ('336', 'Calimaya', '11');
INSERT INTO `municipios` VALUES ('337', 'Capulhuac', '11');
INSERT INTO `municipios` VALUES ('338', 'Coacalco de Berriozábal', '11');
INSERT INTO `municipios` VALUES ('339', 'Coatepec Harinas', '11');
INSERT INTO `municipios` VALUES ('340', 'Cocotitlán', '11');
INSERT INTO `municipios` VALUES ('341', 'Coyotepec', '11');
INSERT INTO `municipios` VALUES ('342', 'Cuautitlán', '11');
INSERT INTO `municipios` VALUES ('343', 'Chalco', '11');
INSERT INTO `municipios` VALUES ('344', 'Chapa de Mota', '11');
INSERT INTO `municipios` VALUES ('345', 'Chapultepec', '11');
INSERT INTO `municipios` VALUES ('346', 'Chiautla', '11');
INSERT INTO `municipios` VALUES ('347', 'Chicoloapan', '11');
INSERT INTO `municipios` VALUES ('348', 'Chiconcuac', '11');
INSERT INTO `municipios` VALUES ('349', 'Chimalhuacán', '11');
INSERT INTO `municipios` VALUES ('350', 'Donato Guerra', '11');
INSERT INTO `municipios` VALUES ('351', 'Ecatepec de Morelos', '11');
INSERT INTO `municipios` VALUES ('352', 'Ecatzingo', '11');
INSERT INTO `municipios` VALUES ('353', 'Hueypoxtla', '11');
INSERT INTO `municipios` VALUES ('354', 'Huixquilucan', '11');
INSERT INTO `municipios` VALUES ('355', 'Isidro Fabela', '11');
INSERT INTO `municipios` VALUES ('356', 'Ixtapaluca', '11');
INSERT INTO `municipios` VALUES ('357', 'Ixtapan de la Sal', '11');
INSERT INTO `municipios` VALUES ('358', 'Ixtapan del Oro', '11');
INSERT INTO `municipios` VALUES ('359', 'Ixtlahuaca', '11');
INSERT INTO `municipios` VALUES ('360', 'Xalatlaco', '11');
INSERT INTO `municipios` VALUES ('361', 'Jaltenco', '11');
INSERT INTO `municipios` VALUES ('362', 'Jilotepec', '11');
INSERT INTO `municipios` VALUES ('363', 'Jilotzingo', '11');
INSERT INTO `municipios` VALUES ('364', 'Jiquipilco', '11');
INSERT INTO `municipios` VALUES ('365', 'Jocotitlán', '11');
INSERT INTO `municipios` VALUES ('366', 'Joquicingo', '11');
INSERT INTO `municipios` VALUES ('367', 'Juchitepec', '11');
INSERT INTO `municipios` VALUES ('368', 'Lerma', '11');
INSERT INTO `municipios` VALUES ('369', 'Malinalco', '11');
INSERT INTO `municipios` VALUES ('370', 'Melchor Ocampo', '11');
INSERT INTO `municipios` VALUES ('371', 'Metepec', '11');
INSERT INTO `municipios` VALUES ('372', 'Mexicaltzingo', '11');
INSERT INTO `municipios` VALUES ('373', 'Morelos', '11');
INSERT INTO `municipios` VALUES ('374', 'Naucalpan de Juárez', '11');
INSERT INTO `municipios` VALUES ('375', 'Nezahualcóyotl', '11');
INSERT INTO `municipios` VALUES ('376', 'Nextlalpan', '11');
INSERT INTO `municipios` VALUES ('377', 'Nicolás Romero', '11');
INSERT INTO `municipios` VALUES ('378', 'Nopaltepec', '11');
INSERT INTO `municipios` VALUES ('379', 'Ocoyoacac', '11');
INSERT INTO `municipios` VALUES ('380', 'Ocuilan', '11');
INSERT INTO `municipios` VALUES ('381', 'El Oro', '11');
INSERT INTO `municipios` VALUES ('382', 'Otumba', '11');
INSERT INTO `municipios` VALUES ('383', 'Otzoloapan', '11');
INSERT INTO `municipios` VALUES ('384', 'Otzolotepec', '11');
INSERT INTO `municipios` VALUES ('385', 'Ozumba', '11');
INSERT INTO `municipios` VALUES ('386', 'Papalotla', '11');
INSERT INTO `municipios` VALUES ('387', 'La Paz', '11');
INSERT INTO `municipios` VALUES ('388', 'Polotitlán', '11');
INSERT INTO `municipios` VALUES ('389', 'Rayón', '11');
INSERT INTO `municipios` VALUES ('390', 'San Antonio la Isla', '11');
INSERT INTO `municipios` VALUES ('391', 'San Felipe del Progreso', '11');
INSERT INTO `municipios` VALUES ('392', 'San José del Rincón', '11');
INSERT INTO `municipios` VALUES ('393', 'San Martín de las Pirámides', '11');
INSERT INTO `municipios` VALUES ('394', 'San Mateo Atenco', '11');
INSERT INTO `municipios` VALUES ('395', 'San Simón de Guerrero', '11');
INSERT INTO `municipios` VALUES ('396', 'Santo Tomás', '11');
INSERT INTO `municipios` VALUES ('397', 'Soyaniquilpan de Juárez', '11');
INSERT INTO `municipios` VALUES ('398', 'Sultepec', '11');
INSERT INTO `municipios` VALUES ('399', 'Tecámac', '11');
INSERT INTO `municipios` VALUES ('400', 'Tejupilco', '11');
INSERT INTO `municipios` VALUES ('401', 'Temamatla', '11');
INSERT INTO `municipios` VALUES ('402', 'Temascalapa', '11');
INSERT INTO `municipios` VALUES ('403', 'Temascalcingo', '11');
INSERT INTO `municipios` VALUES ('404', 'Temascaltepec', '11');
INSERT INTO `municipios` VALUES ('405', 'Temoaya', '11');
INSERT INTO `municipios` VALUES ('406', 'Tenancingo', '11');
INSERT INTO `municipios` VALUES ('407', 'Tenango del Aire', '11');
INSERT INTO `municipios` VALUES ('408', 'Tenango del Valle', '11');
INSERT INTO `municipios` VALUES ('409', 'Teoloyucán', '11');
INSERT INTO `municipios` VALUES ('410', 'Teotihuacán', '11');
INSERT INTO `municipios` VALUES ('411', 'Tepetlaoxtoc', '11');
INSERT INTO `municipios` VALUES ('412', 'Tepetlixpa', '11');
INSERT INTO `municipios` VALUES ('413', 'Tepotzotlán', '11');
INSERT INTO `municipios` VALUES ('414', 'Tequixquiac', '11');
INSERT INTO `municipios` VALUES ('415', 'Texcaltitlán', '11');
INSERT INTO `municipios` VALUES ('416', 'Texcalyacac', '11');
INSERT INTO `municipios` VALUES ('417', 'Texcoco', '11');
INSERT INTO `municipios` VALUES ('418', 'Tezoyuca', '11');
INSERT INTO `municipios` VALUES ('419', 'Tianguistenco', '11');
INSERT INTO `municipios` VALUES ('420', 'Timilpan', '11');
INSERT INTO `municipios` VALUES ('421', 'Tlalmanalco', '11');
INSERT INTO `municipios` VALUES ('422', 'Tlalnepantla de Baz', '11');
INSERT INTO `municipios` VALUES ('423', 'Tlatlaya', '11');
INSERT INTO `municipios` VALUES ('424', 'Toluca', '11');
INSERT INTO `municipios` VALUES ('425', 'Tonanitla', '11');
INSERT INTO `municipios` VALUES ('426', 'Tonatico', '11');
INSERT INTO `municipios` VALUES ('427', 'Tultepec', '11');
INSERT INTO `municipios` VALUES ('428', 'Tultitlán', '11');
INSERT INTO `municipios` VALUES ('429', 'Valle de Bravo', '11');
INSERT INTO `municipios` VALUES ('430', 'Valle de Chalco Solidaridad', '11');
INSERT INTO `municipios` VALUES ('431', 'Villa de Allende', '11');
INSERT INTO `municipios` VALUES ('432', 'Villa del Carbón', '11');
INSERT INTO `municipios` VALUES ('433', 'Villa Guerrero', '11');
INSERT INTO `municipios` VALUES ('434', 'Villa Victoria', '11');
INSERT INTO `municipios` VALUES ('435', 'Xalatlaco', '11');
INSERT INTO `municipios` VALUES ('436', 'Xonacatlán', '11');
INSERT INTO `municipios` VALUES ('437', 'Zacazonapan', '11');
INSERT INTO `municipios` VALUES ('438', 'Zacualpan', '11');
INSERT INTO `municipios` VALUES ('439', 'Zinacantepec', '11');
INSERT INTO `municipios` VALUES ('440', 'Zumpahuacán', '11');
INSERT INTO `municipios` VALUES ('441', 'Zumpango', '11');
INSERT INTO `municipios` VALUES ('442', 'Cuautitlán Izcalli', '11');
INSERT INTO `municipios` VALUES ('443', 'Luvianos', '11');
INSERT INTO `municipios` VALUES ('444', 'Abasolo', '12');
INSERT INTO `municipios` VALUES ('445', 'Acámbaro', '12');
INSERT INTO `municipios` VALUES ('446', 'Allende', '12');
INSERT INTO `municipios` VALUES ('447', 'Apaseo el Alto', '12');
INSERT INTO `municipios` VALUES ('448', 'Apaseo el Grande', '12');
INSERT INTO `municipios` VALUES ('449', 'Atarjea', '12');
INSERT INTO `municipios` VALUES ('450', 'Celaya', '12');
INSERT INTO `municipios` VALUES ('451', 'Comonfort', '12');
INSERT INTO `municipios` VALUES ('452', 'Coroneo', '12');
INSERT INTO `municipios` VALUES ('453', 'Cortazar', '12');
INSERT INTO `municipios` VALUES ('454', 'Cuerámaro', '12');
INSERT INTO `municipios` VALUES ('455', 'Doctor Mora', '12');
INSERT INTO `municipios` VALUES ('456', 'Dolores Hidalgo', '12');
INSERT INTO `municipios` VALUES ('457', 'Guanajuato', '12');
INSERT INTO `municipios` VALUES ('458', 'Huanímaro', '12');
INSERT INTO `municipios` VALUES ('459', 'Irapuato', '12');
INSERT INTO `municipios` VALUES ('460', 'Jaral del Progreso', '12');
INSERT INTO `municipios` VALUES ('461', 'Jerécuaro', '12');
INSERT INTO `municipios` VALUES ('462', 'León', '12');
INSERT INTO `municipios` VALUES ('463', 'Manuel Doblado', '12');
INSERT INTO `municipios` VALUES ('464', 'Moroleón', '12');
INSERT INTO `municipios` VALUES ('465', 'Ocampo', '12');
INSERT INTO `municipios` VALUES ('466', 'Pénjamo', '12');
INSERT INTO `municipios` VALUES ('467', 'Pueblo Nuevo', '12');
INSERT INTO `municipios` VALUES ('468', 'Purísima del Rincón', '12');
INSERT INTO `municipios` VALUES ('469', 'Romita', '12');
INSERT INTO `municipios` VALUES ('470', 'Salamanca', '12');
INSERT INTO `municipios` VALUES ('471', 'Salvatierra', '12');
INSERT INTO `municipios` VALUES ('472', 'San Diego de la Unión', '12');
INSERT INTO `municipios` VALUES ('473', 'San Felipe', '12');
INSERT INTO `municipios` VALUES ('474', 'San Francisco del Rincón', '12');
INSERT INTO `municipios` VALUES ('475', 'San José Iturbide', '12');
INSERT INTO `municipios` VALUES ('476', 'San Luis de la Paz', '12');
INSERT INTO `municipios` VALUES ('477', 'Santa Catarina', '12');
INSERT INTO `municipios` VALUES ('478', 'Santa Cruz de Juventino Rosas', '12');
INSERT INTO `municipios` VALUES ('479', 'Santiago Maravatío', '12');
INSERT INTO `municipios` VALUES ('480', 'Silao', '12');
INSERT INTO `municipios` VALUES ('481', 'Tarandacuao', '12');
INSERT INTO `municipios` VALUES ('482', 'Tarimoro', '12');
INSERT INTO `municipios` VALUES ('483', 'Tierra Blanca', '12');
INSERT INTO `municipios` VALUES ('484', 'Uriangato', '12');
INSERT INTO `municipios` VALUES ('485', 'Valle de Santiago', '12');
INSERT INTO `municipios` VALUES ('486', 'Victoria', '12');
INSERT INTO `municipios` VALUES ('487', 'Villagrán', '12');
INSERT INTO `municipios` VALUES ('488', 'Xichú', '12');
INSERT INTO `municipios` VALUES ('489', 'Yuriria', '12');
INSERT INTO `municipios` VALUES ('490', 'Acapulco de Juárez', '13');
INSERT INTO `municipios` VALUES ('491', 'Acatepec', '13');
INSERT INTO `municipios` VALUES ('492', 'Ahuacuotzingo', '13');
INSERT INTO `municipios` VALUES ('493', 'Ajuchitlán del Progreso', '13');
INSERT INTO `municipios` VALUES ('494', 'Alcozauca de Guerrero', '13');
INSERT INTO `municipios` VALUES ('495', 'Alpoyeca', '13');
INSERT INTO `municipios` VALUES ('496', 'Apaxtla', '13');
INSERT INTO `municipios` VALUES ('497', 'Arcelia', '13');
INSERT INTO `municipios` VALUES ('498', 'Atenango del Río', '13');
INSERT INTO `municipios` VALUES ('499', 'Atlamajalcingo del Monte', '13');
INSERT INTO `municipios` VALUES ('500', 'Atlixtac', '13');
INSERT INTO `municipios` VALUES ('501', 'Atoyac de Alvarez', '13');
INSERT INTO `municipios` VALUES ('502', 'Ayutla de los Libres', '13');
INSERT INTO `municipios` VALUES ('2456', 'Azoyú', '13');
INSERT INTO `municipios` VALUES ('503', 'Benito Juárez', '13');
INSERT INTO `municipios` VALUES ('504', 'Buenavista de Cuéllar', '13');
INSERT INTO `municipios` VALUES ('505', 'Chilapa de Alvarez', '13');
INSERT INTO `municipios` VALUES ('506', 'Chilpancingo de los Bravo', '13');
INSERT INTO `municipios` VALUES ('507', 'Coahuayutla de José María ', '13');
INSERT INTO `municipios` VALUES ('508', 'Izazaga', '13');
INSERT INTO `municipios` VALUES ('509', 'Cochoapa el Grande', '13');
INSERT INTO `municipios` VALUES ('510', 'Cocula', '13');
INSERT INTO `municipios` VALUES ('511', 'Copala', '13');
INSERT INTO `municipios` VALUES ('512', 'Copalillo', '13');
INSERT INTO `municipios` VALUES ('513', 'Copanatoyac', '13');
INSERT INTO `municipios` VALUES ('514', 'Coyuca de Benítez', '13');
INSERT INTO `municipios` VALUES ('515', 'Coyuca de Catalán', '13');
INSERT INTO `municipios` VALUES ('516', 'Cuajinicuilapa', '13');
INSERT INTO `municipios` VALUES ('517', 'Cualác', '13');
INSERT INTO `municipios` VALUES ('518', 'Cuautepec', '13');
INSERT INTO `municipios` VALUES ('519', 'Cuetzala del Progreso', '13');
INSERT INTO `municipios` VALUES ('520', 'Cutzamala de Pinzón', '13');
INSERT INTO `municipios` VALUES ('521', 'Eduardo Neri', '13');
INSERT INTO `municipios` VALUES ('522', 'Florencio Villarreal', '13');
INSERT INTO `municipios` VALUES ('523', 'General Canuto A. Neri', '13');
INSERT INTO `municipios` VALUES ('524', 'General Heliodoro Castillo', '13');
INSERT INTO `municipios` VALUES ('525', 'Huamuxtitlán', '13');
INSERT INTO `municipios` VALUES ('526', 'Huitzuco de los Figueroa', '13');
INSERT INTO `municipios` VALUES ('527', 'Iguala de la Independencia', '13');
INSERT INTO `municipios` VALUES ('528', 'Igualapa', '13');
INSERT INTO `municipios` VALUES ('529', 'Ixcateopan de Cuauhtémoc', '13');
INSERT INTO `municipios` VALUES ('530', 'José Azueta', '13');
INSERT INTO `municipios` VALUES ('531', 'José Joaquin de Herrera', '13');
INSERT INTO `municipios` VALUES ('532', 'Juan R. Escudero', '13');
INSERT INTO `municipios` VALUES ('533', 'La Unión de Isidoro Montes de Oca ', '13');
INSERT INTO `municipios` VALUES ('534', 'Leonardo Bravo', '13');
INSERT INTO `municipios` VALUES ('535', 'Malinaltepec', '13');
INSERT INTO `municipios` VALUES ('536', 'Marquelia', '13');
INSERT INTO `municipios` VALUES ('537', 'Mártir de Cuilapan ', '13');
INSERT INTO `municipios` VALUES ('538', 'Metlatónoc', '13');
INSERT INTO `municipios` VALUES ('539', 'Mochitlán', '13');
INSERT INTO `municipios` VALUES ('540', 'Olinalá', '13');
INSERT INTO `municipios` VALUES ('541', 'Ometepec', '13');
INSERT INTO `municipios` VALUES ('542', 'Pedro Ascencio Alquisiras ', '13');
INSERT INTO `municipios` VALUES ('543', 'Petatlán', '13');
INSERT INTO `municipios` VALUES ('544', 'Pilcaya', '13');
INSERT INTO `municipios` VALUES ('545', 'Pungarabato', '13');
INSERT INTO `municipios` VALUES ('546', 'Quechultenango', '13');
INSERT INTO `municipios` VALUES ('547', 'San Luis Acatlán ', '13');
INSERT INTO `municipios` VALUES ('548', 'San Marcos', '13');
INSERT INTO `municipios` VALUES ('549', 'San Miguel Totolapan', '13');
INSERT INTO `municipios` VALUES ('550', 'Taxco de Alarcón', '13');
INSERT INTO `municipios` VALUES ('551', 'Tecoanapa', '13');
INSERT INTO `municipios` VALUES ('552', 'Técpan de Galeana ', '13');
INSERT INTO `municipios` VALUES ('553', 'Teloloapan', '13');
INSERT INTO `municipios` VALUES ('554', 'Tepecoacuilco de Trujano', '13');
INSERT INTO `municipios` VALUES ('555', 'Tetipac', '13');
INSERT INTO `municipios` VALUES ('556', 'Tixtla de Guerrero', '13');
INSERT INTO `municipios` VALUES ('557', 'Tlacoachistlahuaca ', '13');
INSERT INTO `municipios` VALUES ('558', 'Tlacoapa', '13');
INSERT INTO `municipios` VALUES ('559', 'Tlalchapa', '13');
INSERT INTO `municipios` VALUES ('560', 'Tlalixtaquilla de Maldonado', '13');
INSERT INTO `municipios` VALUES ('561', 'Tlapa de Comonfort', '13');
INSERT INTO `municipios` VALUES ('562', 'Tlapehuala ', '13');
INSERT INTO `municipios` VALUES ('2457', 'Xalpatláhuac', '13');
INSERT INTO `municipios` VALUES ('563', 'Xochihuehuetlán', '13');
INSERT INTO `municipios` VALUES ('564', 'Xochistlahuaca', '13');
INSERT INTO `municipios` VALUES ('565', 'Zapotitlán Tablas', '13');
INSERT INTO `municipios` VALUES ('566', 'Zirándaro ', '13');
INSERT INTO `municipios` VALUES ('567', 'Zitlala', '13');
INSERT INTO `municipios` VALUES ('568', 'Acatlán', '14');
INSERT INTO `municipios` VALUES ('569', 'Acaxochitlán', '14');
INSERT INTO `municipios` VALUES ('570', 'Actopan', '14');
INSERT INTO `municipios` VALUES ('571', 'Agua Blanca de Iturbide', '14');
INSERT INTO `municipios` VALUES ('572', 'Ajacuba', '14');
INSERT INTO `municipios` VALUES ('573', 'Alfajayucan', '14');
INSERT INTO `municipios` VALUES ('574', 'Almoloya', '14');
INSERT INTO `municipios` VALUES ('575', 'Apan', '14');
INSERT INTO `municipios` VALUES ('576', 'Atitalaquia', '14');
INSERT INTO `municipios` VALUES ('577', 'Atlapexco', '14');
INSERT INTO `municipios` VALUES ('578', 'Atotonilco de Tula', '14');
INSERT INTO `municipios` VALUES ('579', 'Atotonilco el Grande', '14');
INSERT INTO `municipios` VALUES ('580', 'Calnali', '14');
INSERT INTO `municipios` VALUES ('581', 'Cardonal', '14');
INSERT INTO `municipios` VALUES ('582', 'Chapantongo', '14');
INSERT INTO `municipios` VALUES ('583', 'Chapulhuacán', '14');
INSERT INTO `municipios` VALUES ('584', 'Chilcuautla', '14');
INSERT INTO `municipios` VALUES ('585', 'Cuautepec de Hinojosa', '14');
INSERT INTO `municipios` VALUES ('586', 'El Arenal ', '14');
INSERT INTO `municipios` VALUES ('587', 'Eloxochitlán', '14');
INSERT INTO `municipios` VALUES ('588', 'Emiliano Zapata', '14');
INSERT INTO `municipios` VALUES ('589', 'Epazoyucan', '14');
INSERT INTO `municipios` VALUES ('590', 'Francisco I. Madero', '14');
INSERT INTO `municipios` VALUES ('591', 'Huasca de Ocampo', '14');
INSERT INTO `municipios` VALUES ('592', 'Huautla', '14');
INSERT INTO `municipios` VALUES ('593', 'Huazalingo', '14');
INSERT INTO `municipios` VALUES ('594', 'Huehuetla', '14');
INSERT INTO `municipios` VALUES ('595', 'Huejutla de Reyes', '14');
INSERT INTO `municipios` VALUES ('596', 'Huichapan', '14');
INSERT INTO `municipios` VALUES ('597', 'Ixmiquilpan', '14');
INSERT INTO `municipios` VALUES ('598', 'Jacala de Ledezma', '14');
INSERT INTO `municipios` VALUES ('599', 'Jaltocán', '14');
INSERT INTO `municipios` VALUES ('600', 'Juárez Hidalgo', '14');
INSERT INTO `municipios` VALUES ('601', 'La Misión', '14');
INSERT INTO `municipios` VALUES ('602', 'Lolotla', '14');
INSERT INTO `municipios` VALUES ('603', 'Metepec', '14');
INSERT INTO `municipios` VALUES ('604', 'Metztitlán', '14');
INSERT INTO `municipios` VALUES ('605', 'Mineral de la Reforma', '14');
INSERT INTO `municipios` VALUES ('606', 'Mineral del Chico', '14');
INSERT INTO `municipios` VALUES ('607', 'Mineral del Monte', '14');
INSERT INTO `municipios` VALUES ('608', 'Mixquiahuala de Juárez', '14');
INSERT INTO `municipios` VALUES ('609', 'Molango de Escamilla', '14');
INSERT INTO `municipios` VALUES ('610', 'Nicolás Flores', '14');
INSERT INTO `municipios` VALUES ('611', 'Nopala de Villagrán', '14');
INSERT INTO `municipios` VALUES ('612', 'Omitlán de Juárez ', '14');
INSERT INTO `municipios` VALUES ('613', 'Pachuca de Soto', '14');
INSERT INTO `municipios` VALUES ('614', 'Pacula', '14');
INSERT INTO `municipios` VALUES ('615', 'Pisaflores', '14');
INSERT INTO `municipios` VALUES ('616', 'Progreso de Obregón ', '14');
INSERT INTO `municipios` VALUES ('617', 'San Agustín Metzquititlán', '14');
INSERT INTO `municipios` VALUES ('618', 'San Agustín Tlaxiaca', '14');
INSERT INTO `municipios` VALUES ('619', 'San Bartolo Tutotepec', '14');
INSERT INTO `municipios` VALUES ('620', 'San Felipe Orizatlán', '14');
INSERT INTO `municipios` VALUES ('621', 'San Salvador ', '14');
INSERT INTO `municipios` VALUES ('622', 'Santiago de Anaya', '14');
INSERT INTO `municipios` VALUES ('623', 'Santiago Tulantepec de Lugo Guerre', '14');
INSERT INTO `municipios` VALUES ('624', 'Singuilucan', '14');
INSERT INTO `municipios` VALUES ('625', 'Tasquillo', '14');
INSERT INTO `municipios` VALUES ('626', 'Tecozautla ', '14');
INSERT INTO `municipios` VALUES ('627', 'Tenango de Doria', '14');
INSERT INTO `municipios` VALUES ('628', 'Tepeapulco', '14');
INSERT INTO `municipios` VALUES ('629', 'Tepehuacán de Guerrero', '14');
INSERT INTO `municipios` VALUES ('630', 'Tepeji del Río de Ocampo', '14');
INSERT INTO `municipios` VALUES ('631', 'Tepetitlán ', '14');
INSERT INTO `municipios` VALUES ('632', 'Tetepango', '14');
INSERT INTO `municipios` VALUES ('633', 'Tezontepec de Aldama', '14');
INSERT INTO `municipios` VALUES ('634', 'Tianguistengo', '14');
INSERT INTO `municipios` VALUES ('635', 'Tizayuca', '14');
INSERT INTO `municipios` VALUES ('636', 'Tlahuelilpan ', '14');
INSERT INTO `municipios` VALUES ('637', 'Tlahuiltepa', '14');
INSERT INTO `municipios` VALUES ('638', 'Tlanalapa', '14');
INSERT INTO `municipios` VALUES ('639', 'Tlanchinol', '14');
INSERT INTO `municipios` VALUES ('640', 'Tlaxcoapan', '14');
INSERT INTO `municipios` VALUES ('641', 'Tolcayuca ', '14');
INSERT INTO `municipios` VALUES ('642', 'Tula de Allende', '14');
INSERT INTO `municipios` VALUES ('643', 'Tulancingo de Bravo', '14');
INSERT INTO `municipios` VALUES ('644', 'Villa de Tezontepec', '14');
INSERT INTO `municipios` VALUES ('645', 'Xochiatipan', '14');
INSERT INTO `municipios` VALUES ('646', 'Xochicoatlán ', '14');
INSERT INTO `municipios` VALUES ('647', 'Yahualica', '14');
INSERT INTO `municipios` VALUES ('648', 'Zacualtipán de Ángeles', '14');
INSERT INTO `municipios` VALUES ('649', 'Zapotlán de Juárez', '14');
INSERT INTO `municipios` VALUES ('650', 'Zempoala ', '14');
INSERT INTO `municipios` VALUES ('651', 'Zimapán', '14');
INSERT INTO `municipios` VALUES ('652', 'Acatic ', '15');
INSERT INTO `municipios` VALUES ('653', 'Acatlán de Juárez ', '15');
INSERT INTO `municipios` VALUES ('654', 'Ahualulco de Mercado ', '15');
INSERT INTO `municipios` VALUES ('655', 'Amacueca', '15');
INSERT INTO `municipios` VALUES ('656', 'Amatitán ', '15');
INSERT INTO `municipios` VALUES ('657', 'Ameca ', '15');
INSERT INTO `municipios` VALUES ('658', 'Arandas ', '15');
INSERT INTO `municipios` VALUES ('659', 'Atemajac de Brizuela ', '15');
INSERT INTO `municipios` VALUES ('660', 'Atengo ', '15');
INSERT INTO `municipios` VALUES ('661', 'Atenguillo ', '15');
INSERT INTO `municipios` VALUES ('662', 'Atotonilco el Alto ', '15');
INSERT INTO `municipios` VALUES ('663', 'Atoyac ', '15');
INSERT INTO `municipios` VALUES ('664', 'Autlán de Navarro ', '15');
INSERT INTO `municipios` VALUES ('665', 'Ayotlán ', '15');
INSERT INTO `municipios` VALUES ('666', 'Ayutla ', '15');
INSERT INTO `municipios` VALUES ('667', 'Bolaños ', '15');
INSERT INTO `municipios` VALUES ('668', 'Cabo Corrientes ', '15');
INSERT INTO `municipios` VALUES ('669', 'Cañadas de Obregón ', '15');
INSERT INTO `municipios` VALUES ('670', 'Casimiro Castillo ', '15');
INSERT INTO `municipios` VALUES ('671', 'Chapala ', '15');
INSERT INTO `municipios` VALUES ('672', 'Chimaltitán ', '15');
INSERT INTO `municipios` VALUES ('673', 'Chiquilistlán ', '15');
INSERT INTO `municipios` VALUES ('674', 'Cihuatlán ', '15');
INSERT INTO `municipios` VALUES ('675', 'Cocula', '15');
INSERT INTO `municipios` VALUES ('676', 'Colotlán', '15');
INSERT INTO `municipios` VALUES ('677', 'Concepción de Buenos Aires ', '15');
INSERT INTO `municipios` VALUES ('678', 'Cuautitlán de García Barragán ', '15');
INSERT INTO `municipios` VALUES ('679', 'Cuautla ', '15');
INSERT INTO `municipios` VALUES ('680', 'Cuquío ', '15');
INSERT INTO `municipios` VALUES ('681', 'Degollado ', '15');
INSERT INTO `municipios` VALUES ('682', 'Ejutla ', '15');
INSERT INTO `municipios` VALUES ('683', 'EL Arenal ', '15');
INSERT INTO `municipios` VALUES ('684', 'El Grullo ', '15');
INSERT INTO `municipios` VALUES ('685', 'El Limón ', '15');
INSERT INTO `municipios` VALUES ('686', 'El Salto ', '15');
INSERT INTO `municipios` VALUES ('687', 'Encarnación de Díaz ', '15');
INSERT INTO `municipios` VALUES ('688', 'Etzatlán ', '15');
INSERT INTO `municipios` VALUES ('689', 'Gómez Farías', '15');
INSERT INTO `municipios` VALUES ('690', 'Guachinango ', '15');
INSERT INTO `municipios` VALUES ('691', 'Guadalajara ', '15');
INSERT INTO `municipios` VALUES ('692', 'Hostotipaquillo ', '15');
INSERT INTO `municipios` VALUES ('693', 'Huejúcar', '15');
INSERT INTO `municipios` VALUES ('694', 'Huejuquilla el Alto ', '15');
INSERT INTO `municipios` VALUES ('695', 'Ixtlahuacán de los Membrillos ', '15');
INSERT INTO `municipios` VALUES ('696', 'Ixtlahuacán del Río', '15');
INSERT INTO `municipios` VALUES ('697', 'Jalostotitlán', '15');
INSERT INTO `municipios` VALUES ('698', 'Jamay ', '15');
INSERT INTO `municipios` VALUES ('699', 'Jesús María ', '15');
INSERT INTO `municipios` VALUES ('700', 'Jilotlán de los Dolores ', '15');
INSERT INTO `municipios` VALUES ('701', 'Jocotepec ', '15');
INSERT INTO `municipios` VALUES ('702', 'Juanacatlán ', '15');
INSERT INTO `municipios` VALUES ('703', 'Juchitlán ', '15');
INSERT INTO `municipios` VALUES ('704', 'Lagos de Moreno ', '15');
INSERT INTO `municipios` VALUES ('705', 'Magdalena ', '15');
INSERT INTO `municipios` VALUES ('706', 'Santa María del Oro ', '15');
INSERT INTO `municipios` VALUES ('707', 'La Manzanilla de la Paz ', '15');
INSERT INTO `municipios` VALUES ('708', 'Mascota', '15');
INSERT INTO `municipios` VALUES ('709', 'Mazamitla', '15');
INSERT INTO `municipios` VALUES ('710', 'Mexticacán ', '15');
INSERT INTO `municipios` VALUES ('711', 'Mezquitic ', '15');
INSERT INTO `municipios` VALUES ('712', 'Mixtlán', '15');
INSERT INTO `municipios` VALUES ('713', 'Ocotlán', '15');
INSERT INTO `municipios` VALUES ('714', 'Ojuelos de Jalisco', '15');
INSERT INTO `municipios` VALUES ('715', 'Pihuamo', '15');
INSERT INTO `municipios` VALUES ('716', 'Poncitlán', '15');
INSERT INTO `municipios` VALUES ('717', 'Puerto Vallarta', '15');
INSERT INTO `municipios` VALUES ('718', 'Villa Purificación', '15');
INSERT INTO `municipios` VALUES ('719', 'Quitupan', '15');
INSERT INTO `municipios` VALUES ('720', 'San Cristóbal de la Barranca', '15');
INSERT INTO `municipios` VALUES ('721', 'San Diego de Alejandría', '15');
INSERT INTO `municipios` VALUES ('722', 'San Juan de los Lagos', '15');
INSERT INTO `municipios` VALUES ('723', 'San Juanito de Escobedo', '15');
INSERT INTO `municipios` VALUES ('724', 'San Julián', '15');
INSERT INTO `municipios` VALUES ('725', 'San Marcos', '15');
INSERT INTO `municipios` VALUES ('726', 'San Martín de Bolaños', '15');
INSERT INTO `municipios` VALUES ('727', 'San Martín Hidalgo', '15');
INSERT INTO `municipios` VALUES ('728', 'San Miguel el Alto', '15');
INSERT INTO `municipios` VALUES ('729', 'San Sebastián del Oeste', '15');
INSERT INTO `municipios` VALUES ('730', 'Santa María de los Ángeles', '15');
INSERT INTO `municipios` VALUES ('731', 'Sayula', '15');
INSERT INTO `municipios` VALUES ('732', 'Tala', '15');
INSERT INTO `municipios` VALUES ('733', 'Talpa de Allende', '15');
INSERT INTO `municipios` VALUES ('734', 'Tamazula de Gordiano', '15');
INSERT INTO `municipios` VALUES ('735', 'Tapalpa', '15');
INSERT INTO `municipios` VALUES ('736', 'Tecalitlán', '15');
INSERT INTO `municipios` VALUES ('737', 'Tecolotlán', '15');
INSERT INTO `municipios` VALUES ('738', 'Techaluta de Montenegro', '15');
INSERT INTO `municipios` VALUES ('739', 'Tenamaxtlán', '15');
INSERT INTO `municipios` VALUES ('740', 'Teocaltiche', '15');
INSERT INTO `municipios` VALUES ('741', 'Teocuitatlán de Corona', '15');
INSERT INTO `municipios` VALUES ('742', 'Tepatitlán de Morelos', '15');
INSERT INTO `municipios` VALUES ('743', 'Tequila', '15');
INSERT INTO `municipios` VALUES ('744', 'Teuchitlán', '15');
INSERT INTO `municipios` VALUES ('745', 'Tizapán el Alto', '15');
INSERT INTO `municipios` VALUES ('746', 'Tlajomulco de Zúñiga', '15');
INSERT INTO `municipios` VALUES ('747', 'Tlaquepaque', '15');
INSERT INTO `municipios` VALUES ('748', 'Tolimán', '15');
INSERT INTO `municipios` VALUES ('749', 'Tomatlán', '15');
INSERT INTO `municipios` VALUES ('750', 'Tonalá', '15');
INSERT INTO `municipios` VALUES ('751', 'Tonaya', '15');
INSERT INTO `municipios` VALUES ('752', 'Tonila', '15');
INSERT INTO `municipios` VALUES ('753', 'Totatiche', '15');
INSERT INTO `municipios` VALUES ('754', 'Tototlán', '15');
INSERT INTO `municipios` VALUES ('755', 'Tuxcacuesco', '15');
INSERT INTO `municipios` VALUES ('756', 'Tuxcueca', '15');
INSERT INTO `municipios` VALUES ('757', 'Tuxpan', '15');
INSERT INTO `municipios` VALUES ('758', 'Unión de San Antonio', '15');
INSERT INTO `municipios` VALUES ('759', 'Unión de Tula', '15');
INSERT INTO `municipios` VALUES ('760', 'Valle de Guadalupe', '15');
INSERT INTO `municipios` VALUES ('761', 'Valle de Juárez', '15');
INSERT INTO `municipios` VALUES ('762', 'San Gabriel', '15');
INSERT INTO `municipios` VALUES ('763', 'Villa Corona', '15');
INSERT INTO `municipios` VALUES ('764', 'Villa Guerrero', '15');
INSERT INTO `municipios` VALUES ('765', 'Villa Hidalgo', '15');
INSERT INTO `municipios` VALUES ('766', 'Villa Purificación', '15');
INSERT INTO `municipios` VALUES ('767', 'Yahualica de González Gallo', '15');
INSERT INTO `municipios` VALUES ('768', 'Zacoalco de Torres', '15');
INSERT INTO `municipios` VALUES ('769', 'Zapopan', '15');
INSERT INTO `municipios` VALUES ('770', 'Zapotiltic', '15');
INSERT INTO `municipios` VALUES ('771', 'Zapotitlán de Vadillo', '15');
INSERT INTO `municipios` VALUES ('772', 'Zapotlán del Rey', '15');
INSERT INTO `municipios` VALUES ('773', 'Zapotlán el Grande', '15');
INSERT INTO `municipios` VALUES ('774', 'Zapotlanejo', '15');
INSERT INTO `municipios` VALUES ('775', 'Acuitzio', '16');
INSERT INTO `municipios` VALUES ('776', 'Aguililla', '16');
INSERT INTO `municipios` VALUES ('777', 'Alvaro Obregón', '16');
INSERT INTO `municipios` VALUES ('778', 'Angamacutiro', '16');
INSERT INTO `municipios` VALUES ('779', 'Angangueo', '16');
INSERT INTO `municipios` VALUES ('780', 'Apatzingán', '16');
INSERT INTO `municipios` VALUES ('781', 'Aporo', '16');
INSERT INTO `municipios` VALUES ('782', 'Aquila', '16');
INSERT INTO `municipios` VALUES ('783', 'Ario', '16');
INSERT INTO `municipios` VALUES ('784', 'Arteaga', '16');
INSERT INTO `municipios` VALUES ('785', 'Briseñas', '16');
INSERT INTO `municipios` VALUES ('786', 'Buenavista', '16');
INSERT INTO `municipios` VALUES ('787', 'Carácuaro', '16');
INSERT INTO `municipios` VALUES ('788', 'Charapan', '16');
INSERT INTO `municipios` VALUES ('789', 'Charo', '16');
INSERT INTO `municipios` VALUES ('790', 'Chavinda', '16');
INSERT INTO `municipios` VALUES ('791', 'Cherán', '16');
INSERT INTO `municipios` VALUES ('792', 'Chilchota', '16');
INSERT INTO `municipios` VALUES ('793', 'Chinicuila', '16');
INSERT INTO `municipios` VALUES ('794', 'Chucándiro', '16');
INSERT INTO `municipios` VALUES ('795', 'Churintzio', '16');
INSERT INTO `municipios` VALUES ('796', 'Churumuco', '16');
INSERT INTO `municipios` VALUES ('797', 'Coahuayana', '16');
INSERT INTO `municipios` VALUES ('798', 'Coalcomán de Vázquez Pallares', '16');
INSERT INTO `municipios` VALUES ('799', 'Coeneo', '16');
INSERT INTO `municipios` VALUES ('800', 'Cojumatlán de Régules', '16');
INSERT INTO `municipios` VALUES ('801', 'Contepec', '16');
INSERT INTO `municipios` VALUES ('802', 'Copándaro', '16');
INSERT INTO `municipios` VALUES ('2458', 'Cotija', '16');
INSERT INTO `municipios` VALUES ('803', 'Cuitzeo', '16');
INSERT INTO `municipios` VALUES ('804', 'Ecuandureo', '16');
INSERT INTO `municipios` VALUES ('805', 'Epitacio Huerta', '16');
INSERT INTO `municipios` VALUES ('806', 'Erongarícuaro', '16');
INSERT INTO `municipios` VALUES ('807', 'Gabriel Zamora', '16');
INSERT INTO `municipios` VALUES ('808', 'Hidalgo', '16');
INSERT INTO `municipios` VALUES ('809', 'Huandacareo', '16');
INSERT INTO `municipios` VALUES ('810', 'Huaniqueo', '16');
INSERT INTO `municipios` VALUES ('811', 'Huetamo', '16');
INSERT INTO `municipios` VALUES ('812', 'Huiramba', '16');
INSERT INTO `municipios` VALUES ('813', 'Indaparapeo', '16');
INSERT INTO `municipios` VALUES ('814', 'Irimbo', '16');
INSERT INTO `municipios` VALUES ('815', 'Ixtlán', '16');
INSERT INTO `municipios` VALUES ('816', 'Jacona', '16');
INSERT INTO `municipios` VALUES ('817', 'Jiménez', '16');
INSERT INTO `municipios` VALUES ('818', 'Jiquilpan', '16');
INSERT INTO `municipios` VALUES ('819', 'José Sixto Verduzco', '16');
INSERT INTO `municipios` VALUES ('820', 'Juárez', '16');
INSERT INTO `municipios` VALUES ('821', 'Jungapeo', '16');
INSERT INTO `municipios` VALUES ('822', 'La Huacana', '16');
INSERT INTO `municipios` VALUES ('823', 'La Piedad', '16');
INSERT INTO `municipios` VALUES ('824', 'Lagunillas', '16');
INSERT INTO `municipios` VALUES ('825', 'Lázaro Cárdenas', '16');
INSERT INTO `municipios` VALUES ('826', 'Los Reyes', '16');
INSERT INTO `municipios` VALUES ('827', 'Madero', '16');
INSERT INTO `municipios` VALUES ('828', 'Maravatío', '16');
INSERT INTO `municipios` VALUES ('829', 'Marcos Castellanos', '16');
INSERT INTO `municipios` VALUES ('830', 'Morelia', '16');
INSERT INTO `municipios` VALUES ('831', 'Morelos', '16');
INSERT INTO `municipios` VALUES ('832', 'Múgica', '16');
INSERT INTO `municipios` VALUES ('833', 'Nahuatzen', '16');
INSERT INTO `municipios` VALUES ('834', 'Nocupétaro', '16');
INSERT INTO `municipios` VALUES ('835', 'Nuevo Parangaricutiro', '16');
INSERT INTO `municipios` VALUES ('836', 'Nuevo Urecho', '16');
INSERT INTO `municipios` VALUES ('837', 'Numarán', '16');
INSERT INTO `municipios` VALUES ('838', 'Ocampo', '16');
INSERT INTO `municipios` VALUES ('839', 'Pajacuarán', '16');
INSERT INTO `municipios` VALUES ('840', 'Panindícuaro', '16');
INSERT INTO `municipios` VALUES ('841', 'Paracho', '16');
INSERT INTO `municipios` VALUES ('842', 'Parácuaro', '16');
INSERT INTO `municipios` VALUES ('843', 'Pátzcuaro', '16');
INSERT INTO `municipios` VALUES ('844', 'Penjamillo', '16');
INSERT INTO `municipios` VALUES ('845', 'Peribán', '16');
INSERT INTO `municipios` VALUES ('846', 'Purépero', '16');
INSERT INTO `municipios` VALUES ('847', 'Puruándiro', '16');
INSERT INTO `municipios` VALUES ('848', 'Quiroga', '16');
INSERT INTO `municipios` VALUES ('849', 'Sahuayo', '16');
INSERT INTO `municipios` VALUES ('850', 'Salvador Escalante', '16');
INSERT INTO `municipios` VALUES ('851', 'San Lucas', '16');
INSERT INTO `municipios` VALUES ('852', 'Santa Ana Maya', '16');
INSERT INTO `municipios` VALUES ('853', 'Senguio', '16');
INSERT INTO `municipios` VALUES ('854', 'Susupuato', '16');
INSERT INTO `municipios` VALUES ('855', 'Tacámbaro', '16');
INSERT INTO `municipios` VALUES ('856', 'Tancítaro', '16');
INSERT INTO `municipios` VALUES ('857', 'Tangamandapio', '16');
INSERT INTO `municipios` VALUES ('858', 'Tangancícuaro', '16');
INSERT INTO `municipios` VALUES ('859', 'Tanhuato', '16');
INSERT INTO `municipios` VALUES ('860', 'Taretan', '16');
INSERT INTO `municipios` VALUES ('861', 'Tarímbaro', '16');
INSERT INTO `municipios` VALUES ('862', 'Tepalcatepec', '16');
INSERT INTO `municipios` VALUES ('863', 'Tinguindin', '16');
INSERT INTO `municipios` VALUES ('864', 'Tingambato', '16');
INSERT INTO `municipios` VALUES ('865', 'Tiquicheo de Nicolás Romero', '16');
INSERT INTO `municipios` VALUES ('866', 'Tlalpujahua', '16');
INSERT INTO `municipios` VALUES ('867', 'Tlazazalca', '16');
INSERT INTO `municipios` VALUES ('868', 'Tocumbo', '16');
INSERT INTO `municipios` VALUES ('869', 'Tumbiscatío', '16');
INSERT INTO `municipios` VALUES ('870', 'Turicato', '16');
INSERT INTO `municipios` VALUES ('871', 'Tuxpan', '16');
INSERT INTO `municipios` VALUES ('872', 'Tuzantla', '16');
INSERT INTO `municipios` VALUES ('873', 'Tzintzuntzan', '16');
INSERT INTO `municipios` VALUES ('874', 'Tzitzio', '16');
INSERT INTO `municipios` VALUES ('875', 'Uruapan', '16');
INSERT INTO `municipios` VALUES ('876', 'Venustiano Carranza', '16');
INSERT INTO `municipios` VALUES ('877', 'Villamar', '16');
INSERT INTO `municipios` VALUES ('878', 'Vista Hermosa', '16');
INSERT INTO `municipios` VALUES ('879', 'Yurécuaro', '16');
INSERT INTO `municipios` VALUES ('880', 'Zacapu', '16');
INSERT INTO `municipios` VALUES ('881', 'Zamora', '16');
INSERT INTO `municipios` VALUES ('882', 'Zináparo', '16');
INSERT INTO `municipios` VALUES ('883', 'Zinapécuaro', '16');
INSERT INTO `municipios` VALUES ('884', 'Ziracuaretiro', '16');
INSERT INTO `municipios` VALUES ('885', 'Zitácuaro', '16');
INSERT INTO `municipios` VALUES ('886', 'Amacuzac ', '17');
INSERT INTO `municipios` VALUES ('887', 'Atlatlahucan ', '17');
INSERT INTO `municipios` VALUES ('888', 'Axochiapan ', '17');
INSERT INTO `municipios` VALUES ('889', 'Ayala ', '17');
INSERT INTO `municipios` VALUES ('890', 'Coatlan del Río ', '17');
INSERT INTO `municipios` VALUES ('891', 'Cuautla ', '17');
INSERT INTO `municipios` VALUES ('892', 'Cuernavaca ', '17');
INSERT INTO `municipios` VALUES ('893', 'Emiliano Zapata ', '17');
INSERT INTO `municipios` VALUES ('894', 'Huitzilac ', '17');
INSERT INTO `municipios` VALUES ('895', 'Jantetelco ', '17');
INSERT INTO `municipios` VALUES ('896', 'Jiutepec ', '17');
INSERT INTO `municipios` VALUES ('897', 'Jojutla ', '17');
INSERT INTO `municipios` VALUES ('898', 'Jonacatepec ', '17');
INSERT INTO `municipios` VALUES ('899', 'Mazatepec ', '17');
INSERT INTO `municipios` VALUES ('900', 'Miacatlán ', '17');
INSERT INTO `municipios` VALUES ('901', 'Ocuituco ', '17');
INSERT INTO `municipios` VALUES ('902', 'Puente de Ixtla ', '17');
INSERT INTO `municipios` VALUES ('903', 'Temixco ', '17');
INSERT INTO `municipios` VALUES ('904', 'Temoac', '17');
INSERT INTO `municipios` VALUES ('905', 'Tepalcingo ', '17');
INSERT INTO `municipios` VALUES ('906', 'Tepoztlan ', '17');
INSERT INTO `municipios` VALUES ('907', 'Tetecala ', '17');
INSERT INTO `municipios` VALUES ('908', 'Tetela del Volcán ', '17');
INSERT INTO `municipios` VALUES ('909', 'Tlalnepantla', '17');
INSERT INTO `municipios` VALUES ('910', 'Tlaltizapan', '17');
INSERT INTO `municipios` VALUES ('911', 'Tlaquiltenango', '17');
INSERT INTO `municipios` VALUES ('912', 'Tlayacapan', '17');
INSERT INTO `municipios` VALUES ('913', 'Totolapan', '17');
INSERT INTO `municipios` VALUES ('914', 'Xochitepec', '17');
INSERT INTO `municipios` VALUES ('915', 'Yautepec', '17');
INSERT INTO `municipios` VALUES ('916', 'Yecapixtla', '17');
INSERT INTO `municipios` VALUES ('917', 'Zacatepec', '17');
INSERT INTO `municipios` VALUES ('918', 'Zacualpan de Amilpas', '17');
INSERT INTO `municipios` VALUES ('919', 'Acaponeta', '18');
INSERT INTO `municipios` VALUES ('920', 'Ahuacatlán ', '18');
INSERT INTO `municipios` VALUES ('921', 'Amatlán de Cañas ', '18');
INSERT INTO `municipios` VALUES ('922', 'Bahía de Banderas', '18');
INSERT INTO `municipios` VALUES ('923', 'Compostela ', '18');
INSERT INTO `municipios` VALUES ('924', 'Del Nayar ', '18');
INSERT INTO `municipios` VALUES ('925', 'Huajicori ', '18');
INSERT INTO `municipios` VALUES ('926', 'Ixtlán del Río ', '18');
INSERT INTO `municipios` VALUES ('927', 'Jala', '18');
INSERT INTO `municipios` VALUES ('928', 'La Yesca ', '18');
INSERT INTO `municipios` VALUES ('929', 'Rosamorada ', '18');
INSERT INTO `municipios` VALUES ('930', 'Ruíz', '18');
INSERT INTO `municipios` VALUES ('931', 'San Blas', '18');
INSERT INTO `municipios` VALUES ('932', 'San Pedro Lagunillas', '18');
INSERT INTO `municipios` VALUES ('933', 'Santa María del Oro', '18');
INSERT INTO `municipios` VALUES ('934', 'Santiago Ixcuintla', '18');
INSERT INTO `municipios` VALUES ('935', 'Tecuala', '18');
INSERT INTO `municipios` VALUES ('936', 'Tepic', '18');
INSERT INTO `municipios` VALUES ('937', 'Tuxpan', '18');
INSERT INTO `municipios` VALUES ('938', 'Xalisco ', '18');
INSERT INTO `municipios` VALUES ('939', 'Abasolo  ', '19');
INSERT INTO `municipios` VALUES ('940', 'Agualeguas', '19');
INSERT INTO `municipios` VALUES ('941', 'Los Aldamas', '19');
INSERT INTO `municipios` VALUES ('942', 'Allende ', '19');
INSERT INTO `municipios` VALUES ('943', 'Anáhuac ', '19');
INSERT INTO `municipios` VALUES ('944', 'Apodaca ', '19');
INSERT INTO `municipios` VALUES ('945', 'Aramberri ', '19');
INSERT INTO `municipios` VALUES ('946', 'Bustamante ', '19');
INSERT INTO `municipios` VALUES ('947', 'Cadereyta Jiménez ', '19');
INSERT INTO `municipios` VALUES ('948', 'El Carmen', '19');
INSERT INTO `municipios` VALUES ('949', 'Cerralvo ', '19');
INSERT INTO `municipios` VALUES ('950', 'China ', '19');
INSERT INTO `municipios` VALUES ('951', 'Ciénega de Flores ', '19');
INSERT INTO `municipios` VALUES ('952', 'Doctor Arroyo ', '19');
INSERT INTO `municipios` VALUES ('953', 'Doctor Coss ', '19');
INSERT INTO `municipios` VALUES ('954', 'Doctor González ', '19');
INSERT INTO `municipios` VALUES ('955', 'Galeana ', '19');
INSERT INTO `municipios` VALUES ('956', 'García ', '19');
INSERT INTO `municipios` VALUES ('957', 'General Bravo ', '19');
INSERT INTO `municipios` VALUES ('958', 'General Escobedo ', '19');
INSERT INTO `municipios` VALUES ('959', 'General Terán', '19');
INSERT INTO `municipios` VALUES ('960', 'General Treviño', '19');
INSERT INTO `municipios` VALUES ('961', 'General Zaragoza ', '19');
INSERT INTO `municipios` VALUES ('962', 'General Zuazua ', '19');
INSERT INTO `municipios` VALUES ('963', 'Guadalupe ', '19');
INSERT INTO `municipios` VALUES ('964', 'Los Herreras', '19');
INSERT INTO `municipios` VALUES ('965', 'Hidalgo', '19');
INSERT INTO `municipios` VALUES ('966', 'Higueras', '19');
INSERT INTO `municipios` VALUES ('967', 'Hualahuises', '19');
INSERT INTO `municipios` VALUES ('968', 'Iturbide', '19');
INSERT INTO `municipios` VALUES ('969', 'Juárez', '19');
INSERT INTO `municipios` VALUES ('970', 'Lampazos de Naranjo', '19');
INSERT INTO `municipios` VALUES ('971', 'Linares', '19');
INSERT INTO `municipios` VALUES ('972', 'Mar', '19');
INSERT INTO `municipios` VALUES ('973', 'Melchor Ocampo', '19');
INSERT INTO `municipios` VALUES ('974', 'Mier y Noriega', '19');
INSERT INTO `municipios` VALUES ('975', 'Mina', '19');
INSERT INTO `municipios` VALUES ('976', 'Montemorelos', '19');
INSERT INTO `municipios` VALUES ('977', 'Monterrey', '19');
INSERT INTO `municipios` VALUES ('978', 'Par', '19');
INSERT INTO `municipios` VALUES ('979', 'Pesquer', '19');
INSERT INTO `municipios` VALUES ('980', 'Los Ramones', '19');
INSERT INTO `municipios` VALUES ('981', 'Rayones', '19');
INSERT INTO `municipios` VALUES ('982', 'Sabinas Hidalgo', '19');
INSERT INTO `municipios` VALUES ('983', 'Salinas Victoria', '19');
INSERT INTO `municipios` VALUES ('984', 'San Nicolás de los Garza', '19');
INSERT INTO `municipios` VALUES ('985', 'San Pedro Garza García', '19');
INSERT INTO `municipios` VALUES ('986', 'Santa Catarina', '19');
INSERT INTO `municipios` VALUES ('987', 'Santiago', '19');
INSERT INTO `municipios` VALUES ('989', 'Vallecillo', '19');
INSERT INTO `municipios` VALUES ('990', 'Villaldama', '19');
INSERT INTO `municipios` VALUES ('991', 'Abejones', '20');
INSERT INTO `municipios` VALUES ('992', 'Acatlán de Pérez Figueroa', '20');
INSERT INTO `municipios` VALUES ('993', 'Animas Trujano', '20');
INSERT INTO `municipios` VALUES ('994', 'Asunción Cacalotepec', '20');
INSERT INTO `municipios` VALUES ('995', 'Asunción Cuyotepeji', '20');
INSERT INTO `municipios` VALUES ('996', 'Asunción Ixtaltepec', '20');
INSERT INTO `municipios` VALUES ('997', 'Asunción Nochixtlán', '20');
INSERT INTO `municipios` VALUES ('998', 'Asunción Ocotlán', '20');
INSERT INTO `municipios` VALUES ('999', 'Asunción Tlacolulita', '20');
INSERT INTO `municipios` VALUES ('1000', 'Ayoquezco de Aldama', '20');
INSERT INTO `municipios` VALUES ('1001', 'Ayotzintepec', '20');
INSERT INTO `municipios` VALUES ('1002', 'Calihualá', '20');
INSERT INTO `municipios` VALUES ('1003', 'Candelaria Loxicha', '20');
INSERT INTO `municipios` VALUES ('1004', 'Capulálpam de Méndez', '20');
INSERT INTO `municipios` VALUES ('1005', 'Chahuites', '20');
INSERT INTO `municipios` VALUES ('1006', 'Chalcatongo de Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1007', 'Chiquihuitlán de Benito Juárez', '20');
INSERT INTO `municipios` VALUES ('1008', 'Ciénega de Zimatlán', '20');
INSERT INTO `municipios` VALUES ('1009', 'Ciudad Ixtepec', '20');
INSERT INTO `municipios` VALUES ('1010', 'Coatecas Altas', '20');
INSERT INTO `municipios` VALUES ('1011', 'Coicoyán de las Flores', '20');
INSERT INTO `municipios` VALUES ('1012', 'Concepción Buenavista', '20');
INSERT INTO `municipios` VALUES ('1013', 'Concepción Pápalo', '20');
INSERT INTO `municipios` VALUES ('1014', 'Constancia del Rosario', '20');
INSERT INTO `municipios` VALUES ('1015', 'Cosolapa', '20');
INSERT INTO `municipios` VALUES ('1016', 'Cosoltepec', '20');
INSERT INTO `municipios` VALUES ('1017', 'Cuilápam de Guerrero', '20');
INSERT INTO `municipios` VALUES ('1018', 'Cuyamecalco Villa de Zaragoza', '20');
INSERT INTO `municipios` VALUES ('1019', 'El Barrio de la Soledad', '20');
INSERT INTO `municipios` VALUES ('1020', 'El Espinal', '20');
INSERT INTO `municipios` VALUES ('1021', 'Eloxochitlán de Flores Magón', '20');
INSERT INTO `municipios` VALUES ('1022', 'Fresnillo de Trujano', '20');
INSERT INTO `municipios` VALUES ('1023', 'Guadalupe de Ramírez', '20');
INSERT INTO `municipios` VALUES ('1024', 'Guadalupe Etla', '20');
INSERT INTO `municipios` VALUES ('1025', 'Guelatao de Juárez', '20');
INSERT INTO `municipios` VALUES ('1026', 'Guevea de Humboldt', '20');
INSERT INTO `municipios` VALUES ('1027', 'Heroica Ciudad de Ejutla de Crespo', '20');
INSERT INTO `municipios` VALUES ('1028', 'Heroica Ciudad de Huajuapan de Leó', '20');
INSERT INTO `municipios` VALUES ('1029', 'Heroica Ciudad de Tlaxiaco', '20');
INSERT INTO `municipios` VALUES ('1030', 'Huautepec', '20');
INSERT INTO `municipios` VALUES ('1031', 'Huautla de Jiménez', '20');
INSERT INTO `municipios` VALUES ('1032', 'Ixpantepec Nieves', '20');
INSERT INTO `municipios` VALUES ('1033', 'Ixtlán de Juárez', '20');
INSERT INTO `municipios` VALUES ('1034', 'Juchitán de Zaragoza', '20');
INSERT INTO `municipios` VALUES ('1035', 'La Compañía', '20');
INSERT INTO `municipios` VALUES ('1036', 'La Pe', '20');
INSERT INTO `municipios` VALUES ('1037', 'La Reforma', '20');
INSERT INTO `municipios` VALUES ('1038', 'La Trinidad Vista Hermosa', '20');
INSERT INTO `municipios` VALUES ('1039', 'Loma Bonita', '20');
INSERT INTO `municipios` VALUES ('1040', 'Magdalena Apasco', '20');
INSERT INTO `municipios` VALUES ('1041', 'Magdalena Jaltepec', '20');
INSERT INTO `municipios` VALUES ('1042', 'Magdalena Mixtepec', '20');
INSERT INTO `municipios` VALUES ('1043', 'Magdalena Ocotlán', '20');
INSERT INTO `municipios` VALUES ('1044', 'Magdalena Peñasco', '20');
INSERT INTO `municipios` VALUES ('1045', 'Magdalena Teitipac', '20');
INSERT INTO `municipios` VALUES ('1046', 'Magdalena Tequisistlán', '20');
INSERT INTO `municipios` VALUES ('1047', 'Magdalena Tlacotepec', '20');
INSERT INTO `municipios` VALUES ('1048', 'Magdalena Yodocono de Porfirio Día', '20');
INSERT INTO `municipios` VALUES ('1049', 'Magdalena Zahuatlán', '20');
INSERT INTO `municipios` VALUES ('1050', 'Mariscala de Juárez', '20');
INSERT INTO `municipios` VALUES ('1051', 'Mártires de Tacubaya', '20');
INSERT INTO `municipios` VALUES ('1052', 'Matías Romero Avendaño', '20');
INSERT INTO `municipios` VALUES ('1053', 'Mazatlán Villa de Flores', '20');
INSERT INTO `municipios` VALUES ('1054', 'Mesones Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1055', 'Miahuatlán de Porfirio Díaz', '20');
INSERT INTO `municipios` VALUES ('1056', 'Mixistlán de la Reforma', '20');
INSERT INTO `municipios` VALUES ('1057', 'Monjas', '20');
INSERT INTO `municipios` VALUES ('1058', 'Natividad', '20');
INSERT INTO `municipios` VALUES ('1059', 'Nazareno Etla', '20');
INSERT INTO `municipios` VALUES ('1060', 'Nejapa de Madero', '20');
INSERT INTO `municipios` VALUES ('1061', 'Nuevo Zoquiapam', '20');
INSERT INTO `municipios` VALUES ('1062', 'Oaxaca de Juárez', '20');
INSERT INTO `municipios` VALUES ('1063', 'Ocotlán de Morelos', '20');
INSERT INTO `municipios` VALUES ('1064', 'Pinotepa de Don Luis', '20');
INSERT INTO `municipios` VALUES ('1065', 'Pluma Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1066', 'Putla Villa de Guerrero', '20');
INSERT INTO `municipios` VALUES ('1067', 'Reforma de Pineda', '20');
INSERT INTO `municipios` VALUES ('1068', 'Reyes Etla', '20');
INSERT INTO `municipios` VALUES ('1069', 'Rojas de Cuauhtémoc', '20');
INSERT INTO `municipios` VALUES ('1070', 'Salina Cruz', '20');
INSERT INTO `municipios` VALUES ('1071', 'San Agustín Amatengo', '20');
INSERT INTO `municipios` VALUES ('1072', 'San Agustín Atenango', '20');
INSERT INTO `municipios` VALUES ('1073', 'San Agustín Chayuco', '20');
INSERT INTO `municipios` VALUES ('1074', 'San Agustín de las Juntas', '20');
INSERT INTO `municipios` VALUES ('1075', 'San Agustín Etla', '20');
INSERT INTO `municipios` VALUES ('1076', 'San Agustín Loxicha', '20');
INSERT INTO `municipios` VALUES ('1077', 'San Agustín Tlacotepec', '20');
INSERT INTO `municipios` VALUES ('1078', 'San Agustín Yatareni', '20');
INSERT INTO `municipios` VALUES ('1079', 'San Andrés Cabecera Nueva', '20');
INSERT INTO `municipios` VALUES ('1080', 'San Andrés Dinicuiti', '20');
INSERT INTO `municipios` VALUES ('1081', 'San Andrés Huaxpaltepec', '20');
INSERT INTO `municipios` VALUES ('1082', 'San Andrés Huayapam', '20');
INSERT INTO `municipios` VALUES ('1083', 'San Andrés Ixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1084', 'San Andrés Lagunas', '20');
INSERT INTO `municipios` VALUES ('1085', 'San Andrés Nuxiño', '20');
INSERT INTO `municipios` VALUES ('1086', 'San Andrés Paxtlán', '20');
INSERT INTO `municipios` VALUES ('1087', 'San Andrés Sinaxtla', '20');
INSERT INTO `municipios` VALUES ('1088', 'San Andrés Solaga', '20');
INSERT INTO `municipios` VALUES ('1089', 'San Andrés Teotilalpam', '20');
INSERT INTO `municipios` VALUES ('1090', 'San Andrés Tepetlapa', '20');
INSERT INTO `municipios` VALUES ('1091', 'San Andrés Yaá', '20');
INSERT INTO `municipios` VALUES ('1092', 'San Andrés Zabache', '20');
INSERT INTO `municipios` VALUES ('1093', 'San Andrés Zautla', '20');
INSERT INTO `municipios` VALUES ('1094', 'San Antonino Castillo Velasco', '20');
INSERT INTO `municipios` VALUES ('1095', 'San Antonino el Alto', '20');
INSERT INTO `municipios` VALUES ('1096', 'San Antonino Monte Verde', '20');
INSERT INTO `municipios` VALUES ('1097', 'San Antonio Acutla', '20');
INSERT INTO `municipios` VALUES ('1098', 'San Antonio de la Cal', '20');
INSERT INTO `municipios` VALUES ('1099', 'San Antonio Huitepec', '20');
INSERT INTO `municipios` VALUES ('1100', 'San Antonio Nanahuatípam', '20');
INSERT INTO `municipios` VALUES ('1101', 'San Antonio Sinicahua', '20');
INSERT INTO `municipios` VALUES ('1102', 'San Antonio Tepetlapa', '20');
INSERT INTO `municipios` VALUES ('1103', 'San Baltazar Chichicápam', '20');
INSERT INTO `municipios` VALUES ('1104', 'San Baltazar Loxicha', '20');
INSERT INTO `municipios` VALUES ('1105', 'San Baltazar Yatzachi el Bajo', '20');
INSERT INTO `municipios` VALUES ('1106', 'San Bartolo Coyotepec', '20');
INSERT INTO `municipios` VALUES ('1107', 'San Bartolo Soyaltepec', '20');
INSERT INTO `municipios` VALUES ('1108', 'San Bartolo Yautepec', '20');
INSERT INTO `municipios` VALUES ('1109', 'San Bartolomé Ayautla', '20');
INSERT INTO `municipios` VALUES ('1110', 'San Bartolomé Loxicha', '20');
INSERT INTO `municipios` VALUES ('1111', 'San Bartolomé Quialana', '20');
INSERT INTO `municipios` VALUES ('1112', 'San Bartolomé Yucuañe', '20');
INSERT INTO `municipios` VALUES ('1113', 'San Bartolomé Zoogocho', '20');
INSERT INTO `municipios` VALUES ('1114', 'San Bernardo Mixtepec', '20');
INSERT INTO `municipios` VALUES ('1115', 'San Blas Atempa', '20');
INSERT INTO `municipios` VALUES ('1116', 'San Carlos Yautepec', '20');
INSERT INTO `municipios` VALUES ('1117', 'San Cristóbal Amatlán', '20');
INSERT INTO `municipios` VALUES ('1118', 'San Cristóbal Amoltepec', '20');
INSERT INTO `municipios` VALUES ('1119', 'San Cristóbal Lachirioag', '20');
INSERT INTO `municipios` VALUES ('1120', 'San Cristóbal Suchixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1121', 'San Dionisio del Mar', '20');
INSERT INTO `municipios` VALUES ('1122', 'San Dionisio Ocotepec', '20');
INSERT INTO `municipios` VALUES ('1123', 'San Dionisio Ocotlán', '20');
INSERT INTO `municipios` VALUES ('1124', 'San Esteban Atatlahuca', '20');
INSERT INTO `municipios` VALUES ('1125', 'San Felipe Jalapa de Díaz', '20');
INSERT INTO `municipios` VALUES ('1126', 'San Felipe Tejalapam', '20');
INSERT INTO `municipios` VALUES ('1127', 'San Felipe Usila', '20');
INSERT INTO `municipios` VALUES ('1128', 'San Francisco Cahuacuá', '20');
INSERT INTO `municipios` VALUES ('1129', 'San Francisco Cajonos', '20');
INSERT INTO `municipios` VALUES ('1130', 'San Francisco Chapulapa', '20');
INSERT INTO `municipios` VALUES ('1131', 'San Francisco Chindúa', '20');
INSERT INTO `municipios` VALUES ('1132', 'San Francisco del Mar', '20');
INSERT INTO `municipios` VALUES ('1133', 'San Francisco Huehuetlán', '20');
INSERT INTO `municipios` VALUES ('1134', 'San Francisco Ixhuatán', '20');
INSERT INTO `municipios` VALUES ('1135', 'San Francisco Jaltepetongo', '20');
INSERT INTO `municipios` VALUES ('1136', 'San Francisco Lachigoló', '20');
INSERT INTO `municipios` VALUES ('1137', 'San Francisco Logueche', '20');
INSERT INTO `municipios` VALUES ('1138', 'San Francisco Nuxaño', '20');
INSERT INTO `municipios` VALUES ('1139', 'San Francisco Ozolotepec', '20');
INSERT INTO `municipios` VALUES ('1140', 'San Francisco Sola', '20');
INSERT INTO `municipios` VALUES ('1141', 'San Francisco Telixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1142', 'San Francisco Teopan', '20');
INSERT INTO `municipios` VALUES ('1143', 'San Francisco Tlapancingo', '20');
INSERT INTO `municipios` VALUES ('1144', 'San Gabriel Mixtepec', '20');
INSERT INTO `municipios` VALUES ('1145', 'San Ildefonso Amatlán', '20');
INSERT INTO `municipios` VALUES ('1146', 'San Ildefonso Sola', '20');
INSERT INTO `municipios` VALUES ('1147', 'San Ildefonso Villa Alta', '20');
INSERT INTO `municipios` VALUES ('1148', 'San Jacinto Amilpas', '20');
INSERT INTO `municipios` VALUES ('1149', 'San Jacinto Tlacotepec', '20');
INSERT INTO `municipios` VALUES ('1150', 'San Jerónimo Coatlán', '20');
INSERT INTO `municipios` VALUES ('1151', 'San Jerónimo Silacayoapilla', '20');
INSERT INTO `municipios` VALUES ('1152', 'San Jerónimo Sosola', '20');
INSERT INTO `municipios` VALUES ('1153', 'San Jerónimo Taviche', '20');
INSERT INTO `municipios` VALUES ('1154', 'San Jerónimo Tecoátl', '20');
INSERT INTO `municipios` VALUES ('1155', 'San Jerónimo Tlacochahuaya', '20');
INSERT INTO `municipios` VALUES ('1156', 'San Jorge Nuchita', '20');
INSERT INTO `municipios` VALUES ('1157', 'San José Ayuquila', '20');
INSERT INTO `municipios` VALUES ('1158', 'San José Chiltepec', '20');
INSERT INTO `municipios` VALUES ('1159', 'San José del Peñasco', '20');
INSERT INTO `municipios` VALUES ('1160', 'San José del Progreso', '20');
INSERT INTO `municipios` VALUES ('1161', 'San José Estancia Grande', '20');
INSERT INTO `municipios` VALUES ('1162', 'San José Independencia', '20');
INSERT INTO `municipios` VALUES ('1163', 'San José Lachiguiri', '20');
INSERT INTO `municipios` VALUES ('1164', 'San José Tenango', '20');
INSERT INTO `municipios` VALUES ('1165', 'San Juan Ñumí', '20');
INSERT INTO `municipios` VALUES ('1166', 'San Juan Achiutla', '20');
INSERT INTO `municipios` VALUES ('1167', 'San Juan Atepec', '20');
INSERT INTO `municipios` VALUES ('1168', 'San Juan Bautista Atatlahuca', '20');
INSERT INTO `municipios` VALUES ('1169', 'San Juan Bautista Coixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1170', 'San Juan Bautista Cuicatlán', '20');
INSERT INTO `municipios` VALUES ('1171', 'San Juan Bautista Guelache', '20');
INSERT INTO `municipios` VALUES ('1172', 'San Juan Bautista Jayacatlán', '20');
INSERT INTO `municipios` VALUES ('1173', 'San Juan Bautista Lo de Soto', '20');
INSERT INTO `municipios` VALUES ('1174', 'San Juan Bautista Suchitepec', '20');
INSERT INTO `municipios` VALUES ('1175', 'San Juan Bautista Tlachichilco', '20');
INSERT INTO `municipios` VALUES ('1176', 'San Juan Bautista ', '20');
INSERT INTO `municipios` VALUES ('1177', 'Tlacoatzintepec ', '20');
INSERT INTO `municipios` VALUES ('1178', 'San Juan Bautista Tuxtepec', '20');
INSERT INTO `municipios` VALUES ('1179', 'San Juan Bautista Valle Nacional', '20');
INSERT INTO `municipios` VALUES ('1180', 'San Juan Cacahuatepec', '20');
INSERT INTO `municipios` VALUES ('1181', 'San Juan Chicomezúchil', '20');
INSERT INTO `municipios` VALUES ('1182', 'San Juan Chilateca', '20');
INSERT INTO `municipios` VALUES ('1183', 'San Juan Cieneguilla', '20');
INSERT INTO `municipios` VALUES ('1184', 'San Juan Coatzóspam', '20');
INSERT INTO `municipios` VALUES ('1185', 'San Juan Colorado', '20');
INSERT INTO `municipios` VALUES ('1186', 'San Juan Comaltepec', '20');
INSERT INTO `municipios` VALUES ('1187', 'San Juan Cotzocón', '20');
INSERT INTO `municipios` VALUES ('1188', 'San Juan de los Cués', '20');
INSERT INTO `municipios` VALUES ('1189', 'San Juan del Estado', '20');
INSERT INTO `municipios` VALUES ('1190', 'San Juan del Río', '20');
INSERT INTO `municipios` VALUES ('1191', 'San Juan Diuxi', '20');
INSERT INTO `municipios` VALUES ('1192', 'San Juan Evangelista Analco', '20');
INSERT INTO `municipios` VALUES ('1193', 'San Juan Guelavía', '20');
INSERT INTO `municipios` VALUES ('1194', 'San Juan Guichicovi', '20');
INSERT INTO `municipios` VALUES ('1195', 'San Juan Ihualtepec', '20');
INSERT INTO `municipios` VALUES ('1196', 'San Juan Juquila Mixes', '20');
INSERT INTO `municipios` VALUES ('1197', 'San Juan Juquila Vijanos', '20');
INSERT INTO `municipios` VALUES ('1198', 'San Juan Lachao', '20');
INSERT INTO `municipios` VALUES ('1199', 'San Juan Lachigalla', '20');
INSERT INTO `municipios` VALUES ('1200', 'San Juan Lajarcia', '20');
INSERT INTO `municipios` VALUES ('1201', 'San Juan Lalana', '20');
INSERT INTO `municipios` VALUES ('1202', 'San Juan Mazatlán', '20');
INSERT INTO `municipios` VALUES ('1203', 'San Juan Mixtepec - Distr. 08', '20');
INSERT INTO `municipios` VALUES ('1204', 'San Juan Mixtepec - Distr. 26', '20');
INSERT INTO `municipios` VALUES ('1205', 'San Juan Ozolotepe', '20');
INSERT INTO `municipios` VALUES ('1206', 'San Juan Petlapa', '20');
INSERT INTO `municipios` VALUES ('1207', 'San Juan Quiahije', '20');
INSERT INTO `municipios` VALUES ('1208', 'San Juan Quiotepec', '20');
INSERT INTO `municipios` VALUES ('1209', 'San Juan Sayultepec', '20');
INSERT INTO `municipios` VALUES ('1210', 'San Juan Tabaá', '20');
INSERT INTO `municipios` VALUES ('1211', 'San Juan Tamazola', '20');
INSERT INTO `municipios` VALUES ('1212', 'San Juan Teita', '20');
INSERT INTO `municipios` VALUES ('1213', 'San Juan Teitipac', '20');
INSERT INTO `municipios` VALUES ('1214', 'San Juan Tepeuxila', '20');
INSERT INTO `municipios` VALUES ('1215', 'San Juan Teposcolula', '20');
INSERT INTO `municipios` VALUES ('1216', 'San Juan Yaeé', '20');
INSERT INTO `municipios` VALUES ('1217', 'San Juan Yatzona', '20');
INSERT INTO `municipios` VALUES ('1218', 'San Juan Yucuita', '20');
INSERT INTO `municipios` VALUES ('1219', 'San Lorenzo', '20');
INSERT INTO `municipios` VALUES ('1220', 'San Lorenzo Albarradas', '20');
INSERT INTO `municipios` VALUES ('1221', 'San Lorenzo Cacaotepec', '20');
INSERT INTO `municipios` VALUES ('1222', 'San Lorenzo Cuaunecuiltitla', '20');
INSERT INTO `municipios` VALUES ('1223', 'San Lorenzo Texmelucan', '20');
INSERT INTO `municipios` VALUES ('1224', 'San Lorenzo Victoria', '20');
INSERT INTO `municipios` VALUES ('1225', 'San Lucas Camotlán', '20');
INSERT INTO `municipios` VALUES ('1226', 'San Lucas Ojitlán', '20');
INSERT INTO `municipios` VALUES ('1227', 'San Lucas Quiaviní', '20');
INSERT INTO `municipios` VALUES ('1228', 'San Lucas Zoquiápam', '20');
INSERT INTO `municipios` VALUES ('1229', 'San Luis Amatlán', '20');
INSERT INTO `municipios` VALUES ('1230', 'San Marcial Ozolotepec', '20');
INSERT INTO `municipios` VALUES ('1231', 'San Marcos Arteaga', '20');
INSERT INTO `municipios` VALUES ('1232', 'San Martín de los Cansecos', '20');
INSERT INTO `municipios` VALUES ('1233', 'San Martín Huamelúlpam', '20');
INSERT INTO `municipios` VALUES ('1234', 'San Martín Itunyoso', '20');
INSERT INTO `municipios` VALUES ('1235', 'San Martín Lachilá', '20');
INSERT INTO `municipios` VALUES ('1236', 'San Martín Peras', '20');
INSERT INTO `municipios` VALUES ('1237', 'San Martín Tilcajete', '20');
INSERT INTO `municipios` VALUES ('1238', 'San Martín Toxpalan', '20');
INSERT INTO `municipios` VALUES ('1239', 'San Martín Zacatepec', '20');
INSERT INTO `municipios` VALUES ('1240', 'San Mateo Cajonos', '20');
INSERT INTO `municipios` VALUES ('1241', 'San Mateo del Mar', '20');
INSERT INTO `municipios` VALUES ('1242', 'San Mateo Etlatongo', '20');
INSERT INTO `municipios` VALUES ('1243', 'San Mateo Nejápam', '20');
INSERT INTO `municipios` VALUES ('1244', 'San Mateo Peñasco', '20');
INSERT INTO `municipios` VALUES ('1245', 'San Mateo Piñas', '20');
INSERT INTO `municipios` VALUES ('1246', 'San Mateo Río Hondo', '20');
INSERT INTO `municipios` VALUES ('1247', 'San Mateo Sindihui', '20');
INSERT INTO `municipios` VALUES ('1248', 'San Mateo Tlapiltepec', '20');
INSERT INTO `municipios` VALUES ('1249', 'San Mateo Yoloxochitlán', '20');
INSERT INTO `municipios` VALUES ('1250', 'San Melchor Betaza', '20');
INSERT INTO `municipios` VALUES ('1251', 'San Miguel Achiutla', '20');
INSERT INTO `municipios` VALUES ('1252', 'San Miguel Ahuehuetitlán', '20');
INSERT INTO `municipios` VALUES ('1253', 'San Miguel Aloápam', '20');
INSERT INTO `municipios` VALUES ('1254', 'San Miguel Amatitlán', '20');
INSERT INTO `municipios` VALUES ('1255', 'San Miguel Amatlán', '20');
INSERT INTO `municipios` VALUES ('1256', 'San Miguel Coatlán', '20');
INSERT INTO `municipios` VALUES ('1257', 'San Miguel Chicahua', '20');
INSERT INTO `municipios` VALUES ('1258', 'San Miguel Chimalapa', '20');
INSERT INTO `municipios` VALUES ('1259', 'San Miguel del Puerto', '20');
INSERT INTO `municipios` VALUES ('1260', 'San Miguel del Río', '20');
INSERT INTO `municipios` VALUES ('1261', 'San Miguel Ejutla', '20');
INSERT INTO `municipios` VALUES ('1262', 'San Miguel el Grande', '20');
INSERT INTO `municipios` VALUES ('1263', 'San Miguel Huautla', '20');
INSERT INTO `municipios` VALUES ('1264', 'San Miguel Mixtepec', '20');
INSERT INTO `municipios` VALUES ('1265', 'San Miguel Panixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1267', 'San Miguel Peras', '20');
INSERT INTO `municipios` VALUES ('1268', 'San Miguel Piedras', '20');
INSERT INTO `municipios` VALUES ('1269', 'San Miguel Quetzaltepec', '20');
INSERT INTO `municipios` VALUES ('1270', 'San Miguel Santa Flor', '20');
INSERT INTO `municipios` VALUES ('1271', 'San Miguel Soyaltepec', '20');
INSERT INTO `municipios` VALUES ('1272', 'San Miguel Suchixtepec', '20');
INSERT INTO `municipios` VALUES ('1273', 'San Miguel Tecomatlán', '20');
INSERT INTO `municipios` VALUES ('1274', 'San Miguel Tenango', '20');
INSERT INTO `municipios` VALUES ('1275', 'San Miguel Tequixtepec', '20');
INSERT INTO `municipios` VALUES ('1276', 'San Miguel Tilquiápam', '20');
INSERT INTO `municipios` VALUES ('1277', 'San Miguel Tlacamama', '20');
INSERT INTO `municipios` VALUES ('1278', 'San Miguel Tlacotepec', '20');
INSERT INTO `municipios` VALUES ('1279', 'San Miguel Tulancingo', '20');
INSERT INTO `municipios` VALUES ('1280', 'San Miguel Yotao', '20');
INSERT INTO `municipios` VALUES ('1281', 'San Nicolás', '20');
INSERT INTO `municipios` VALUES ('1282', 'San Nicolás Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1283', 'San Pablo Coatlán', '20');
INSERT INTO `municipios` VALUES ('1284', 'San Pablo Cuatro Venados', '20');
INSERT INTO `municipios` VALUES ('1285', 'San Pablo Etla', '20');
INSERT INTO `municipios` VALUES ('1286', 'San Pablo Huitzo', '20');
INSERT INTO `municipios` VALUES ('1287', 'San Pablo Huixtepec', '20');
INSERT INTO `municipios` VALUES ('1288', 'San Pablo Macuiltianguis', '20');
INSERT INTO `municipios` VALUES ('1289', 'San Pablo Tijaltepec', '20');
INSERT INTO `municipios` VALUES ('1290', 'San Pablo Villa de Mitla', '20');
INSERT INTO `municipios` VALUES ('1291', 'San Pablo Yaganiza', '20');
INSERT INTO `municipios` VALUES ('1292', 'San Pedro Amuzgos', '20');
INSERT INTO `municipios` VALUES ('1293', 'San Pedro Apóstol', '20');
INSERT INTO `municipios` VALUES ('1294', 'San Pedro Atoyac', '20');
INSERT INTO `municipios` VALUES ('1295', 'San Pedro Cajonos', '20');
INSERT INTO `municipios` VALUES ('1296', 'San Pedro Comitancillo', '20');
INSERT INTO `municipios` VALUES ('1297', 'San Pedro Coxcaltepec Cántaros', '20');
INSERT INTO `municipios` VALUES ('1298', 'San Pedro el Alto', '20');
INSERT INTO `municipios` VALUES ('1299', 'San Pedro Huamelula', '20');
INSERT INTO `municipios` VALUES ('1300', 'San Pedro Huilotepec', '20');
INSERT INTO `municipios` VALUES ('1301', 'San Pedro Ixcatlán', '20');
INSERT INTO `municipios` VALUES ('1302', 'San Pedro Ixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1303', 'San Pedro Jaltepetongo', '20');
INSERT INTO `municipios` VALUES ('1304', 'San Pedro Jicayán', '20');
INSERT INTO `municipios` VALUES ('1305', 'San Pedro Jocotipac', '20');
INSERT INTO `municipios` VALUES ('1306', 'San Pedro Juchatengo', '20');
INSERT INTO `municipios` VALUES ('1307', 'San Pedro Mártir', '20');
INSERT INTO `municipios` VALUES ('1308', 'San Pedro Mártir Quiechapa', '20');
INSERT INTO `municipios` VALUES ('1309', 'San Pedro Mártir Yucuxaco', '20');
INSERT INTO `municipios` VALUES ('1310', 'San Pedro Mixtepec - Distr. 22 -', '20');
INSERT INTO `municipios` VALUES ('1311', 'San Pedro Mixtepec - Distr. 26 -', '20');
INSERT INTO `municipios` VALUES ('1312', 'San Pedro Molinos', '20');
INSERT INTO `municipios` VALUES ('1313', 'San Pedro Nopala', '20');
INSERT INTO `municipios` VALUES ('1314', 'San Pedro Ocopetatillo', '20');
INSERT INTO `municipios` VALUES ('1315', 'San Pedro Ocotepec', '20');
INSERT INTO `municipios` VALUES ('1316', 'San Pedro Pochutla', '20');
INSERT INTO `municipios` VALUES ('1317', 'San Pedro Quiatoni', '20');
INSERT INTO `municipios` VALUES ('1318', 'San Pedro Sochiapam', '20');
INSERT INTO `municipios` VALUES ('1319', 'San Pedro Tapanatepec', '20');
INSERT INTO `municipios` VALUES ('1320', 'San Pedro Taviche', '20');
INSERT INTO `municipios` VALUES ('1321', 'San Pedro Teozacoalco', '20');
INSERT INTO `municipios` VALUES ('1322', 'San Pedro Teutila', '20');
INSERT INTO `municipios` VALUES ('1323', 'San Pedro Tidaá', '20');
INSERT INTO `municipios` VALUES ('1324', 'San Pedro Topiltepec', '20');
INSERT INTO `municipios` VALUES ('1325', 'San Pedro Totolapa', '20');
INSERT INTO `municipios` VALUES ('1326', 'San Pedro y San Pablo Ayutla', '20');
INSERT INTO `municipios` VALUES ('1327', 'San Pedro y San Pablo Teposcolula', '20');
INSERT INTO `municipios` VALUES ('1328', 'San Pedro y San Pablo Tequixtepec', '20');
INSERT INTO `municipios` VALUES ('1329', 'San Pedro Yaneri', '20');
INSERT INTO `municipios` VALUES ('1330', 'San Pedro Yólox', '20');
INSERT INTO `municipios` VALUES ('1331', 'San Pedro Yucunama', '20');
INSERT INTO `municipios` VALUES ('1332', 'San Raymundo Jalpan', '20');
INSERT INTO `municipios` VALUES ('1333', 'San Sebastián Abasolo', '20');
INSERT INTO `municipios` VALUES ('1334', 'San Sebastián Coatlán', '20');
INSERT INTO `municipios` VALUES ('1335', 'San Sebastián Ixcapa', '20');
INSERT INTO `municipios` VALUES ('1336', 'San Sebastián Nicananduta', '20');
INSERT INTO `municipios` VALUES ('1337', 'San Sebastián Río Hondo', '20');
INSERT INTO `municipios` VALUES ('1338', 'San Sebastián Tecomaxtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1339', 'San Sebastián Teitipac', '20');
INSERT INTO `municipios` VALUES ('1340', 'San Sebastián Tutla', '20');
INSERT INTO `municipios` VALUES ('1341', 'San Simón Almolongas', '20');
INSERT INTO `municipios` VALUES ('1342', 'San Simón Zahuatlán', '20');
INSERT INTO `municipios` VALUES ('1343', 'San Vicente Coatlán', '20');
INSERT INTO `municipios` VALUES ('1344', 'San Vicente Lachixío', '20');
INSERT INTO `municipios` VALUES ('1345', 'San Vicente Nuñú', '20');
INSERT INTO `municipios` VALUES ('1346', 'Santa Ana', '20');
INSERT INTO `municipios` VALUES ('1347', 'Santa Ana Ateixtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1348', 'Santa Ana Cuauhtémoc', '20');
INSERT INTO `municipios` VALUES ('1349', 'Santa Ana del Valle', '20');
INSERT INTO `municipios` VALUES ('1350', 'Santa Ana Tavela', '20');
INSERT INTO `municipios` VALUES ('1351', 'Santa Ana Tlapacoyan', '20');
INSERT INTO `municipios` VALUES ('1352', 'Santa Ana Yareni', '20');
INSERT INTO `municipios` VALUES ('1353', 'Santa Ana Zegache', '20');
INSERT INTO `municipios` VALUES ('1354', 'Santa Catalina Quierí', '20');
INSERT INTO `municipios` VALUES ('1355', 'Santa Catarina Cuixtla', '20');
INSERT INTO `municipios` VALUES ('1356', 'Santa Catarina Ixtepeji', '20');
INSERT INTO `municipios` VALUES ('1357', 'Santa Catarina Juquila', '20');
INSERT INTO `municipios` VALUES ('1358', 'Santa Catarina Lachatao', '20');
INSERT INTO `municipios` VALUES ('1359', 'Santa Catarina Loxicha', '20');
INSERT INTO `municipios` VALUES ('1360', 'Santa Catarina Mechoacán', '20');
INSERT INTO `municipios` VALUES ('1361', 'Santa Catarina Minas', '20');
INSERT INTO `municipios` VALUES ('1362', 'Santa Catarina Quiané', '20');
INSERT INTO `municipios` VALUES ('1363', 'Santa Catarina Quioquitani', '20');
INSERT INTO `municipios` VALUES ('1364', 'Santa Catarina Tayata', '20');
INSERT INTO `municipios` VALUES ('1365', 'Santa Catarina Ticuá', '20');
INSERT INTO `municipios` VALUES ('1366', 'Santa Catarina Yosonotú', '20');
INSERT INTO `municipios` VALUES ('1367', 'Santa Catarina Zapoquila', '20');
INSERT INTO `municipios` VALUES ('1368', 'Santa Cruz Acatepec', '20');
INSERT INTO `municipios` VALUES ('1369', 'Santa Cruz Amilpas', '20');
INSERT INTO `municipios` VALUES ('1370', 'Santa Cruz de Bravo', '20');
INSERT INTO `municipios` VALUES ('1371', 'Santa Cruz Itundujia', '20');
INSERT INTO `municipios` VALUES ('1372', 'Santa Cruz Mixtepec', '20');
INSERT INTO `municipios` VALUES ('1373', 'Santa Cruz Nundaco', '20');
INSERT INTO `municipios` VALUES ('1374', 'Santa Cruz Papalutla', '20');
INSERT INTO `municipios` VALUES ('1375', 'Santa Cruz Tacache de Mina', '20');
INSERT INTO `municipios` VALUES ('1376', 'Santa Cruz Tacahua', '20');
INSERT INTO `municipios` VALUES ('1377', 'Santa Cruz Tayata', '20');
INSERT INTO `municipios` VALUES ('1378', 'Santa Cruz Xitla', '20');
INSERT INTO `municipios` VALUES ('1379', 'Santa Cruz Xoxocotlán', '20');
INSERT INTO `municipios` VALUES ('1380', 'Santa Cruz Zenzontepec', '20');
INSERT INTO `municipios` VALUES ('1381', 'Santa Gertrudis', '20');
INSERT INTO `municipios` VALUES ('1382', 'Santa Inés de Zaragoza', '20');
INSERT INTO `municipios` VALUES ('1383', 'Santa Inés del Monte', '20');
INSERT INTO `municipios` VALUES ('1384', 'Santa Inés Yatzeche', '20');
INSERT INTO `municipios` VALUES ('1385', 'Santa Lucía del Camino', '20');
INSERT INTO `municipios` VALUES ('1386', 'Santa Lucía Miahuatlán', '20');
INSERT INTO `municipios` VALUES ('1387', 'Santa Lucía Monteverde', '20');
INSERT INTO `municipios` VALUES ('1388', 'Santa Lucía Ocotlán', '20');
INSERT INTO `municipios` VALUES ('1389', 'Santa Magdalena Jicotlán', '20');
INSERT INTO `municipios` VALUES ('1390', 'Santa María Alotepec', '20');
INSERT INTO `municipios` VALUES ('1391', 'Santa María Apazco', '20');
INSERT INTO `municipios` VALUES ('1392', 'Santa María Atzompa', '20');
INSERT INTO `municipios` VALUES ('1393', 'Santa María Camotlán', '20');
INSERT INTO `municipios` VALUES ('1394', 'Santa María Coyotepec', '20');
INSERT INTO `municipios` VALUES ('1395', 'Santa María Cortijo', '20');
INSERT INTO `municipios` VALUES ('1396', 'Santa María Coyotepec', '20');
INSERT INTO `municipios` VALUES ('1397', 'Santa María Chachoápam', '20');
INSERT INTO `municipios` VALUES ('1398', 'Santa María Chilchotla', '20');
INSERT INTO `municipios` VALUES ('1399', 'Santa María Chimalapa', '20');
INSERT INTO `municipios` VALUES ('1400', 'Santa María del Rosario', '20');
INSERT INTO `municipios` VALUES ('1401', 'Santa María del Tule', '20');
INSERT INTO `municipios` VALUES ('1402', 'Santa María Ecatepec', '20');
INSERT INTO `municipios` VALUES ('1403', 'Santa María Guelacé', '20');
INSERT INTO `municipios` VALUES ('1404', 'Santa María Guienagati', '20');
INSERT INTO `municipios` VALUES ('1405', 'Santa María Huatulco', '20');
INSERT INTO `municipios` VALUES ('1406', 'Santa María Huazolotitlán', '20');
INSERT INTO `municipios` VALUES ('1407', 'Santa María Ipalapa', '20');
INSERT INTO `municipios` VALUES ('1408', 'Santa María Ixcatlán', '20');
INSERT INTO `municipios` VALUES ('1409', 'Santa María Jacatepec', '20');
INSERT INTO `municipios` VALUES ('1410', 'Santa María Jalapa del Marqués', '20');
INSERT INTO `municipios` VALUES ('1411', 'Santa María Jaltianguis', '20');
INSERT INTO `municipios` VALUES ('1412', 'Santa María la Asunción', '20');
INSERT INTO `municipios` VALUES ('1413', 'Santa María Lachixío', '20');
INSERT INTO `municipios` VALUES ('1414', 'Santa María Mixtequilla', '20');
INSERT INTO `municipios` VALUES ('1415', 'Santa María Nativitas', '20');
INSERT INTO `municipios` VALUES ('1416', 'Santa María Nduayaco', '20');
INSERT INTO `municipios` VALUES ('1417', 'Santa María Ozolotepec', '20');
INSERT INTO `municipios` VALUES ('1418', 'Santa María Pápalo', '20');
INSERT INTO `municipios` VALUES ('1419', 'Santa María Peñoles', '20');
INSERT INTO `municipios` VALUES ('1420', 'Santa María Petapa', '20');
INSERT INTO `municipios` VALUES ('1421', 'Santa María Quiegolani', '20');
INSERT INTO `municipios` VALUES ('1422', 'Santa María Sola', '20');
INSERT INTO `municipios` VALUES ('1423', 'Santa María Tataltepec', '20');
INSERT INTO `municipios` VALUES ('1424', 'Santa María Tecomavaca', '20');
INSERT INTO `municipios` VALUES ('1425', 'Santa María Temaxcalapa', '20');
INSERT INTO `municipios` VALUES ('1426', 'Santa María Temaxcaltepec', '20');
INSERT INTO `municipios` VALUES ('1427', 'Santa María Teopoxco', '20');
INSERT INTO `municipios` VALUES ('1428', 'Santa María Tepantlali', '20');
INSERT INTO `municipios` VALUES ('1429', 'Santa María Texcatitlán', '20');
INSERT INTO `municipios` VALUES ('1430', 'Santa María Tlahuitoltepec', '20');
INSERT INTO `municipios` VALUES ('1431', 'Santa María Tlalixtac', '20');
INSERT INTO `municipios` VALUES ('1432', 'Santa María Tonameca', '20');
INSERT INTO `municipios` VALUES ('1433', 'Santa María Totolapilla', '20');
INSERT INTO `municipios` VALUES ('1434', 'Santa María Xadani', '20');
INSERT INTO `municipios` VALUES ('1435', 'Santa María Yalina', '20');
INSERT INTO `municipios` VALUES ('1436', 'Santa María Yavesía', '20');
INSERT INTO `municipios` VALUES ('1437', 'Santa María Yolotepec', '20');
INSERT INTO `municipios` VALUES ('1438', 'Santa María Yosoyúa', '20');
INSERT INTO `municipios` VALUES ('1439', 'Santa María Yucuhiti', '20');
INSERT INTO `municipios` VALUES ('1440', 'Santa María Zacatepec', '20');
INSERT INTO `municipios` VALUES ('1441', 'Santa María Zaniza', '20');
INSERT INTO `municipios` VALUES ('1442', 'Santa María Zoquitlán', '20');
INSERT INTO `municipios` VALUES ('1443', 'Santiago Amoltepec', '20');
INSERT INTO `municipios` VALUES ('1444', 'Santiago Apoala', '20');
INSERT INTO `municipios` VALUES ('1445', 'Santiago Apóstol', '20');
INSERT INTO `municipios` VALUES ('1446', 'Santiago Astata', '20');
INSERT INTO `municipios` VALUES ('1447', 'Santiago Atitlán', '20');
INSERT INTO `municipios` VALUES ('1448', 'Santiago Ayuquililla', '20');
INSERT INTO `municipios` VALUES ('1449', 'Santiago Cacaloxtepec', '20');
INSERT INTO `municipios` VALUES ('1450', 'Santiago Camotlán', '20');
INSERT INTO `municipios` VALUES ('1451', 'Santiago Comaltepec', '20');
INSERT INTO `municipios` VALUES ('1452', 'Santiago Chazumba', '20');
INSERT INTO `municipios` VALUES ('1453', 'Santiago Choapam', '20');
INSERT INTO `municipios` VALUES ('1454', 'Santiago del Río', '20');
INSERT INTO `municipios` VALUES ('1455', 'Santiago Huajolotitlán', '20');
INSERT INTO `municipios` VALUES ('1456', 'Santiago Huauclilla', '20');
INSERT INTO `municipios` VALUES ('1457', 'Santiago Ihuitlán Plumas', '20');
INSERT INTO `municipios` VALUES ('1458', 'Santiago Ixcuintepec', '20');
INSERT INTO `municipios` VALUES ('1459', 'Santiago Ixtayutla', '20');
INSERT INTO `municipios` VALUES ('1460', 'Santiago Jamiltepec', '20');
INSERT INTO `municipios` VALUES ('1461', 'Santiago Jocotepec', '20');
INSERT INTO `municipios` VALUES ('1462', 'Santiago Juxtlahuaca', '20');
INSERT INTO `municipios` VALUES ('1463', 'Santiago Lachiguiri', '20');
INSERT INTO `municipios` VALUES ('1464', 'Santiago Lalopa', '20');
INSERT INTO `municipios` VALUES ('1465', 'Santiago Laollaga', '20');
INSERT INTO `municipios` VALUES ('1466', 'Santiago Laxopa', '20');
INSERT INTO `municipios` VALUES ('1467', 'Santiago Llano Grande', '20');
INSERT INTO `municipios` VALUES ('1468', 'Santiago Matatlán', '20');
INSERT INTO `municipios` VALUES ('1469', 'Santiago Miltepec', '20');
INSERT INTO `municipios` VALUES ('1470', 'Santiago Minas', '20');
INSERT INTO `municipios` VALUES ('1471', 'Santiago Nacaltepec', '20');
INSERT INTO `municipios` VALUES ('1472', 'Santiago Nejapilla', '20');
INSERT INTO `municipios` VALUES ('1473', 'Santiago Niltepec', '20');
INSERT INTO `municipios` VALUES ('1474', 'Santiago Nundiche', '20');
INSERT INTO `municipios` VALUES ('1475', 'Santiago Nuyoó', '20');
INSERT INTO `municipios` VALUES ('1476', 'Santiago Pinotepa Nacional', '20');
INSERT INTO `municipios` VALUES ('1477', 'Santiago Suchilquitongo', '20');
INSERT INTO `municipios` VALUES ('1478', 'Santiago Tamazola', '20');
INSERT INTO `municipios` VALUES ('1479', 'Santiago Tapextla', '20');
INSERT INTO `municipios` VALUES ('1480', 'Santiago Tenango', '20');
INSERT INTO `municipios` VALUES ('1481', 'Santiago Tepetlapa', '20');
INSERT INTO `municipios` VALUES ('1482', 'Santiago Tetepec', '20');
INSERT INTO `municipios` VALUES ('1483', 'Santiago Texcalcingo', '20');
INSERT INTO `municipios` VALUES ('1484', 'Santiago Textitlán', '20');
INSERT INTO `municipios` VALUES ('1485', 'Santiago Tilantongo', '20');
INSERT INTO `municipios` VALUES ('1486', 'Santiago Tillo', '20');
INSERT INTO `municipios` VALUES ('1487', 'Santiago Tlazoyaltepec', '20');
INSERT INTO `municipios` VALUES ('1488', 'Santiago Xanica', '20');
INSERT INTO `municipios` VALUES ('1489', 'Santiago Xiacuí', '20');
INSERT INTO `municipios` VALUES ('1490', 'Santiago Yaitepec', '20');
INSERT INTO `municipios` VALUES ('1491', 'Santiago Yaveo', '20');
INSERT INTO `municipios` VALUES ('1492', 'Santiago Yolomécatl', '20');
INSERT INTO `municipios` VALUES ('1493', 'Santiago Yosondúa', '20');
INSERT INTO `municipios` VALUES ('1494', 'Santiago Yucuyachi', '20');
INSERT INTO `municipios` VALUES ('1495', 'Santiago Zacatepec', '20');
INSERT INTO `municipios` VALUES ('1496', 'Santiago Zoochila', '20');
INSERT INTO `municipios` VALUES ('1497', 'Santo Domingo Albarradas', '20');
INSERT INTO `municipios` VALUES ('1498', 'Santo Domingo Armenta', '20');
INSERT INTO `municipios` VALUES ('1499', 'Santo Domingo Chihuitán', '20');
INSERT INTO `municipios` VALUES ('1500', 'Santo Domingo de Morelos', '20');
INSERT INTO `municipios` VALUES ('1501', 'Santo Domingo Ingenio', '20');
INSERT INTO `municipios` VALUES ('1502', 'Santo Domingo Ixcatlán', '20');
INSERT INTO `municipios` VALUES ('1503', 'Santo Domingo Nuxaá', '20');
INSERT INTO `municipios` VALUES ('1504', 'Santo Domingo Ozolotepec', '20');
INSERT INTO `municipios` VALUES ('1505', 'Santo Domingo Petapa', '20');
INSERT INTO `municipios` VALUES ('1506', 'Santo Domingo Roayaga', '20');
INSERT INTO `municipios` VALUES ('1507', 'Santo Domingo Tehuantepec', '20');
INSERT INTO `municipios` VALUES ('1508', 'Santo Domingo Teojomulco', '20');
INSERT INTO `municipios` VALUES ('1509', 'Santo Domingo Tepuxtepec', '20');
INSERT INTO `municipios` VALUES ('1510', 'Santo Domingo Tlatayápam', '20');
INSERT INTO `municipios` VALUES ('1512', 'Santo Domingo Tomaltepec', '20');
INSERT INTO `municipios` VALUES ('1513', 'Santo Domingo Tonalá', '20');
INSERT INTO `municipios` VALUES ('1514', 'Santo Domingo Tonaltepec', '20');
INSERT INTO `municipios` VALUES ('1515', 'Santo Domingo Xagacía', '20');
INSERT INTO `municipios` VALUES ('1516', 'Santo Domingo Yanhuitlán', '20');
INSERT INTO `municipios` VALUES ('1517', 'Santo Domingo Yodohino', '20');
INSERT INTO `municipios` VALUES ('1518', 'Santo Domingo Zanatepec', '20');
INSERT INTO `municipios` VALUES ('1519', 'Santo Tomás Jalieza', '20');
INSERT INTO `municipios` VALUES ('1520', 'Santo Tomás Mazaltepec', '20');
INSERT INTO `municipios` VALUES ('1521', 'Santo Tomás Ocotepec', '20');
INSERT INTO `municipios` VALUES ('1522', 'Santo Tomás Tamazulapan', '20');
INSERT INTO `municipios` VALUES ('1523', 'Santos Reyes Nopala', '20');
INSERT INTO `municipios` VALUES ('1524', 'Santos Reyes Pápalo', '20');
INSERT INTO `municipios` VALUES ('1525', 'Santos Reyes Tepejillo', '20');
INSERT INTO `municipios` VALUES ('1526', 'Santos Reyes Yucuná', '20');
INSERT INTO `municipios` VALUES ('1527', 'Silacayoápam', '20');
INSERT INTO `municipios` VALUES ('1528', 'Sitio de Xitlapehua', '20');
INSERT INTO `municipios` VALUES ('1529', 'Soledad Etla', '20');
INSERT INTO `municipios` VALUES ('1530', 'Tamazulapam del Espíritu Santo', '20');
INSERT INTO `municipios` VALUES ('1531', 'Tanetze de Zaragoza', '20');
INSERT INTO `municipios` VALUES ('1532', 'Taniche', '20');
INSERT INTO `municipios` VALUES ('1533', 'Tataltepec de Valdés', '20');
INSERT INTO `municipios` VALUES ('1534', 'Teococuilco de Marcos Pérez', '20');
INSERT INTO `municipios` VALUES ('1535', 'Teotitlán de Flores Magón', '20');
INSERT INTO `municipios` VALUES ('1536', 'Teotitlán del Valle', '20');
INSERT INTO `municipios` VALUES ('1537', 'Teotongo', '20');
INSERT INTO `municipios` VALUES ('1538', 'Tepelmeme Villa de Morelos', '20');
INSERT INTO `municipios` VALUES ('1539', 'Tezoatlán de Segura y Luna', '20');
INSERT INTO `municipios` VALUES ('1540', 'Tlacolula de Matamoros', '20');
INSERT INTO `municipios` VALUES ('1541', 'Tlacotepec Plumas', '20');
INSERT INTO `municipios` VALUES ('1542', 'Tlalixtac de Cabrera', '20');
INSERT INTO `municipios` VALUES ('1543', 'Totontepec Villa de Morelos', '20');
INSERT INTO `municipios` VALUES ('1544', 'Trinidad Zaachila', '20');
INSERT INTO `municipios` VALUES ('1545', 'Unión Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1546', 'Valerio Trujano', '20');
INSERT INTO `municipios` VALUES ('1547', 'Villa de Chilapa de Díaz', '20');
INSERT INTO `municipios` VALUES ('1548', 'Villa de Etla', '20');
INSERT INTO `municipios` VALUES ('1549', 'Villa de Tamazulápam del Progreso', '20');
INSERT INTO `municipios` VALUES ('1550', 'Villa de Tututepec de Melchor Ocam', '20');
INSERT INTO `municipios` VALUES ('1551', 'Villa de Zaachila', '20');
INSERT INTO `municipios` VALUES ('1552', 'Villa Díaz Ordaz', '20');
INSERT INTO `municipios` VALUES ('1553', 'Villa Hidalgo', '20');
INSERT INTO `municipios` VALUES ('1554', 'Villa Sola de Vega', '20');
INSERT INTO `municipios` VALUES ('1555', 'Villa Talea de Castro', '20');
INSERT INTO `municipios` VALUES ('1556', 'Villa Tejúpam de la Unión', '20');
INSERT INTO `municipios` VALUES ('1557', 'Yaxe', '20');
INSERT INTO `municipios` VALUES ('1558', 'Yogana', '20');
INSERT INTO `municipios` VALUES ('1559', 'Yutanduchi de Guerrero', '20');
INSERT INTO `municipios` VALUES ('1560', 'Zapotitlán del Río', '20');
INSERT INTO `municipios` VALUES ('1561', 'Zapotitlán Lagunas', '20');
INSERT INTO `municipios` VALUES ('1562', 'Zapotitlán Palmas', '20');
INSERT INTO `municipios` VALUES ('1563', 'Zimatlán de Alvarez', '20');
INSERT INTO `municipios` VALUES ('1564', 'Acajete ', '21');
INSERT INTO `municipios` VALUES ('1565', 'Acateno ', '21');
INSERT INTO `municipios` VALUES ('1566', 'Acatlán ', '21');
INSERT INTO `municipios` VALUES ('1567', 'Acatzingo ', '21');
INSERT INTO `municipios` VALUES ('1568', 'Acteopan ', '21');
INSERT INTO `municipios` VALUES ('1569', 'Ahuacatlán ', '21');
INSERT INTO `municipios` VALUES ('1570', 'Ahuatlán ', '21');
INSERT INTO `municipios` VALUES ('1571', 'Ahuazotepec ', '21');
INSERT INTO `municipios` VALUES ('1572', 'Ahuehuetitla ', '21');
INSERT INTO `municipios` VALUES ('1573', 'Ajalpan ', '21');
INSERT INTO `municipios` VALUES ('1574', 'Albino Zertuche ', '21');
INSERT INTO `municipios` VALUES ('1575', 'Aljojuca ', '21');
INSERT INTO `municipios` VALUES ('1576', 'Altepexi ', '21');
INSERT INTO `municipios` VALUES ('1577', 'Amixtlán ', '21');
INSERT INTO `municipios` VALUES ('1578', 'Amozoc ', '21');
INSERT INTO `municipios` VALUES ('1579', 'Aquixtla ', '21');
INSERT INTO `municipios` VALUES ('1580', 'Atempan ', '21');
INSERT INTO `municipios` VALUES ('1581', 'Atexcal ', '21');
INSERT INTO `municipios` VALUES ('1582', 'Atlixco ', '21');
INSERT INTO `municipios` VALUES ('1583', 'Atoyatempan ', '21');
INSERT INTO `municipios` VALUES ('1584', 'Atzala ', '21');
INSERT INTO `municipios` VALUES ('1585', 'Atzitzihuacán ', '21');
INSERT INTO `municipios` VALUES ('1586', 'Atzitzintla ', '21');
INSERT INTO `municipios` VALUES ('1587', 'Axutla ', '21');
INSERT INTO `municipios` VALUES ('1588', 'Ayotoxco de Guerrero ', '21');
INSERT INTO `municipios` VALUES ('1589', 'Calpan ', '21');
INSERT INTO `municipios` VALUES ('1590', 'Caltepec ', '21');
INSERT INTO `municipios` VALUES ('1591', 'Camocuautla ', '21');
INSERT INTO `municipios` VALUES ('1592', 'Caxhuacan ', '21');
INSERT INTO `municipios` VALUES ('1593', 'Coatepec ', '21');
INSERT INTO `municipios` VALUES ('1594', 'Coatzingo ', '21');
INSERT INTO `municipios` VALUES ('1595', 'Cohetzala ', '21');
INSERT INTO `municipios` VALUES ('1596', 'Cohuecán ', '21');
INSERT INTO `municipios` VALUES ('1597', 'Coronango ', '21');
INSERT INTO `municipios` VALUES ('1598', 'Coxcatlán ', '21');
INSERT INTO `municipios` VALUES ('1599', 'Coyomeapan ', '21');
INSERT INTO `municipios` VALUES ('1600', 'Coyotepec ', '21');
INSERT INTO `municipios` VALUES ('1601', 'Cuapiaxtla de Madero ', '21');
INSERT INTO `municipios` VALUES ('1602', 'Cuautempan ', '21');
INSERT INTO `municipios` VALUES ('1603', 'Cuautinchán ', '21');
INSERT INTO `municipios` VALUES ('1604', 'Cuautlancingo ', '21');
INSERT INTO `municipios` VALUES ('1605', 'Cuayuca de Andrade ', '21');
INSERT INTO `municipios` VALUES ('1606', 'Cuetzalan del Progreso ', '21');
INSERT INTO `municipios` VALUES ('1607', 'Coyotepec ', '21');
INSERT INTO `municipios` VALUES ('1608', 'Chalchicomula de Sesma ', '21');
INSERT INTO `municipios` VALUES ('1609', 'Chapulco ', '21');
INSERT INTO `municipios` VALUES ('1610', 'Chiautla ', '21');
INSERT INTO `municipios` VALUES ('1611', 'Chiautzingo ', '21');
INSERT INTO `municipios` VALUES ('1612', 'Chiconcuautla ', '21');
INSERT INTO `municipios` VALUES ('1613', 'Chichiquila ', '21');
INSERT INTO `municipios` VALUES ('1614', 'Chietla ', '21');
INSERT INTO `municipios` VALUES ('1615', 'Chigmecatitlán ', '21');
INSERT INTO `municipios` VALUES ('1616', 'Chignahuapan ', '21');
INSERT INTO `municipios` VALUES ('1617', 'Chignautla ', '21');
INSERT INTO `municipios` VALUES ('1618', 'Chila ', '21');
INSERT INTO `municipios` VALUES ('1619', 'Chila de la Sal ', '21');
INSERT INTO `municipios` VALUES ('1620', 'Honey ', '21');
INSERT INTO `municipios` VALUES ('1621', 'Chilchotla ', '21');
INSERT INTO `municipios` VALUES ('1622', 'Chinantla ', '21');
INSERT INTO `municipios` VALUES ('1623', 'Domingo Arenas ', '21');
INSERT INTO `municipios` VALUES ('1624', 'Eloxochitlán ', '21');
INSERT INTO `municipios` VALUES ('1625', 'Epatlán ', '21');
INSERT INTO `municipios` VALUES ('1626', 'Esperanza ', '21');
INSERT INTO `municipios` VALUES ('1627', 'Francisco Z. Mena ', '21');
INSERT INTO `municipios` VALUES ('1628', 'General Felipe Ángeles', '21');
INSERT INTO `municipios` VALUES ('1629', 'Guadalupe ', '21');
INSERT INTO `municipios` VALUES ('1630', 'Guadalupe Victoria ', '21');
INSERT INTO `municipios` VALUES ('1631', 'Hermenegildo Galeana ', '21');
INSERT INTO `municipios` VALUES ('1632', 'Huaquechula ', '21');
INSERT INTO `municipios` VALUES ('1633', 'Huatlatlauca ', '21');
INSERT INTO `municipios` VALUES ('1634', 'Huauchinango ', '21');
INSERT INTO `municipios` VALUES ('1635', 'Huehuetla ', '21');
INSERT INTO `municipios` VALUES ('1636', 'Huehuetlán el Chico ', '21');
INSERT INTO `municipios` VALUES ('1637', 'Huejotzingo ', '21');
INSERT INTO `municipios` VALUES ('1638', 'Hueyapan ', '21');
INSERT INTO `municipios` VALUES ('1639', 'Hueytamalco ', '21');
INSERT INTO `municipios` VALUES ('1640', 'Hueytlalpan ', '21');
INSERT INTO `municipios` VALUES ('1641', 'Huitzilan de Serdán ', '21');
INSERT INTO `municipios` VALUES ('1642', 'Huitziltepec ', '21');
INSERT INTO `municipios` VALUES ('1643', 'Atlequizayan ', '21');
INSERT INTO `municipios` VALUES ('1644', 'Ixcamilpa de Guerrero ', '21');
INSERT INTO `municipios` VALUES ('1645', 'Ixcaquixtla ', '21');
INSERT INTO `municipios` VALUES ('1646', 'Ixtacamaxtitlán ', '21');
INSERT INTO `municipios` VALUES ('1647', 'Ixtepec ', '21');
INSERT INTO `municipios` VALUES ('1648', 'Izúcar de Matamoros ', '21');
INSERT INTO `municipios` VALUES ('1649', 'Jalpan ', '21');
INSERT INTO `municipios` VALUES ('1650', 'Jolalpan ', '21');
INSERT INTO `municipios` VALUES ('1651', 'Jonotla ', '21');
INSERT INTO `municipios` VALUES ('1652', 'Jopala ', '21');
INSERT INTO `municipios` VALUES ('1653', 'Juan C. Bonilla', '21');
INSERT INTO `municipios` VALUES ('1654', 'Juan Galindo ', '21');
INSERT INTO `municipios` VALUES ('1655', 'Juan N. Méndez ', '21');
INSERT INTO `municipios` VALUES ('1656', 'Lafragua ', '21');
INSERT INTO `municipios` VALUES ('1657', 'Libres ', '21');
INSERT INTO `municipios` VALUES ('1658', 'La Magdalena Tlatlauquitepec', '21');
INSERT INTO `municipios` VALUES ('1659', 'Mazapiltepec de Juárez ', '21');
INSERT INTO `municipios` VALUES ('1660', 'Mixtla ', '21');
INSERT INTO `municipios` VALUES ('1661', 'Molcaxac ', '21');
INSERT INTO `municipios` VALUES ('1662', 'Cañada Morelos ', '21');
INSERT INTO `municipios` VALUES ('1663', 'Naupan ', '21');
INSERT INTO `municipios` VALUES ('1664', 'Nauzontla ', '21');
INSERT INTO `municipios` VALUES ('1665', 'Nealtican ', '21');
INSERT INTO `municipios` VALUES ('1666', 'Nicolás Bravo ', '21');
INSERT INTO `municipios` VALUES ('1667', 'Nopalucan ', '21');
INSERT INTO `municipios` VALUES ('1668', 'Ocotepec ', '21');
INSERT INTO `municipios` VALUES ('1669', 'Ocoyucan ', '21');
INSERT INTO `municipios` VALUES ('1670', 'Olintla ', '21');
INSERT INTO `municipios` VALUES ('1671', 'Oriental ', '21');
INSERT INTO `municipios` VALUES ('1672', 'Pahuatlán ', '21');
INSERT INTO `municipios` VALUES ('1673', 'Palmar de Bravo ', '21');
INSERT INTO `municipios` VALUES ('1674', 'Pantepec ', '21');
INSERT INTO `municipios` VALUES ('1675', 'Petlalcingo ', '21');
INSERT INTO `municipios` VALUES ('1676', 'Piaxtla ', '21');
INSERT INTO `municipios` VALUES ('1677', 'Puebla ', '21');
INSERT INTO `municipios` VALUES ('1678', 'Quecholac ', '21');
INSERT INTO `municipios` VALUES ('1679', 'Quimixtlán ', '21');
INSERT INTO `municipios` VALUES ('1680', 'Rafael Lara Grajales ', '21');
INSERT INTO `municipios` VALUES ('1681', 'Los Reyes de Juárez ', '21');
INSERT INTO `municipios` VALUES ('1682', 'San Andrés Cholula ', '21');
INSERT INTO `municipios` VALUES ('1683', 'San Antonio Cañada ', '21');
INSERT INTO `municipios` VALUES ('1684', 'San Diego la Mesa Tochimiltzingo ', '21');
INSERT INTO `municipios` VALUES ('1685', 'San Felipe Teotlalcingo', '21');
INSERT INTO `municipios` VALUES ('1686', 'San Felipe Tepatlán ', '21');
INSERT INTO `municipios` VALUES ('1687', 'San Gabriel Chilac ', '21');
INSERT INTO `municipios` VALUES ('1688', 'San Gregorio Atzompa ', '21');
INSERT INTO `municipios` VALUES ('1689', 'San Jerónimo Tecuanipan', '21');
INSERT INTO `municipios` VALUES ('1690', 'San Jerónimo Xayacatlán ', '21');
INSERT INTO `municipios` VALUES ('1691', 'San José Chiapa ', '21');
INSERT INTO `municipios` VALUES ('1692', 'San José Miahuatlán ', '21');
INSERT INTO `municipios` VALUES ('1693', 'San Juan Atenco', '21');
INSERT INTO `municipios` VALUES ('1694', 'San Juan Atzompa ', '21');
INSERT INTO `municipios` VALUES ('1695', 'San Martín Texmelucan ', '21');
INSERT INTO `municipios` VALUES ('1696', 'San Martín Totoltepec ', '21');
INSERT INTO `municipios` VALUES ('1697', 'San Matías Tlalancaleca ', '21');
INSERT INTO `municipios` VALUES ('1698', 'San Miguel Ixitlán', '21');
INSERT INTO `municipios` VALUES ('1699', 'San Miguel Xoxtla ', '21');
INSERT INTO `municipios` VALUES ('1700', 'San Nicolás Buenos Aires ', '21');
INSERT INTO `municipios` VALUES ('1701', 'San Nicolás de los Ranchos ', '21');
INSERT INTO `municipios` VALUES ('1702', 'San Pablo Anicano ', '21');
INSERT INTO `municipios` VALUES ('1703', 'San Pedro Cholula', '21');
INSERT INTO `municipios` VALUES ('1704', 'San Pedro Yeloixtlahuaca ', '21');
INSERT INTO `municipios` VALUES ('1705', 'San Salvador el Seco ', '21');
INSERT INTO `municipios` VALUES ('1706', 'San Salvador el Verde ', '21');
INSERT INTO `municipios` VALUES ('1707', 'San Salvador Huixcolotla ', '21');
INSERT INTO `municipios` VALUES ('1708', 'San Sebastián Tlacotepec ', '21');
INSERT INTO `municipios` VALUES ('1709', 'Santa Catarina Tlaltempan ', '21');
INSERT INTO `municipios` VALUES ('1710', 'Santa Inés Ahuatempan', '21');
INSERT INTO `municipios` VALUES ('1711', 'Santa Isabel Cholula', '21');
INSERT INTO `municipios` VALUES ('1712', 'Santiago Miahuatlán', '21');
INSERT INTO `municipios` VALUES ('1713', 'Huehuetlán el Grande', '21');
INSERT INTO `municipios` VALUES ('1714', 'Santo Tomás Hueyotlipan', '21');
INSERT INTO `municipios` VALUES ('1715', 'Soltepec', '21');
INSERT INTO `municipios` VALUES ('1716', 'Tecali de Herrera', '21');
INSERT INTO `municipios` VALUES ('1717', 'Tecamachalco', '21');
INSERT INTO `municipios` VALUES ('1718', 'Tecomatlán', '21');
INSERT INTO `municipios` VALUES ('1719', 'Tehuacán', '21');
INSERT INTO `municipios` VALUES ('1720', 'Tehuitzingo', '21');
INSERT INTO `municipios` VALUES ('1721', 'Tenampulco', '21');
INSERT INTO `municipios` VALUES ('1722', 'Teopantlán', '21');
INSERT INTO `municipios` VALUES ('1723', 'Teotlalco', '21');
INSERT INTO `municipios` VALUES ('1724', 'Tepanco de López', '21');
INSERT INTO `municipios` VALUES ('1725', 'Tepango de Rodríguez', '21');
INSERT INTO `municipios` VALUES ('1726', 'Tepatlaxco de Hidalgo', '21');
INSERT INTO `municipios` VALUES ('1727', 'Tepeaca', '21');
INSERT INTO `municipios` VALUES ('1728', 'Tepemaxalco', '21');
INSERT INTO `municipios` VALUES ('1729', 'Tepeojuma', '21');
INSERT INTO `municipios` VALUES ('1730', 'Tepetzintla', '21');
INSERT INTO `municipios` VALUES ('1731', 'Tepexco', '21');
INSERT INTO `municipios` VALUES ('1732', 'Tepexi de Rodríguez', '21');
INSERT INTO `municipios` VALUES ('1733', 'Tepeyahualco', '21');
INSERT INTO `municipios` VALUES ('1734', 'Tepeyahualco de Cuauhtémoc', '21');
INSERT INTO `municipios` VALUES ('1735', 'Tetela de Ocampo', '21');
INSERT INTO `municipios` VALUES ('1736', 'Teteles de Avila Castillo', '21');
INSERT INTO `municipios` VALUES ('1737', 'Teziutlán', '21');
INSERT INTO `municipios` VALUES ('1738', 'Tianguismanalco', '21');
INSERT INTO `municipios` VALUES ('1739', 'Tilapa', '21');
INSERT INTO `municipios` VALUES ('1740', 'Tlacotepec de Benito Juárez', '21');
INSERT INTO `municipios` VALUES ('1741', 'Tlacuilotepec', '21');
INSERT INTO `municipios` VALUES ('1742', 'Tlachichuca', '21');
INSERT INTO `municipios` VALUES ('1743', 'Tlahuapan', '21');
INSERT INTO `municipios` VALUES ('1744', 'Tlaltenango', '21');
INSERT INTO `municipios` VALUES ('1745', 'Tlanepantla', '21');
INSERT INTO `municipios` VALUES ('1746', 'Tlaola', '21');
INSERT INTO `municipios` VALUES ('1747', 'Tlapacoya', '21');
INSERT INTO `municipios` VALUES ('1748', 'Tlapanalá', '21');
INSERT INTO `municipios` VALUES ('1749', 'Tlatlauquitepec', '21');
INSERT INTO `municipios` VALUES ('1750', 'Tlaxco', '21');
INSERT INTO `municipios` VALUES ('1751', 'Tochimilco', '21');
INSERT INTO `municipios` VALUES ('1752', 'Tochtepec', '21');
INSERT INTO `municipios` VALUES ('1753', 'Totoltepec de Guerrero', '21');
INSERT INTO `municipios` VALUES ('1754', 'Tulcingo', '21');
INSERT INTO `municipios` VALUES ('1755', 'Tuzamapan de Galeana', '21');
INSERT INTO `municipios` VALUES ('1756', 'Tzicatlacoyan', '21');
INSERT INTO `municipios` VALUES ('1757', 'Venustiano Carranza', '21');
INSERT INTO `municipios` VALUES ('1758', 'Vicente Guerrero', '21');
INSERT INTO `municipios` VALUES ('1759', 'Xayacatlán de Bravo', '21');
INSERT INTO `municipios` VALUES ('1760', 'Xicotepec', '21');
INSERT INTO `municipios` VALUES ('1761', 'Xicotlán', '21');
INSERT INTO `municipios` VALUES ('1762', 'Xiutetelco', '21');
INSERT INTO `municipios` VALUES ('1763', 'Xochiapulco', '21');
INSERT INTO `municipios` VALUES ('1764', 'Xochiltepec', '21');
INSERT INTO `municipios` VALUES ('1765', 'Xochitlán de Vicente Suárez', '21');
INSERT INTO `municipios` VALUES ('1766', 'Xochitlán Todos Santos', '21');
INSERT INTO `municipios` VALUES ('1767', 'Yaonáhuac', '21');
INSERT INTO `municipios` VALUES ('1768', 'Yehualtepec', '21');
INSERT INTO `municipios` VALUES ('1769', 'Zacapala', '21');
INSERT INTO `municipios` VALUES ('1770', 'Zacapoaxtla', '21');
INSERT INTO `municipios` VALUES ('1771', 'Zacatlán', '21');
INSERT INTO `municipios` VALUES ('1772', 'Zapotitlán', '21');
INSERT INTO `municipios` VALUES ('1773', 'Zapotitlán de Méndez', '21');
INSERT INTO `municipios` VALUES ('1774', 'Zaragoza', '21');
INSERT INTO `municipios` VALUES ('1775', 'Zautla', '21');
INSERT INTO `municipios` VALUES ('1776', 'Zihuateutla', '21');
INSERT INTO `municipios` VALUES ('1777', 'Zinacatepec', '21');
INSERT INTO `municipios` VALUES ('1778', 'Zongozotla', '21');
INSERT INTO `municipios` VALUES ('1779', 'Zoquiapan', '21');
INSERT INTO `municipios` VALUES ('1780', 'Zoquitlán', '21');
INSERT INTO `municipios` VALUES ('1781', 'Amealco de Bonfil ', '22');
INSERT INTO `municipios` VALUES ('1782', 'Arroyo Seco ', '22');
INSERT INTO `municipios` VALUES ('1783', 'Cadereyta de Montes ', '22');
INSERT INTO `municipios` VALUES ('1784', 'Colón ', '22');
INSERT INTO `municipios` VALUES ('1785', 'Corregidora ', '22');
INSERT INTO `municipios` VALUES ('1786', 'El Marqués', '22');
INSERT INTO `municipios` VALUES ('1787', 'Ezequiel Montes ', '22');
INSERT INTO `municipios` VALUES ('1788', 'Huimilpan ', '22');
INSERT INTO `municipios` VALUES ('1789', 'Jalpan de Serra ', '22');
INSERT INTO `municipios` VALUES ('1790', 'Landa de Matamoros', '22');
INSERT INTO `municipios` VALUES ('1791', 'Pedro Escobedo', '22');
INSERT INTO `municipios` VALUES ('1792', 'Peñamiller', '22');
INSERT INTO `municipios` VALUES ('1793', 'Pinal de Amoles', '22');
INSERT INTO `municipios` VALUES ('1794', 'Querétaro', '22');
INSERT INTO `municipios` VALUES ('1795', 'San Joaquín', '22');
INSERT INTO `municipios` VALUES ('1796', 'San Juan del Río', '22');
INSERT INTO `municipios` VALUES ('1797', 'Tequisquiapan', '22');
INSERT INTO `municipios` VALUES ('1798', 'Tolimán', '22');
INSERT INTO `municipios` VALUES ('1799', 'Cozumel ', '23');
INSERT INTO `municipios` VALUES ('1800', 'Felipe Carrillo Puerto ', '23');
INSERT INTO `municipios` VALUES ('1801', 'Isla Mujeres ', '23');
INSERT INTO `municipios` VALUES ('1802', 'Othón P. Blanco ', '23');
INSERT INTO `municipios` VALUES ('1803', 'Benito Juárez', '23');
INSERT INTO `municipios` VALUES ('1804', 'José María Morelos', '23');
INSERT INTO `municipios` VALUES ('1805', 'Lázaro Cárdenas', '23');
INSERT INTO `municipios` VALUES ('1806', 'Solidaridad', '23');
INSERT INTO `municipios` VALUES ('1807', 'Cárdenas ', '24');
INSERT INTO `municipios` VALUES ('1808', 'Axtla de Terrazas ', '24');
INSERT INTO `municipios` VALUES ('1809', 'Armadillo de los Infante ', '24');
INSERT INTO `municipios` VALUES ('1810', 'Aquismón ', '24');
INSERT INTO `municipios` VALUES ('1811', 'Alaquines ', '24');
INSERT INTO `municipios` VALUES ('1812', 'Ahualulco  ', '24');
INSERT INTO `municipios` VALUES ('1813', 'Matlapa ', '24');
INSERT INTO `municipios` VALUES ('1814', 'Matehuala ', '24');
INSERT INTO `municipios` VALUES ('1815', 'Lagunillas ', '24');
INSERT INTO `municipios` VALUES ('1816', 'Huehuetlán ', '24');
INSERT INTO `municipios` VALUES ('1817', 'Guadalcázar ', '24');
INSERT INTO `municipios` VALUES ('1818', 'Ebano  ', '24');
INSERT INTO `municipios` VALUES ('1819', 'Charcas ', '24');
INSERT INTO `municipios` VALUES ('1820', 'Coxcatlán ', '24');
INSERT INTO `municipios` VALUES ('1821', 'Ciudad Valles ', '24');
INSERT INTO `municipios` VALUES ('1822', 'Ciudad Fernández ', '24');
INSERT INTO `municipios` VALUES ('1823', 'Ciudad del Maíz ', '24');
INSERT INTO `municipios` VALUES ('1824', 'Cerro de San Pedro ', '24');
INSERT INTO `municipios` VALUES ('1825', 'Cerritos ', '24');
INSERT INTO `municipios` VALUES ('1826', 'Cedral ', '24');
INSERT INTO `municipios` VALUES ('1827', 'Catorce ', '24');
INSERT INTO `municipios` VALUES ('1828', 'Mexquitic de Carmona ', '24');
INSERT INTO `municipios` VALUES ('1829', 'Moctezuma ', '24');
INSERT INTO `municipios` VALUES ('1830', 'El Naranjo ', '24');
INSERT INTO `municipios` VALUES ('1831', 'Rayón ', '24');
INSERT INTO `municipios` VALUES ('1832', 'Rioverde ', '24');
INSERT INTO `municipios` VALUES ('1833', 'Salinas ', '24');
INSERT INTO `municipios` VALUES ('1834', 'San Antonio ', '24');
INSERT INTO `municipios` VALUES ('1835', 'San Ciro de Acosta ', '24');
INSERT INTO `municipios` VALUES ('1836', 'San Luis Potosí ', '24');
INSERT INTO `municipios` VALUES ('1837', 'San Martín Chalchicuautla  ', '24');
INSERT INTO `municipios` VALUES ('1838', 'San Nicolás Tolentino ', '24');
INSERT INTO `municipios` VALUES ('1839', 'San Vicente Tancuayalab ', '24');
INSERT INTO `municipios` VALUES ('1840', 'Santa Catarina ', '24');
INSERT INTO `municipios` VALUES ('1841', 'Santa María del Río ', '24');
INSERT INTO `municipios` VALUES ('1842', 'Santo Domingo ', '24');
INSERT INTO `municipios` VALUES ('1843', 'Soledad de Graciano Sánchez ', '24');
INSERT INTO `municipios` VALUES ('1844', 'Tamasopo ', '24');
INSERT INTO `municipios` VALUES ('1845', 'Tamazunchale', '24');
INSERT INTO `municipios` VALUES ('1846', 'Tampacán ', '24');
INSERT INTO `municipios` VALUES ('1847', 'Tampamolón Corona ', '24');
INSERT INTO `municipios` VALUES ('1849', 'Tamuín ', '24');
INSERT INTO `municipios` VALUES ('1850', 'Tancanhuitz de Santos ', '24');
INSERT INTO `municipios` VALUES ('1851', 'Tanlajás ', '24');
INSERT INTO `municipios` VALUES ('1852', 'Tanquián de Escobedo', '24');
INSERT INTO `municipios` VALUES ('1853', 'Tierra Nueva', '24');
INSERT INTO `municipios` VALUES ('1854', 'Vanegas', '24');
INSERT INTO `municipios` VALUES ('1855', 'Venado', '24');
INSERT INTO `municipios` VALUES ('1856', 'Villa de Arista', '24');
INSERT INTO `municipios` VALUES ('1857', 'Villa de Arriaga', '24');
INSERT INTO `municipios` VALUES ('1858', 'Villa de Guadalupe', '24');
INSERT INTO `municipios` VALUES ('1859', 'Villa de la Paz', '24');
INSERT INTO `municipios` VALUES ('1860', 'Villa de Ramos', '24');
INSERT INTO `municipios` VALUES ('1861', 'Villa de Reyes', '24');
INSERT INTO `municipios` VALUES ('1862', 'Villa Hidalgo', '24');
INSERT INTO `municipios` VALUES ('1863', 'Villa Juárez', '24');
INSERT INTO `municipios` VALUES ('1864', 'Xilitla', '24');
INSERT INTO `municipios` VALUES ('1865', 'Zaragoza', '24');
INSERT INTO `municipios` VALUES ('1866', 'Escuinapa ', '25');
INSERT INTO `municipios` VALUES ('1867', 'Elota ', '25');
INSERT INTO `municipios` VALUES ('1868', 'Choix ', '25');
INSERT INTO `municipios` VALUES ('1869', 'Culiacán ', '25');
INSERT INTO `municipios` VALUES ('1870', 'Cosalá ', '25');
INSERT INTO `municipios` VALUES ('1871', 'Concordia ', '25');
INSERT INTO `municipios` VALUES ('1872', 'Badiraguato ', '25');
INSERT INTO `municipios` VALUES ('1873', 'Angostura ', '25');
INSERT INTO `municipios` VALUES ('1874', 'Ahome ', '25');
INSERT INTO `municipios` VALUES ('1875', 'El Fuerte', '25');
INSERT INTO `municipios` VALUES ('1876', 'Guasave', '25');
INSERT INTO `municipios` VALUES ('1878', 'Mazatlán', '25');
INSERT INTO `municipios` VALUES ('1879', 'Mocorito', '25');
INSERT INTO `municipios` VALUES ('1880', 'Navolato', '25');
INSERT INTO `municipios` VALUES ('1881', 'Rosario', '25');
INSERT INTO `municipios` VALUES ('1882', 'Salvador Alvarado', '25');
INSERT INTO `municipios` VALUES ('1883', 'San Ignacio', '25');
INSERT INTO `municipios` VALUES ('1884', 'Sinaloa', '25');
INSERT INTO `municipios` VALUES ('1885', 'Caborca ', '26');
INSERT INTO `municipios` VALUES ('1886', 'Benjamín Hill ', '26');
INSERT INTO `municipios` VALUES ('1887', 'Bavispe ', '26');
INSERT INTO `municipios` VALUES ('1888', 'Baviácora ', '26');
INSERT INTO `municipios` VALUES ('1889', 'Banámichi ', '26');
INSERT INTO `municipios` VALUES ('1890', 'Bácum ', '26');
INSERT INTO `municipios` VALUES ('1891', 'Bacoachi ', '26');
INSERT INTO `municipios` VALUES ('1892', 'Bacerac ', '26');
INSERT INTO `municipios` VALUES ('1893', 'Bacanora ', '26');
INSERT INTO `municipios` VALUES ('1894', 'Bacadéhuachi ', '26');
INSERT INTO `municipios` VALUES ('1895', 'Atil ', '26');
INSERT INTO `municipios` VALUES ('1896', 'Arizpe ', '26');
INSERT INTO `municipios` VALUES ('1897', 'Arivechi ', '26');
INSERT INTO `municipios` VALUES ('1898', 'Altar ', '26');
INSERT INTO `municipios` VALUES ('1899', 'Alamos ', '26');
INSERT INTO `municipios` VALUES ('1900', 'Agua Prieta ', '26');
INSERT INTO `municipios` VALUES ('1901', 'Aconchi ', '26');
INSERT INTO `municipios` VALUES ('1902', 'Huachinera ', '26');
INSERT INTO `municipios` VALUES ('1903', 'Hermosillo ', '26');
INSERT INTO `municipios` VALUES ('1904', 'Guaymas ', '26');
INSERT INTO `municipios` VALUES ('1905', 'Granados ', '26');
INSERT INTO `municipios` VALUES ('1906', 'Fronteras ', '26');
INSERT INTO `municipios` VALUES ('1907', 'Etchojoa ', '26');
INSERT INTO `municipios` VALUES ('1908', 'Empalme ', '26');
INSERT INTO `municipios` VALUES ('1909', 'Divisaderos ', '26');
INSERT INTO `municipios` VALUES ('1910', 'Cumpas ', '26');
INSERT INTO `municipios` VALUES ('1911', 'Cucurpe ', '26');
INSERT INTO `municipios` VALUES ('1912', 'La Colorada ', '26');
INSERT INTO `municipios` VALUES ('1913', 'Carbó ', '26');
INSERT INTO `municipios` VALUES ('1914', 'Cananea ', '26');
INSERT INTO `municipios` VALUES ('1915', 'Cajeme ', '26');
INSERT INTO `municipios` VALUES ('1916', 'Huásabas ', '26');
INSERT INTO `municipios` VALUES ('1917', 'Huatabampo ', '26');
INSERT INTO `municipios` VALUES ('1918', 'Huépac ', '26');
INSERT INTO `municipios` VALUES ('1919', 'Imuris ', '26');
INSERT INTO `municipios` VALUES ('1920', 'Magdalena ', '26');
INSERT INTO `municipios` VALUES ('1921', 'Mazatán ', '26');
INSERT INTO `municipios` VALUES ('1922', 'Moctezuma ', '26');
INSERT INTO `municipios` VALUES ('1923', 'Naco ', '26');
INSERT INTO `municipios` VALUES ('1924', 'Nácori Chico ', '26');
INSERT INTO `municipios` VALUES ('1925', 'Nacozari de García', '26');
INSERT INTO `municipios` VALUES ('1926', 'Navojoa ', '26');
INSERT INTO `municipios` VALUES ('1927', 'Nogales ', '26');
INSERT INTO `municipios` VALUES ('1928', 'Onavas ', '26');
INSERT INTO `municipios` VALUES ('1929', 'Opodepe ', '26');
INSERT INTO `municipios` VALUES ('1930', 'Oquitoa ', '26');
INSERT INTO `municipios` VALUES ('1931', 'Pitiquito ', '26');
INSERT INTO `municipios` VALUES ('1932', 'Puerto Peñasco ', '26');
INSERT INTO `municipios` VALUES ('1933', 'Quiriego', '26');
INSERT INTO `municipios` VALUES ('1934', 'Rayón', '26');
INSERT INTO `municipios` VALUES ('1935', 'Rosario', '26');
INSERT INTO `municipios` VALUES ('1936', 'Sahuaripa', '26');
INSERT INTO `municipios` VALUES ('1937', 'San Felipe de Jesús', '26');
INSERT INTO `municipios` VALUES ('1938', 'San Javier', '26');
INSERT INTO `municipios` VALUES ('1939', 'San Luis Río Colorado', '26');
INSERT INTO `municipios` VALUES ('1940', 'San Miguel de Horcasitas', '26');
INSERT INTO `municipios` VALUES ('1941', 'San Pedro de la Cueva', '26');
INSERT INTO `municipios` VALUES ('1942', 'Santa Ana', '26');
INSERT INTO `municipios` VALUES ('1943', 'Santa Cruz', '26');
INSERT INTO `municipios` VALUES ('1944', 'Sáric', '26');
INSERT INTO `municipios` VALUES ('1945', 'Soyopa', '26');
INSERT INTO `municipios` VALUES ('1946', 'Suaqui Grande', '26');
INSERT INTO `municipios` VALUES ('1947', 'Tepachi', '26');
INSERT INTO `municipios` VALUES ('1948', 'Trincheras', '26');
INSERT INTO `municipios` VALUES ('1949', 'Tubutama', '26');
INSERT INTO `municipios` VALUES ('1950', 'Ures', '26');
INSERT INTO `municipios` VALUES ('1951', 'Villa Hidalgo', '26');
INSERT INTO `municipios` VALUES ('1952', 'Villa Pesqueira', '26');
INSERT INTO `municipios` VALUES ('1953', 'Yécora', '26');
INSERT INTO `municipios` VALUES ('1954', 'General Plutarco Elías Calles', '26');
INSERT INTO `municipios` VALUES ('1955', 'Benito Juárez', '26');
INSERT INTO `municipios` VALUES ('1956', 'San Ignacio Río Muerto', '26');
INSERT INTO `municipios` VALUES ('1957', 'Balancán ', '27');
INSERT INTO `municipios` VALUES ('1958', 'Cárdenas ', '27');
INSERT INTO `municipios` VALUES ('1959', 'Centla ', '27');
INSERT INTO `municipios` VALUES ('1960', 'Centro ', '27');
INSERT INTO `municipios` VALUES ('1961', 'Comalcalco ', '27');
INSERT INTO `municipios` VALUES ('1962', 'Cunduacán ', '27');
INSERT INTO `municipios` VALUES ('1963', 'Emiliano Zapata ', '27');
INSERT INTO `municipios` VALUES ('1964', 'Huimanguillo ', '27');
INSERT INTO `municipios` VALUES ('1965', 'Jalapa ', '27');
INSERT INTO `municipios` VALUES ('1966', 'Jalpa de Méndez', '27');
INSERT INTO `municipios` VALUES ('1967', 'Jonuta', '27');
INSERT INTO `municipios` VALUES ('1968', 'Macuspana', '27');
INSERT INTO `municipios` VALUES ('1969', 'Nacajuca', '27');
INSERT INTO `municipios` VALUES ('1970', 'Paraíso', '27');
INSERT INTO `municipios` VALUES ('1971', 'Tacotalpa', '27');
INSERT INTO `municipios` VALUES ('1972', 'Teapa', '27');
INSERT INTO `municipios` VALUES ('1973', 'Tenosique', '27');
INSERT INTO `municipios` VALUES ('1974', 'Abasolo ', '28');
INSERT INTO `municipios` VALUES ('1975', 'Aldama ', '28');
INSERT INTO `municipios` VALUES ('1976', 'Altamira ', '28');
INSERT INTO `municipios` VALUES ('1977', 'Antiguo Morelos ', '28');
INSERT INTO `municipios` VALUES ('1978', 'Burgos ', '28');
INSERT INTO `municipios` VALUES ('1979', 'Bustamante ', '28');
INSERT INTO `municipios` VALUES ('1980', 'Camargo ', '28');
INSERT INTO `municipios` VALUES ('1981', 'Casas ', '28');
INSERT INTO `municipios` VALUES ('1982', 'Ciudad Madero ', '28');
INSERT INTO `municipios` VALUES ('1983', 'Cruillas ', '28');
INSERT INTO `municipios` VALUES ('1984', 'Gómez Farías', '28');
INSERT INTO `municipios` VALUES ('1985', 'González ', '28');
INSERT INTO `municipios` VALUES ('1986', 'Guémez ', '28');
INSERT INTO `municipios` VALUES ('1987', 'Guerrero ', '28');
INSERT INTO `municipios` VALUES ('1988', 'Gustavo Díaz Ordaz ', '28');
INSERT INTO `municipios` VALUES ('1989', 'Hidalgo ', '28');
INSERT INTO `municipios` VALUES ('1990', 'Jaumave ', '28');
INSERT INTO `municipios` VALUES ('1991', 'Jiménez ', '28');
INSERT INTO `municipios` VALUES ('1992', 'Llera ', '28');
INSERT INTO `municipios` VALUES ('1993', 'Mainero ', '28');
INSERT INTO `municipios` VALUES ('1994', 'El Mante ', '28');
INSERT INTO `municipios` VALUES ('1995', 'Matamoros ', '28');
INSERT INTO `municipios` VALUES ('1996', 'Méndez ', '28');
INSERT INTO `municipios` VALUES ('1997', 'Mier ', '28');
INSERT INTO `municipios` VALUES ('1998', 'Miguel Alemán ', '28');
INSERT INTO `municipios` VALUES ('1999', 'Miquihuana ', '28');
INSERT INTO `municipios` VALUES ('2000', 'Nuevo Laredo ', '28');
INSERT INTO `municipios` VALUES ('2001', 'Nuevo Morelos ', '28');
INSERT INTO `municipios` VALUES ('2002', 'Ocampo ', '28');
INSERT INTO `municipios` VALUES ('2003', 'Padilla ', '28');
INSERT INTO `municipios` VALUES ('2004', 'Palmillas ', '28');
INSERT INTO `municipios` VALUES ('2005', 'Reynosa ', '28');
INSERT INTO `municipios` VALUES ('2006', 'Río Bravo ', '28');
INSERT INTO `municipios` VALUES ('2007', 'San Carlos', '28');
INSERT INTO `municipios` VALUES ('2008', 'San Fernando', '28');
INSERT INTO `municipios` VALUES ('2009', 'San Nicolás', '28');
INSERT INTO `municipios` VALUES ('2010', 'Soto la Marina', '28');
INSERT INTO `municipios` VALUES ('2011', 'Tampico', '28');
INSERT INTO `municipios` VALUES ('2012', 'Tula', '28');
INSERT INTO `municipios` VALUES ('2013', 'Valle Hermoso', '28');
INSERT INTO `municipios` VALUES ('2014', 'Victoria', '28');
INSERT INTO `municipios` VALUES ('2015', 'Villagrán', '28');
INSERT INTO `municipios` VALUES ('2016', 'Xicoténcatl', '28');
INSERT INTO `municipios` VALUES ('2017', 'Amaxac de Guerrero', '29');
INSERT INTO `municipios` VALUES ('2018', 'Tetla de la Solidaridad', '29');
INSERT INTO `municipios` VALUES ('2019', 'Apetatitlán de Antonio Carvajal', '29');
INSERT INTO `municipios` VALUES ('2020', 'Tetlatlahuca', '29');
INSERT INTO `municipios` VALUES ('2021', 'Atlangatepec', '29');
INSERT INTO `municipios` VALUES ('2022', 'Tlaxcala', '29');
INSERT INTO `municipios` VALUES ('2023', 'Altzayanca', '29');
INSERT INTO `municipios` VALUES ('2024', 'Tlaxco', '29');
INSERT INTO `municipios` VALUES ('2025', 'Apizaco', '29');
INSERT INTO `municipios` VALUES ('2026', 'Tocatlán', '29');
INSERT INTO `municipios` VALUES ('2027', 'Calpulalpan', '29');
INSERT INTO `municipios` VALUES ('2028', 'Totolac', '29');
INSERT INTO `municipios` VALUES ('2029', 'El Carmen Tequexquitla', '29');
INSERT INTO `municipios` VALUES ('2030', 'Zitlaltepec de Trinidad Sánchez Santos', '29');
INSERT INTO `municipios` VALUES ('2031', 'Cuapiaxtla', '29');
INSERT INTO `municipios` VALUES ('2032', 'Tzompantepec', '29');
INSERT INTO `municipios` VALUES ('2033', 'Cuaxomulco', '29');
INSERT INTO `municipios` VALUES ('2034', 'Xaloztoc', '29');
INSERT INTO `municipios` VALUES ('2035', 'Chiautempan', '29');
INSERT INTO `municipios` VALUES ('2036', 'Xaltocan', '29');
INSERT INTO `municipios` VALUES ('2037', 'Muñoz de Domingo Arenas', '29');
INSERT INTO `municipios` VALUES ('2038', 'Papalotla de Xicohténcatl', '29');
INSERT INTO `municipios` VALUES ('2039', 'Españita', '29');
INSERT INTO `municipios` VALUES ('2040', 'Xicohtzinco', '29');
INSERT INTO `municipios` VALUES ('2041', 'Huamantla', '29');
INSERT INTO `municipios` VALUES ('2042', 'Yauhquemecan', '29');
INSERT INTO `municipios` VALUES ('2043', 'Hueyotlipan', '29');
INSERT INTO `municipios` VALUES ('2044', 'Zacatelco', '29');
INSERT INTO `municipios` VALUES ('2045', 'Ixtacuixtla de Mariano Matamoros', '29');
INSERT INTO `municipios` VALUES ('2046', 'Benito Juárez', '29');
INSERT INTO `municipios` VALUES ('2047', 'Ixtenco', '29');
INSERT INTO `municipios` VALUES ('2048', 'Emiliano Zapata', '29');
INSERT INTO `municipios` VALUES ('2049', 'Mazatecochco de José María Morelos', '29');
INSERT INTO `municipios` VALUES ('2050', 'Lázaro Cárdenas', '29');
INSERT INTO `municipios` VALUES ('2051', 'Contla de Juan Cuamatzi', '29');
INSERT INTO `municipios` VALUES ('2052', 'La Magdalena Tlaltelulco', '29');
INSERT INTO `municipios` VALUES ('2053', 'Tepetitla de Lardizábal', '29');
INSERT INTO `municipios` VALUES ('2054', 'San Damián Texoloc', '29');
INSERT INTO `municipios` VALUES ('2055', 'Sanctórum de Lázaro Cárdenas', '29');
INSERT INTO `municipios` VALUES ('2056', 'San Francisco Tetlanohcan', '29');
INSERT INTO `municipios` VALUES ('2057', 'Nanacamilpa de Mariano Arista', '29');
INSERT INTO `municipios` VALUES ('2058', 'San Jerónimo Zacualpan', '29');
INSERT INTO `municipios` VALUES ('2059', 'Acuamanala de Miguel Hidalgo', '29');
INSERT INTO `municipios` VALUES ('2060', 'San José Teacalco', '29');
INSERT INTO `municipios` VALUES ('2061', 'Natívitas', '29');
INSERT INTO `municipios` VALUES ('2062', 'San Juan Huactzinco', '29');
INSERT INTO `municipios` VALUES ('2063', 'Panotla', '29');
INSERT INTO `municipios` VALUES ('2064', 'San Lorenzo Axocomanitla', '29');
INSERT INTO `municipios` VALUES ('2065', 'San Pablo del Monte', '29');
INSERT INTO `municipios` VALUES ('2066', 'San Lucas Tecopilco', '29');
INSERT INTO `municipios` VALUES ('2067', 'Santa Cruz Tlaxcala', '29');
INSERT INTO `municipios` VALUES ('2068', 'Santa Ana Nopalucan', '29');
INSERT INTO `municipios` VALUES ('2069', 'Tenancingo', '29');
INSERT INTO `municipios` VALUES ('2070', 'Santa Apolonia Teacalco', '29');
INSERT INTO `municipios` VALUES ('2071', 'Teolocholco', '29');
INSERT INTO `municipios` VALUES ('2072', 'Santa Catarina Ayometla', '29');
INSERT INTO `municipios` VALUES ('2073', 'Tepeyanco', '29');
INSERT INTO `municipios` VALUES ('2074', 'Santa Cruz Quilehtla', '29');
INSERT INTO `municipios` VALUES ('2075', 'Terrenate', '29');
INSERT INTO `municipios` VALUES ('2076', 'Santa Isabel Xiloxoxtla', '29');
INSERT INTO `municipios` VALUES ('2077', 'Acajete  ', '30');
INSERT INTO `municipios` VALUES ('2078', 'Acatlán ', '30');
INSERT INTO `municipios` VALUES ('2079', 'Acayucan ', '30');
INSERT INTO `municipios` VALUES ('2080', 'Actopan ', '30');
INSERT INTO `municipios` VALUES ('2081', 'Acula ', '30');
INSERT INTO `municipios` VALUES ('2082', 'Acultzingo ', '30');
INSERT INTO `municipios` VALUES ('2083', 'Agua Dulce', '30');
INSERT INTO `municipios` VALUES ('2084', 'Alpatláhuac ', '30');
INSERT INTO `municipios` VALUES ('2085', 'Alto Lucero de Gutiérrez Barrios ', '30');
INSERT INTO `municipios` VALUES ('2086', 'Altotonga ', '30');
INSERT INTO `municipios` VALUES ('2087', 'Alvarado ', '30');
INSERT INTO `municipios` VALUES ('2088', 'Amatitlán ', '30');
INSERT INTO `municipios` VALUES ('2089', 'Amatlán de los Reyes ', '30');
INSERT INTO `municipios` VALUES ('2090', 'Angel R. Cabada ', '30');
INSERT INTO `municipios` VALUES ('2091', 'La Antigua ', '30');
INSERT INTO `municipios` VALUES ('2092', 'Apazapan ', '30');
INSERT INTO `municipios` VALUES ('2093', 'Aquila ', '30');
INSERT INTO `municipios` VALUES ('2094', 'Astacinga ', '30');
INSERT INTO `municipios` VALUES ('2095', 'Atlahuilco ', '30');
INSERT INTO `municipios` VALUES ('2096', 'Atoyac ', '30');
INSERT INTO `municipios` VALUES ('2097', 'Atzacan ', '30');
INSERT INTO `municipios` VALUES ('2098', 'Atzalan ', '30');
INSERT INTO `municipios` VALUES ('2099', 'Ayahualulco ', '30');
INSERT INTO `municipios` VALUES ('2100', 'Banderilla ', '30');
INSERT INTO `municipios` VALUES ('2101', 'Benito Juárez', '30');
INSERT INTO `municipios` VALUES ('2102', 'Boca del Río ', '30');
INSERT INTO `municipios` VALUES ('2103', 'Calcahualco ', '30');
INSERT INTO `municipios` VALUES ('2104', 'Camarón de Tejeda ', '30');
INSERT INTO `municipios` VALUES ('2105', 'Camerino Z. Mendoza ', '30');
INSERT INTO `municipios` VALUES ('2106', 'Carlos A. Carrillo', '30');
INSERT INTO `municipios` VALUES ('2107', 'Carrillo Puerto ', '30');
INSERT INTO `municipios` VALUES ('2108', 'Castillo de Teayo', '30');
INSERT INTO `municipios` VALUES ('2109', 'Catemaco ', '30');
INSERT INTO `municipios` VALUES ('2110', 'Cazones de Herrera', '30');
INSERT INTO `municipios` VALUES ('2111', 'Cerro Azul ', '30');
INSERT INTO `municipios` VALUES ('2112', 'Chacaltianguis', '30');
INSERT INTO `municipios` VALUES ('2113', 'Chalma ', '30');
INSERT INTO `municipios` VALUES ('2114', 'Chiconamel ', '30');
INSERT INTO `municipios` VALUES ('2115', 'Chiconquiaco ', '30');
INSERT INTO `municipios` VALUES ('2116', 'Chicontepec ', '30');
INSERT INTO `municipios` VALUES ('2117', 'Chinameca ', '30');
INSERT INTO `municipios` VALUES ('2118', 'Chinampa de Gorostiza ', '30');
INSERT INTO `municipios` VALUES ('2119', 'Las Choapas ', '30');
INSERT INTO `municipios` VALUES ('2120', 'Chocamán ', '30');
INSERT INTO `municipios` VALUES ('2121', 'Chontla ', '30');
INSERT INTO `municipios` VALUES ('2122', 'Chumatlán', '30');
INSERT INTO `municipios` VALUES ('2123', 'Citlaltépetl ', '30');
INSERT INTO `municipios` VALUES ('2124', 'Coacoatzintla ', '30');
INSERT INTO `municipios` VALUES ('2125', 'Coahuitlán', '30');
INSERT INTO `municipios` VALUES ('2126', 'Coatepec ', '30');
INSERT INTO `municipios` VALUES ('2127', 'Coatzacoalcos ', '30');
INSERT INTO `municipios` VALUES ('2128', 'Coatzintla ', '30');
INSERT INTO `municipios` VALUES ('2129', 'Coetzala ', '30');
INSERT INTO `municipios` VALUES ('2130', 'Colipa ', '30');
INSERT INTO `municipios` VALUES ('2131', 'Comapa ', '30');
INSERT INTO `municipios` VALUES ('2132', 'Córdoba ', '30');
INSERT INTO `municipios` VALUES ('2133', 'Cosamaloapan de Carpio ', '30');
INSERT INTO `municipios` VALUES ('2134', 'Cosautlán de Carvajal ', '30');
INSERT INTO `municipios` VALUES ('2135', 'Coscomatepec ', '30');
INSERT INTO `municipios` VALUES ('2136', 'Cosoleacaque ', '30');
INSERT INTO `municipios` VALUES ('2137', 'Cotaxtla ', '30');
INSERT INTO `municipios` VALUES ('2138', 'Coxquihui ', '30');
INSERT INTO `municipios` VALUES ('2139', 'Coyutla ', '30');
INSERT INTO `municipios` VALUES ('2140', 'Cuichapa ', '30');
INSERT INTO `municipios` VALUES ('2141', 'Cuitláhuac ', '30');
INSERT INTO `municipios` VALUES ('2142', 'Emiliano Zapata ', '30');
INSERT INTO `municipios` VALUES ('2143', 'Espinal ', '30');
INSERT INTO `municipios` VALUES ('2144', 'Filomeno Mata', '30');
INSERT INTO `municipios` VALUES ('2145', 'Fortín ', '30');
INSERT INTO `municipios` VALUES ('2146', 'Gutiérrez Zamora ', '30');
INSERT INTO `municipios` VALUES ('2147', 'Hidalgotitlán', '30');
INSERT INTO `municipios` VALUES ('2148', 'El Higo', '30');
INSERT INTO `municipios` VALUES ('2149', 'Huatusco ', '30');
INSERT INTO `municipios` VALUES ('2150', 'Huayacocotla ', '30');
INSERT INTO `municipios` VALUES ('2151', 'Hueyapan de Ocampo ', '30');
INSERT INTO `municipios` VALUES ('2152', 'Huiloapan ', '30');
INSERT INTO `municipios` VALUES ('2153', 'Ignacio de la Llave', '30');
INSERT INTO `municipios` VALUES ('2154', 'Ilamatlán', '30');
INSERT INTO `municipios` VALUES ('2155', 'Isla ', '30');
INSERT INTO `municipios` VALUES ('2156', 'Ixcatepec ', '30');
INSERT INTO `municipios` VALUES ('2157', 'Ixhuacán de los Reyes ', '30');
INSERT INTO `municipios` VALUES ('2158', 'Ixhuatlán de Madero ', '30');
INSERT INTO `municipios` VALUES ('2159', 'Ixhuatlán del Café ', '30');
INSERT INTO `municipios` VALUES ('2160', 'Ixhuatlán del Sureste ', '30');
INSERT INTO `municipios` VALUES ('2161', 'Ixhuatlancillo ', '30');
INSERT INTO `municipios` VALUES ('2162', 'Ixmatlahuacan ', '30');
INSERT INTO `municipios` VALUES ('2163', 'Ixtaczoquitlán ', '30');
INSERT INTO `municipios` VALUES ('2164', 'Jalacingo ', '30');
INSERT INTO `municipios` VALUES ('2165', 'Jalcomulco ', '30');
INSERT INTO `municipios` VALUES ('2166', 'Jáltipan ', '30');
INSERT INTO `municipios` VALUES ('2167', 'Jamapa ', '30');
INSERT INTO `municipios` VALUES ('2168', 'Jesús Carranza ', '30');
INSERT INTO `municipios` VALUES ('2169', 'Jilotepec ', '30');
INSERT INTO `municipios` VALUES ('2170', 'José Azueta', '30');
INSERT INTO `municipios` VALUES ('2171', 'Juan Rodríguez Clara ', '30');
INSERT INTO `municipios` VALUES ('2172', 'Juchique de Ferrer ', '30');
INSERT INTO `municipios` VALUES ('2173', 'Landero y Coss ', '30');
INSERT INTO `municipios` VALUES ('2174', 'Lerdo de Tejada ', '30');
INSERT INTO `municipios` VALUES ('2175', 'Magdalena ', '30');
INSERT INTO `municipios` VALUES ('2176', 'Maltrata ', '30');
INSERT INTO `municipios` VALUES ('2177', 'Manlio Fabio Altamirano ', '30');
INSERT INTO `municipios` VALUES ('2178', 'Mariano Escobedo ', '30');
INSERT INTO `municipios` VALUES ('2179', 'Martínez de la Torre ', '30');
INSERT INTO `municipios` VALUES ('2180', 'Mecatlán ', '30');
INSERT INTO `municipios` VALUES ('2181', 'Mecayapan ', '30');
INSERT INTO `municipios` VALUES ('2182', 'Medellín ', '30');
INSERT INTO `municipios` VALUES ('2183', 'Miahuatlán', '30');
INSERT INTO `municipios` VALUES ('2184', 'Las Minas', '30');
INSERT INTO `municipios` VALUES ('2185', 'Minatitlán', '30');
INSERT INTO `municipios` VALUES ('2186', 'Misantla', '30');
INSERT INTO `municipios` VALUES ('2187', 'Mixtla de Altamirano', '30');
INSERT INTO `municipios` VALUES ('2188', 'Moloacán', '30');
INSERT INTO `municipios` VALUES ('2189', 'Nanchital de Lázaro Cárdenas del R', '30');
INSERT INTO `municipios` VALUES ('2190', 'Naolinco', '30');
INSERT INTO `municipios` VALUES ('2191', 'Naranjal', '30');
INSERT INTO `municipios` VALUES ('2192', 'Naranjos Amatlán', '30');
INSERT INTO `municipios` VALUES ('2193', 'Nautla', '30');
INSERT INTO `municipios` VALUES ('2194', 'Nogales', '30');
INSERT INTO `municipios` VALUES ('2195', 'Oluta', '30');
INSERT INTO `municipios` VALUES ('2196', 'Omealca', '30');
INSERT INTO `municipios` VALUES ('2197', 'Orizaba', '30');
INSERT INTO `municipios` VALUES ('2198', 'Otatitlán', '30');
INSERT INTO `municipios` VALUES ('2199', 'Oteapan', '30');
INSERT INTO `municipios` VALUES ('2200', 'Ozuluama de Mascareñas', '30');
INSERT INTO `municipios` VALUES ('2201', 'Pajapan', '30');
INSERT INTO `municipios` VALUES ('2202', 'Pánuco', '30');
INSERT INTO `municipios` VALUES ('2203', 'Papantla', '30');
INSERT INTO `municipios` VALUES ('2204', 'Paso de Ovejas', '30');
INSERT INTO `municipios` VALUES ('2205', 'Paso del Macho', '30');
INSERT INTO `municipios` VALUES ('2206', 'La Perla', '30');
INSERT INTO `municipios` VALUES ('2207', 'Perote', '30');
INSERT INTO `municipios` VALUES ('2208', 'Platón Sánchez', '30');
INSERT INTO `municipios` VALUES ('2209', 'Playa Vicente', '30');
INSERT INTO `municipios` VALUES ('2210', 'Poza Rica de Hidalgo', '30');
INSERT INTO `municipios` VALUES ('2211', 'Pueblo Viejo', '30');
INSERT INTO `municipios` VALUES ('2212', 'Puente Nacional', '30');
INSERT INTO `municipios` VALUES ('2213', 'Rafael Delgado', '30');
INSERT INTO `municipios` VALUES ('2214', 'Rafael Lucio', '30');
INSERT INTO `municipios` VALUES ('2215', 'Los Reyes', '30');
INSERT INTO `municipios` VALUES ('2216', 'Río Blanco', '30');
INSERT INTO `municipios` VALUES ('2217', 'Saltabarranca', '30');
INSERT INTO `municipios` VALUES ('2218', 'San Andrés Tenejapan', '30');
INSERT INTO `municipios` VALUES ('2219', 'San Andrés Tuxtla', '30');
INSERT INTO `municipios` VALUES ('2220', 'San Juan Evangelista', '30');
INSERT INTO `municipios` VALUES ('2221', 'San Rafael ', '30');
INSERT INTO `municipios` VALUES ('2222', 'Santiago Sochiapan', '30');
INSERT INTO `municipios` VALUES ('2223', 'Santiago Tuxtla', '30');
INSERT INTO `municipios` VALUES ('2224', 'Sayula de Alemán', '30');
INSERT INTO `municipios` VALUES ('2225', 'Sochiapa', '30');
INSERT INTO `municipios` VALUES ('2226', 'Soconusco', '30');
INSERT INTO `municipios` VALUES ('2227', 'Soledad Atzompa', '30');
INSERT INTO `municipios` VALUES ('2228', 'Soledad de Doblado', '30');
INSERT INTO `municipios` VALUES ('2229', 'Soteapan', '30');
INSERT INTO `municipios` VALUES ('2230', 'Tamalín', '30');
INSERT INTO `municipios` VALUES ('2231', 'Tamiahua', '30');
INSERT INTO `municipios` VALUES ('2232', 'Tampico Alto', '30');
INSERT INTO `municipios` VALUES ('2233', 'Tancoco', '30');
INSERT INTO `municipios` VALUES ('2234', 'Tantima', '30');
INSERT INTO `municipios` VALUES ('2235', 'Tantoyuca', '30');
INSERT INTO `municipios` VALUES ('2236', 'Tatahuicapan de Juárez', '30');
INSERT INTO `municipios` VALUES ('2237', 'Tatatila', '30');
INSERT INTO `municipios` VALUES ('2238', 'Tecolutla', '30');
INSERT INTO `municipios` VALUES ('2239', 'Tehuipango', '30');
INSERT INTO `municipios` VALUES ('2240', 'Temapache', '30');
INSERT INTO `municipios` VALUES ('2241', 'Tempoal', '30');
INSERT INTO `municipios` VALUES ('2242', 'Tenampa', '30');
INSERT INTO `municipios` VALUES ('2243', 'Tenochtitlán', '30');
INSERT INTO `municipios` VALUES ('2244', 'Teocelo', '30');
INSERT INTO `municipios` VALUES ('2245', 'Tepatlaxco', '30');
INSERT INTO `municipios` VALUES ('2246', 'Tepetlán', '30');
INSERT INTO `municipios` VALUES ('2247', 'Tepetzintla', '30');
INSERT INTO `municipios` VALUES ('2248', 'Tequila', '30');
INSERT INTO `municipios` VALUES ('2249', 'Texcatepec', '30');
INSERT INTO `municipios` VALUES ('2250', 'Texhuacán', '30');
INSERT INTO `municipios` VALUES ('2251', 'Texistepec', '30');
INSERT INTO `municipios` VALUES ('2252', 'Tezonapa', '30');
INSERT INTO `municipios` VALUES ('2253', 'Tierra Blanca', '30');
INSERT INTO `municipios` VALUES ('2254', 'Tihuatlán', '30');
INSERT INTO `municipios` VALUES ('2255', 'Tlachichilco', '30');
INSERT INTO `municipios` VALUES ('2256', 'Tlacolulan', '30');
INSERT INTO `municipios` VALUES ('2257', 'Tlacolulan', '30');
INSERT INTO `municipios` VALUES ('2258', 'Tlacotalpan', '30');
INSERT INTO `municipios` VALUES ('2259', 'Tlacotepec de Mejía', '30');
INSERT INTO `municipios` VALUES ('2260', 'Tlalixcoyan', '30');
INSERT INTO `municipios` VALUES ('2261', 'Tlalnelhuayocan', '30');
INSERT INTO `municipios` VALUES ('2262', 'Tlaltetela ', '30');
INSERT INTO `municipios` VALUES ('2263', 'Tlapacoyan', '30');
INSERT INTO `municipios` VALUES ('2264', 'Tlaquilpa', '30');
INSERT INTO `municipios` VALUES ('2265', 'Tlilapan', '30');
INSERT INTO `municipios` VALUES ('2266', 'Tomatlán', '30');
INSERT INTO `municipios` VALUES ('2267', 'Tonayán', '30');
INSERT INTO `municipios` VALUES ('2268', 'Totutla', '30');
INSERT INTO `municipios` VALUES ('2269', 'Tres Valles', '30');
INSERT INTO `municipios` VALUES ('2270', 'Túxpam', '30');
INSERT INTO `municipios` VALUES ('2271', 'Tuxtilla', '30');
INSERT INTO `municipios` VALUES ('2272', 'Ursulo Galván', '30');
INSERT INTO `municipios` VALUES ('2273', 'Uxpanapa', '30');
INSERT INTO `municipios` VALUES ('2274', 'Vega de Alatorre', '30');
INSERT INTO `municipios` VALUES ('2275', 'Veracruz', '30');
INSERT INTO `municipios` VALUES ('2276', 'Las Vigas de Ramírez', '30');
INSERT INTO `municipios` VALUES ('2277', 'Villa Aldama', '30');
INSERT INTO `municipios` VALUES ('2278', 'Xalapa ', '30');
INSERT INTO `municipios` VALUES ('2279', 'Xico ', '30');
INSERT INTO `municipios` VALUES ('2280', 'Xoxocotla', '30');
INSERT INTO `municipios` VALUES ('2281', 'Yanga', '30');
INSERT INTO `municipios` VALUES ('2282', 'Yecuatla', '30');
INSERT INTO `municipios` VALUES ('2283', 'Zacualpan', '30');
INSERT INTO `municipios` VALUES ('2284', 'Zaragoza', '30');
INSERT INTO `municipios` VALUES ('2285', 'Zentla', '30');
INSERT INTO `municipios` VALUES ('2286', 'Zongolica', '30');
INSERT INTO `municipios` VALUES ('2287', 'Zontecomatlán de López y Fuentes', '30');
INSERT INTO `municipios` VALUES ('2288', 'Zozocolco de Hidalgo', '30');
INSERT INTO `municipios` VALUES ('2289', 'Abal', '31');
INSERT INTO `municipios` VALUES ('2290', 'Acanceh', '31');
INSERT INTO `municipios` VALUES ('2291', 'Akil', '31');
INSERT INTO `municipios` VALUES ('2292', 'Baca', '31');
INSERT INTO `municipios` VALUES ('2293', 'Bokobá', '31');
INSERT INTO `municipios` VALUES ('2294', 'Buctzotz', '31');
INSERT INTO `municipios` VALUES ('2295', 'Cacalchén', '31');
INSERT INTO `municipios` VALUES ('2296', 'Calotmul', '31');
INSERT INTO `municipios` VALUES ('2297', 'Cansahcab', '31');
INSERT INTO `municipios` VALUES ('2298', 'Cantamayec', '31');
INSERT INTO `municipios` VALUES ('2299', 'Celestún', '31');
INSERT INTO `municipios` VALUES ('2300', 'Cenotillo', '31');
INSERT INTO `municipios` VALUES ('2301', 'Conkal', '31');
INSERT INTO `municipios` VALUES ('2302', 'Cuncunul', '31');
INSERT INTO `municipios` VALUES ('2303', 'Cuzamá', '31');
INSERT INTO `municipios` VALUES ('2304', 'Chacsinkín', '31');
INSERT INTO `municipios` VALUES ('2305', 'Chankom', '31');
INSERT INTO `municipios` VALUES ('2306', 'Chapab', '31');
INSERT INTO `municipios` VALUES ('2307', 'Chemax', '31');
INSERT INTO `municipios` VALUES ('2308', 'Chicxulub Pueblo', '31');
INSERT INTO `municipios` VALUES ('2309', 'Chichimilá', '31');
INSERT INTO `municipios` VALUES ('2310', 'Chikindzonot', '31');
INSERT INTO `municipios` VALUES ('2311', 'Chocholá', '31');
INSERT INTO `municipios` VALUES ('2312', 'Chumayel', '31');
INSERT INTO `municipios` VALUES ('2313', 'Dzán', '31');
INSERT INTO `municipios` VALUES ('2314', 'Dzemul', '31');
INSERT INTO `municipios` VALUES ('2315', 'Dzidzantún', '31');
INSERT INTO `municipios` VALUES ('2316', 'Dzilam de Bravo', '31');
INSERT INTO `municipios` VALUES ('2317', 'Dzilam González', '31');
INSERT INTO `municipios` VALUES ('2318', 'Dzitás', '31');
INSERT INTO `municipios` VALUES ('2319', 'Dzoncauich', '31');
INSERT INTO `municipios` VALUES ('2320', 'Espita', '31');
INSERT INTO `municipios` VALUES ('2321', 'Halachó', '31');
INSERT INTO `municipios` VALUES ('2322', 'Hocabá', '31');
INSERT INTO `municipios` VALUES ('2324', 'Hoctún', '31');
INSERT INTO `municipios` VALUES ('2325', 'Homún', '31');
INSERT INTO `municipios` VALUES ('2326', 'Huhí', '31');
INSERT INTO `municipios` VALUES ('2327', 'Hunucmá', '31');
INSERT INTO `municipios` VALUES ('2328', 'Ixil', '31');
INSERT INTO `municipios` VALUES ('2329', 'Izamal', '31');
INSERT INTO `municipios` VALUES ('2330', 'Kanasín', '31');
INSERT INTO `municipios` VALUES ('2331', 'Kantunil', '31');
INSERT INTO `municipios` VALUES ('2332', 'Kaua', '31');
INSERT INTO `municipios` VALUES ('2333', 'Kinchil', '31');
INSERT INTO `municipios` VALUES ('2334', 'Kopomá', '31');
INSERT INTO `municipios` VALUES ('2335', 'Mama', '31');
INSERT INTO `municipios` VALUES ('2336', 'Maní', '31');
INSERT INTO `municipios` VALUES ('2337', 'Maxcanú', '31');
INSERT INTO `municipios` VALUES ('2338', 'Mayapán', '31');
INSERT INTO `municipios` VALUES ('2339', 'Mérida', '31');
INSERT INTO `municipios` VALUES ('2340', 'Mocochá', '31');
INSERT INTO `municipios` VALUES ('2341', 'Motul', '31');
INSERT INTO `municipios` VALUES ('2342', 'Muna', '31');
INSERT INTO `municipios` VALUES ('2343', 'Muxupip', '31');
INSERT INTO `municipios` VALUES ('2344', 'Opichén', '31');
INSERT INTO `municipios` VALUES ('2345', 'Oxkutzcab', '31');
INSERT INTO `municipios` VALUES ('2346', 'Panabá', '31');
INSERT INTO `municipios` VALUES ('2347', 'Peto', '31');
INSERT INTO `municipios` VALUES ('2348', 'Progreso', '31');
INSERT INTO `municipios` VALUES ('2349', 'Quintana Roo', '31');
INSERT INTO `municipios` VALUES ('2350', 'Río Lagartos', '31');
INSERT INTO `municipios` VALUES ('2351', 'Sacalum', '31');
INSERT INTO `municipios` VALUES ('2352', 'Samahil', '31');
INSERT INTO `municipios` VALUES ('2353', 'Sanahcat', '31');
INSERT INTO `municipios` VALUES ('2354', 'San Felipe', '31');
INSERT INTO `municipios` VALUES ('2355', 'Santa Elena', '31');
INSERT INTO `municipios` VALUES ('2356', 'Seyé', '31');
INSERT INTO `municipios` VALUES ('2357', 'Sinanché', '31');
INSERT INTO `municipios` VALUES ('2358', 'Sotuta', '31');
INSERT INTO `municipios` VALUES ('2359', 'Sucilá', '31');
INSERT INTO `municipios` VALUES ('2360', 'Sudzal', '31');
INSERT INTO `municipios` VALUES ('2361', 'Suma', '31');
INSERT INTO `municipios` VALUES ('2362', 'Tahdziú', '31');
INSERT INTO `municipios` VALUES ('2363', 'Tahmek', '31');
INSERT INTO `municipios` VALUES ('2364', 'Teabo', '31');
INSERT INTO `municipios` VALUES ('2365', 'Tecoh', '31');
INSERT INTO `municipios` VALUES ('2366', 'Tekal de Venegas', '31');
INSERT INTO `municipios` VALUES ('2367', 'Tekantó', '31');
INSERT INTO `municipios` VALUES ('2368', 'Tekax', '31');
INSERT INTO `municipios` VALUES ('2369', 'Tekit', '31');
INSERT INTO `municipios` VALUES ('2370', 'Tekom', '31');
INSERT INTO `municipios` VALUES ('2371', 'Telchac Pueblo', '31');
INSERT INTO `municipios` VALUES ('2372', 'Telchac Puerto', '31');
INSERT INTO `municipios` VALUES ('2374', 'Temax', '31');
INSERT INTO `municipios` VALUES ('2375', 'Temozón', '31');
INSERT INTO `municipios` VALUES ('2376', 'Tepakán', '31');
INSERT INTO `municipios` VALUES ('2378', 'Tetiz', '31');
INSERT INTO `municipios` VALUES ('2379', 'Teya', '31');
INSERT INTO `municipios` VALUES ('2380', 'Ticul', '31');
INSERT INTO `municipios` VALUES ('2381', 'Timucuy', '31');
INSERT INTO `municipios` VALUES ('2382', 'Tinum', '31');
INSERT INTO `municipios` VALUES ('2383', 'Tixcacalcupul', '31');
INSERT INTO `municipios` VALUES ('2384', 'Tixkokob', '31');
INSERT INTO `municipios` VALUES ('2385', 'Tixmehuac', '31');
INSERT INTO `municipios` VALUES ('2386', 'Tixpéhual', '31');
INSERT INTO `municipios` VALUES ('2387', 'Tizimín', '31');
INSERT INTO `municipios` VALUES ('2388', 'Tunkás', '31');
INSERT INTO `municipios` VALUES ('2389', 'Tzucacab', '31');
INSERT INTO `municipios` VALUES ('2390', 'Uayma', '31');
INSERT INTO `municipios` VALUES ('2391', 'Ucú', '31');
INSERT INTO `municipios` VALUES ('2392', 'Umán', '31');
INSERT INTO `municipios` VALUES ('2393', 'Valladolid', '31');
INSERT INTO `municipios` VALUES ('2394', 'Xocchel', '31');
INSERT INTO `municipios` VALUES ('2395', 'Yaxcabá', '31');
INSERT INTO `municipios` VALUES ('2396', 'Yaxkukul', '31');
INSERT INTO `municipios` VALUES ('2397', 'Yobaín', '31');
INSERT INTO `municipios` VALUES ('2398', 'Apozol ', '32');
INSERT INTO `municipios` VALUES ('2399', 'Apulco ', '32');
INSERT INTO `municipios` VALUES ('2400', 'Atolinga ', '32');
INSERT INTO `municipios` VALUES ('2401', 'Benito Juárez ', '32');
INSERT INTO `municipios` VALUES ('2402', 'Calera ', '32');
INSERT INTO `municipios` VALUES ('2403', 'Cañitas de Felipe Pescador ', '32');
INSERT INTO `municipios` VALUES ('2404', 'Concepción del Oro ', '32');
INSERT INTO `municipios` VALUES ('2405', 'Cuauhtémoc ', '32');
INSERT INTO `municipios` VALUES ('2406', 'Chalchihuites ', '32');
INSERT INTO `municipios` VALUES ('2407', 'Fresnillo ', '32');
INSERT INTO `municipios` VALUES ('2408', 'Genaro Codina ', '32');
INSERT INTO `municipios` VALUES ('2409', 'General Enrique Estrada ', '32');
INSERT INTO `municipios` VALUES ('2410', 'General Francisco R. Murguña ', '32');
INSERT INTO `municipios` VALUES ('2411', 'General Pánfilo Natera ', '32');
INSERT INTO `municipios` VALUES ('2412', 'Guadalupe ', '32');
INSERT INTO `municipios` VALUES ('2413', 'Huanusco ', '32');
INSERT INTO `municipios` VALUES ('2414', 'Jalpa ', '32');
INSERT INTO `municipios` VALUES ('2415', 'Jerez ', '32');
INSERT INTO `municipios` VALUES ('2416', 'Jiménez del Teul ', '32');
INSERT INTO `municipios` VALUES ('2417', 'Santa María de la Paz ', '32');
INSERT INTO `municipios` VALUES ('2418', 'Juan Aldama ', '32');
INSERT INTO `municipios` VALUES ('2419', 'Juchipila ', '32');
INSERT INTO `municipios` VALUES ('2420', 'Loreto ', '32');
INSERT INTO `municipios` VALUES ('2421', 'Luis Moya ', '32');
INSERT INTO `municipios` VALUES ('2422', 'Mazapil ', '32');
INSERT INTO `municipios` VALUES ('2423', 'Melchor Ocampo ', '32');
INSERT INTO `municipios` VALUES ('2424', 'Mezquital del Oro ', '32');
INSERT INTO `municipios` VALUES ('2425', 'Miguel Auza ', '32');
INSERT INTO `municipios` VALUES ('2426', 'Momax ', '32');
INSERT INTO `municipios` VALUES ('2427', 'Monte Escobedo ', '32');
INSERT INTO `municipios` VALUES ('2428', 'Morelos ', '32');
INSERT INTO `municipios` VALUES ('2429', 'Moyahua de Estrada ', '32');
INSERT INTO `municipios` VALUES ('2430', 'Nochistlán de Mejía ', '32');
INSERT INTO `municipios` VALUES ('2431', 'Noria de Angeles ', '32');
INSERT INTO `municipios` VALUES ('2432', 'Ojocaliente ', '32');
INSERT INTO `municipios` VALUES ('2433', 'Pánuco ', '32');
INSERT INTO `municipios` VALUES ('2434', 'Pinos ', '32');
INSERT INTO `municipios` VALUES ('2435', 'El Plateado de Joaquín Amaro', '32');
INSERT INTO `municipios` VALUES ('2436', 'Río Grande ', '32');
INSERT INTO `municipios` VALUES ('2437', 'Sain Alto', '32');
INSERT INTO `municipios` VALUES ('2438', 'El Salvador', '32');
INSERT INTO `municipios` VALUES ('2439', 'Sombrerete', '32');
INSERT INTO `municipios` VALUES ('2440', 'Susticacán', '32');
INSERT INTO `municipios` VALUES ('2441', 'Tabasco', '32');
INSERT INTO `municipios` VALUES ('2442', 'Tepechitlán', '32');
INSERT INTO `municipios` VALUES ('2443', 'Tepetongo', '32');
INSERT INTO `municipios` VALUES ('2444', 'Teul de González Ortega', '32');
INSERT INTO `municipios` VALUES ('2445', 'Tlaltenango de Sánchez Román', '32');
INSERT INTO `municipios` VALUES ('2446', 'Trancoso', '32');
INSERT INTO `municipios` VALUES ('2447', 'Trinidad García de la Cadena', '32');
INSERT INTO `municipios` VALUES ('2448', 'Valparaíso', '32');
INSERT INTO `municipios` VALUES ('2449', 'Vetagrande', '32');
INSERT INTO `municipios` VALUES ('2450', 'Villa de Cos', '32');
INSERT INTO `municipios` VALUES ('2451', 'Villa García', '32');
INSERT INTO `municipios` VALUES ('2452', 'Villa González Ortega', '32');
INSERT INTO `municipios` VALUES ('2453', 'Villa Hidalgo', '32');
INSERT INTO `municipios` VALUES ('2454', 'Villanueva', '32');
INSERT INTO `municipios` VALUES ('2455', 'Zacatecas', '32');

-- ----------------------------
-- Table structure for `notificacion_pagos`
-- ----------------------------
DROP TABLE IF EXISTS `notificacion_pagos`;
CREATE TABLE `notificacion_pagos` (
  `id_notificacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_notificacion_pagos` int(1) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  `id` int(11) NOT NULL,
  `tipo_pago` varchar(50) NOT NULL,
  `nombre_pago` varchar(50) NOT NULL,
  `tiempo_pago` varchar(50) NOT NULL,
  `numero_voucher` int(20) DEFAULT NULL,
  `folio` int(11) DEFAULT NULL,
  `fecha_pago` varchar(10) NOT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `sucursal` varchar(40) DEFAULT NULL,
  `importe_total` decimal(10,2) NOT NULL,
  `url_voucher` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_notificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notificacion_pagos
-- ----------------------------
INSERT INTO `notificacion_pagos` VALUES ('61', '1', '5', '0', 'Publicidad', 'destacados', '28', '11111', '15', '10/03/2013', 'Scotiabank', 'e-perfect', '92.80', 'Voucher_de_pagos/5/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('62', '1', '5', '0', 'Publicidad', 'banner lateral', '7', '12345', '15', '10/03/2013', 'Scotiabank', 'e-perfect', '130.00', 'Voucher_de_pagos/5/Audition CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('63', '1', '5', '0', 'Publicidad', 'banner superior', '7', '1234567890', '15', '10/03/2013', 'Scotiabank', 'e-perfect', '150.00', 'Voucher_de_pagos/5/Bridge CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('64', '1', '5', '0', 'Publicidad', 'destacados', '7', '12345678', '27', '10/03/2013', 'Scotiabank', 'e-perfect', '92.80', 'Voucher_de_pagos/5/Premiere Pro CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('65', '1', '6', '0', 'Publicidad', 'destacados', '28', '1234567890', '35', '10/01/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/6/100_4518.JPG');
INSERT INTO `notificacion_pagos` VALUES ('66', '1', '6', '0', 'Publicidad', 'destacados', '28', '123457890', '37', '10/01/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/6/100_4581.JPG');
INSERT INTO `notificacion_pagos` VALUES ('67', '1', '3', '0', 'Publicidad', 'banner superior', '28', '1234567890', '29', '10/02/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/3/100_4590.JPG');
INSERT INTO `notificacion_pagos` VALUES ('68', '1', '3', '0', 'Publicidad', 'banner lateral', '28', '1234567890', '10', '10/03/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/3/100_4536.JPG');
INSERT INTO `notificacion_pagos` VALUES ('69', '1', '3', '0', 'Publicidad', 'banner lateral', '28', '1234567890', '34', '10/03/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/3/100_4550.JPG');
INSERT INTO `notificacion_pagos` VALUES ('70', '1', '5', '0', 'Publicidad', 'destacados', '14', '23456743', '38', '10/15/2013', 'Scotiabank', 'baksjda', '160.00', 'Voucher_de_pagos/5/marco-hermoso-con-las-flores-azules-thumb12600122.jpg');
INSERT INTO `notificacion_pagos` VALUES ('71', '1', '3', '0', 'Publicidad', 'destacados', '28', '1234567890', '10', '10/03/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/3/100_4518.JPG');
INSERT INTO `notificacion_pagos` VALUES ('72', '1', '4', '0', 'Tienda', 'banner superior', '28', '1111', '44', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/4/20080507klpgeogmx_7_Ees_SCO.png');
INSERT INTO `notificacion_pagos` VALUES ('73', '2', '0', '73', 'Publicidad', 'Sugerencias', '28', '1212', '2', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/73/naranja3.jpg');
INSERT INTO `notificacion_pagos` VALUES ('74', '2', '0', '73', 'Publicidad', 'Banner Superior', '28', '121323', '2', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/73/20080507klpgeogmx_7_Ees_SCO.png');
INSERT INTO `notificacion_pagos` VALUES ('75', '2', '0', '73', 'Publicidad', 'Banner Superior', '28', '11', '1', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/73/20080507klpgeogmx_7_Ees_SCO.png');
INSERT INTO `notificacion_pagos` VALUES ('76', '2', '0', '73', 'Publicidad', 'Banner Lateral', '28', '111', '1', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/73/20080507klpgeogmx_7_Ees_SCO.png');
INSERT INTO `notificacion_pagos` VALUES ('77', '2', '0', '73', 'Publicidad', 'Banner Lateral', '28', '11', '2', '10/04/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/73/20080507klpgeogmx_7_Ees_SCO.png');
INSERT INTO `notificacion_pagos` VALUES ('78', '2', '0', '72', 'Publicidad', 'Sugerencias', '21', '8347584', '1', '10/01/2013', 'Scotiabank', '3476587hs', '8497389.00', 'Voucher_de_pagos/72/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('79', '1', '5', '0', 'Publicidad', 'destacados', '7', '1515', '1515', '10/15/2013', 'Scotiabank', '1515', '1515.00', 'Voucher_de_pagos/5/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('80', '1', '5', '0', 'Publicidad', 'destacados', '7', '12', '12', '10/01/2013', 'Scotiabank', '12', '12.00', 'Voucher_de_pagos/5/Dreamweaver CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('81', '2', '0', '75', 'Publicidad', 'Sugerencias', '14', '4567', '1', '10/18/2013', 'Scotiabank', 'e-perfect', '1340.00', 'Voucher_de_pagos/75/a1.jpg');
INSERT INTO `notificacion_pagos` VALUES ('82', '1', '4', '0', 'Publicidad', 'destacados', '21', '2345678', '46', '09/26/2013', 'Scotiabank', 'e-perfect', '320.00', 'Voucher_de_pagos/4/background-beneficios-registrarse-particular.gif');
INSERT INTO `notificacion_pagos` VALUES ('83', '1', '4', '0', 'Publicidad', 'destacados', '28', '987345', '47', '06/19/2014', 'Scotiabank', 'e-perfect', '210.00', 'Voucher_de_pagos/4/background-beneficios-registrase-empresa-.gif');
INSERT INTO `notificacion_pagos` VALUES ('84', '1', '4', '0', 'Publicidad', 'destacados', '14', '7628', '49', '10/31/2013', 'Scotiabank', 'ohid', '145.00', 'Voucher_de_pagos/4/1234258_526103880801456_598994316_n.jpg');
INSERT INTO `notificacion_pagos` VALUES ('85', '1', '1', '0', 'Publicidad', 'banner superior', '14', '98987', '8', '10/16/2013', 'Scotiabank', '4', '180.00', 'Voucher_de_pagos/1/arb4.jpg');
INSERT INTO `notificacion_pagos` VALUES ('86', '1', '6', '0', 'Publicidad', 'destacados', '7', '1222', '16', '10/01/2013', 'Scotiabank', '123', '678.00', 'Voucher_de_pagos/6/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('87', '1', '6', '0', 'Publicidad', 'ofertas del dia', '7', '12', '17', '10/02/2013', 'Scotiabank', '123', '78.00', 'Voucher_de_pagos/6/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('88', '1', '6', '0', 'Publicidad', 'ofertas del dia', '7', '121', '18', '10/01/2013', 'Scotiabank', '1234', '0.00', 'Voucher_de_pagos/6/aang1.jpg');
INSERT INTO `notificacion_pagos` VALUES ('89', '1', '6', '0', 'Publicidad', 'destacados', '7', '1234', '19', '10/02/2013', 'Scotiabank', '1234', '1234.00', 'Voucher_de_pagos/6/645659-aang__1_.jpg');
INSERT INTO `notificacion_pagos` VALUES ('90', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '1234', '4', '10/01/2013', 'Scotiabank', '12', '123.00', 'Voucher_de_pagos/71/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('91', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '1234', '10', '10/01/2013', 'Scotiabank', '123', '123.00', 'Voucher_de_pagos/71/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('92', '1', '4', '0', 'Publicidad', 'ofertas del dia', '21', '889', '11', '10/01/2013', 'Scotiabank', '00', '244.00', 'Voucher_de_pagos/4/a2.jpg');
INSERT INTO `notificacion_pagos` VALUES ('93', '1', '3', '0', 'Publicidad', 'destacados', '7', '1234', '10', '10/01/2013', 'Scotiabank', '1234', '12345.00', 'Voucher_de_pagos/3/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('94', '1', '3', '0', 'Publicidad', 'ofertas del dia', '7', '1234', '29', '10/01/2013', 'Scotiabank', '134', '13.00', 'Voucher_de_pagos/3/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('95', '1', '3', '0', 'Publicidad', 'ofertas del dia', '7', '12345', '34', '10/02/2013', 'Scotiabank', '123456', '123.00', 'Voucher_de_pagos/3/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('96', '1', '5', '0', 'Publicidad', 'destacados', '7', '1234', '15', '10/01/2013', 'Scotiabank', 'syudty', '79.00', 'Voucher_de_pagos/5/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('97', '1', '5', '0', 'Publicidad', 'destacados', '7', '12334', '21', '10/03/2013', 'Scotiabank', '12345', '81.00', 'Voucher_de_pagos/5/Avatar Aang.jpg');
INSERT INTO `notificacion_pagos` VALUES ('98', '1', '5', '0', 'Publicidad', 'ofertas del dia', '7', '12345', '27', '10/04/2013', 'Scotiabank', 'eperfect', '90.00', 'Voucher_de_pagos/5/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('99', '1', '5', '0', 'Publicidad', 'ofertas del dia', '7', '12345', '36', '10/02/2013', 'Scotiabank', '1234', '10000.00', 'Voucher_de_pagos/5/645659-aang__1_.jpg');
INSERT INTO `notificacion_pagos` VALUES ('100', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '134', '4', '10/02/2013', 'Scotiabank', '14', '55.00', 'Voucher_de_pagos/71/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('101', '2', '0', '72', 'Publicidad', 'Banner Superior', '7', '123', '123', '10/15/2013', 'Scotiabank', '123', '123.00', 'Voucher_de_pagos/72/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('102', '2', '0', '72', 'Publicidad', 'Sugerencias', '14', '123', '123', '10/15/2013', 'Scotiabank', '123', '123.00', 'Voucher_de_pagos/72/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('103', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '1234', '4', '10/02/2013', 'Scotiabank', 'rgtcyh', '66.00', 'Voucher_de_pagos/71/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('104', '2', '0', '72', 'Publicidad', 'Sugerencias', '21', '123', '123', '10/15/2013', 'Scotiabank', '123', '123.00', 'Voucher_de_pagos/72/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('105', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '12345', '10', '10/01/2013', 'Scotiabank', 'b.kj', '123.00', 'Voucher_de_pagos/71/Avatar Aang.jpg');
INSERT INTO `notificacion_pagos` VALUES ('106', '2', '0', '71', 'Publicidad', 'Sugerencias', '7', '12345', '10', '10/03/2013', 'Scotiabank', 'eperfetc', '23.00', 'Voucher_de_pagos/71/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('107', '1', '4', '0', 'Publicidad', 'banner superior', '28', '234', '9', '10/18/2013', 'Scotiabank', '00', '234.00', 'Voucher_de_pagos/4/5.png');
INSERT INTO `notificacion_pagos` VALUES ('108', '1', '3', '0', 'Publicidad', 'destacados', '14', '234', '34', '10/01/2013', 'Scotiabank', '345654', '444.00', 'Voucher_de_pagos/3/a1.jpg');
INSERT INTO `notificacion_pagos` VALUES ('109', '1', '15', '0', 'Tienda', 'Master', '12-Meses', '123', '15', '2013/10/15', 'scot', 'tlane', '0.00', 'Voucher_de_pagos/8/03 _Medium_.jpg');
INSERT INTO `notificacion_pagos` VALUES ('110', '1', '5', '0', 'Publicidad', 'destacados', '14', '123', '123', '10/16/2013', 'Scotiabank', '123', '123.00', 'Voucher_de_pagos/5/After Effects CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('111', '1', '5', '0', 'Publicidad', 'ofertas del dia', '7', '321', '321', '10/16/2013', 'Scotiabank', '321', '321.00', 'Voucher_de_pagos/5/Audition CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('112', '1', '5', '0', 'Tienda', 'Micro', '30', '444', '444', '10/16/2013', 'Scotiabank', '444', '444.00', 'Voucher_de_pagos/5/Photoshop CS6.png');
INSERT INTO `notificacion_pagos` VALUES ('113', '1', '4', '0', 'Publicidad', 'destacados', '7', '12', '13', '10/02/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/4/goku.jpg');
INSERT INTO `notificacion_pagos` VALUES ('114', '1', '4', '0', 'Publicidad', 'ofertas del dia', '7', '11', '14', '10/01/2013', 'Scotiabank', 'eperfect', '0.00', 'Voucher_de_pagos/4/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('115', '1', '4', '0', 'Tienda', 'Pyme', '360', '123', '4', '10/22/2013', 'Scotiabank', 'eperfect', '5000.00', 'Voucher_de_pagos/4/6-dibujos-infantiles-mariposas-g.jpg');
INSERT INTO `notificacion_pagos` VALUES ('116', '1', '19', '0', 'Tienda', 'Negocio', '180', '123', '19', '11/07/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/19/LOGO COSMETICO.png');
INSERT INTO `notificacion_pagos` VALUES ('117', '1', '19', '0', 'Publicidad', 'Banner Lateral', '28', '123', '57', '11/13/2013', 'Scotiabank', '123', '0.00', 'Voucher_de_pagos/19/flores (1).png');
INSERT INTO `notificacion_pagos` VALUES ('118', '1', '19', '0', 'Publicidad', 'Banner Lateral', '28', '1212', '61', '11/13/2013', 'Scotiabank', 'e-perfect', '0.00', 'Voucher_de_pagos/19/flores.png');
INSERT INTO `notificacion_pagos` VALUES ('119', '2', '0', '80', 'Publicidad', 'Banner Superior', '21', '2147483647', '25', '11/15/2013', 'Scotiabank', '98', '500.00', 'Voucher_de_pagos/80/LOGO COSMETIQAL NUTRITIUM.png');
INSERT INTO `notificacion_pagos` VALUES ('120', '1', '27', '0', 'Tienda', 'Micro', '90', '123', '27', '12/13/2013', 'Scotiabank', 'E-Per3M', '0.00', 'Voucher_de_pagos/27/logo de fenix.jpg');
INSERT INTO `notificacion_pagos` VALUES ('121', '1', '28', '0', 'Tienda', 'Negocio', '74', '123', '28', '12/16/2013', 'Scotiabank', '123', '0.00', 'Voucher_de_pagos/4/b-perfect.jpg');
INSERT INTO `notificacion_pagos` VALUES ('122', '1', '31', '0', 'Tienda', 'Master', '360', '123', '31', '12/17/2013', 'Scotiabank', 'promoA_172013', '0.00', 'Voucher_de_pagos/31/ciea.jpg');
INSERT INTO `notificacion_pagos` VALUES ('123', '1', '31', '0', 'Publicidad', 'banner superior', '28', '123', '77', '12/19/2013', 'Scotiabank', 'promoA_172013', '0.00', 'Voucher_de_pagos/31/ciea.jpg');
INSERT INTO `notificacion_pagos` VALUES ('124', '1', '26', '0', 'Tienda', 'Negocio', '90', '123', '26', '12/19/2013', 'Scotiabank', 'Promo-Eper2013', '0.00', 'Voucher_de_pagos/26/antimony.png');
INSERT INTO `notificacion_pagos` VALUES ('125', '2', '0', '88', 'Publicidad', 'Banner Superior', '7', '123', '27', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('126', '2', '0', '88', 'Publicidad', 'Banner Superior', '7', '123', '28', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('127', '2', '0', '88', 'Publicidad', 'Banner Superior', '7', '123', '29', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('128', '2', '0', '88', 'Publicidad', 'Sugerencias', '7', '123', '27', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('129', '2', '0', '87', 'Publicidad', 'Banner Superior', '28', '123', '30', '01/16/2014', 'Scotiabank', 'promo_eperfect1', '0.00', 'Voucher_de_pagos/87/neubox_comerminas 001.jpg');
INSERT INTO `notificacion_pagos` VALUES ('130', '2', '0', '87', 'Publicidad', 'Banner Lateral', '28', '123', '30', '01/16/2014', 'Scotiabank', 'promo_eperfect1', '0.00', 'Voucher_de_pagos/87/neubox_comerminas 001.jpg');
INSERT INTO `notificacion_pagos` VALUES ('131', '2', '0', '87', 'Publicidad', 'Sugerencias', '28', '123', '30', '01/16/2014', 'Scotiabank', 'promo_eperfect1', '0.00', 'Voucher_de_pagos/87/neubox_comerminas 001.jpg');
INSERT INTO `notificacion_pagos` VALUES ('132', '2', '0', '88', 'Publicidad', 'Banner Superior', '14', '123', '29', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('133', '2', '0', '88', 'Publicidad', 'Banner Lateral', '14', '123', '29', '01/16/2014', 'Scotiabank', 'prome-perfect', '0.00', 'Voucher_de_pagos/88/images.jpg');
INSERT INTO `notificacion_pagos` VALUES ('134', '1', '37', '0', 'Tienda', 'Pyme', '360', '123', '37', '01/23/2014', 'Scotiabank', 'promo_eper2014', '0.00', 'Voucher_de_pagos/37/Lurica_logo.jpg');
INSERT INTO `notificacion_pagos` VALUES ('135', '1', '42', '0', 'Tienda', 'Micro', '360', '123', '42', '01/31/2014', 'Scotiabank', 'eper_promo', '0.00', 'Voucher_de_pagos/42/vienaturelle_logo2.jpg');
INSERT INTO `notificacion_pagos` VALUES ('136', '1', '43', '0', 'Tienda', 'Pyme', '90', '2147483647', '43', '02/04/2014', 'Scotiabank', '25', '890.00', 'Voucher_de_pagos/43/perfume Hombre.jpg');
INSERT INTO `notificacion_pagos` VALUES ('137', '1', '56', '0', 'Tienda', 'Plus', '360', '123', '56', '03/03/2014', 'Scotiabank', 'promo-eperfect', '0.00', 'Voucher_de_pagos/56/HID.png');
INSERT INTO `notificacion_pagos` VALUES ('138', '1', '55', '0', 'Tienda', 'Pyme', '360', '123', '55', '03/03/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('139', '1', '55', '0', 'Publicidad', 'destacados', '28', '123', '147', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('140', '1', '55', '0', 'Publicidad', 'destacados', '28', '123', '152', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('141', '1', '55', '0', 'Publicidad', 'destacados', '28', '112', '156', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('142', '1', '55', '0', 'Publicidad', 'destacados', '28', '123', '128', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('143', '1', '55', '0', 'Publicidad', 'ofertas del dia', '28', '123', '150', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('144', '1', '55', '0', 'Publicidad', 'ofertas del dia', '28', '123', '130', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('145', '1', '55', '0', 'Publicidad', 'banner lateral', '28', '123', '131', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('146', '1', '55', '0', 'Publicidad', 'banner superior', '28', '123', '141', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('147', '1', '55', '0', 'Publicidad', 'ofertas del dia', '28', '123', '152', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('148', '1', '55', '0', 'Publicidad', 'ofertas del dia', '28', '123', '156', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('149', '1', '55', '0', 'Publicidad', 'destacados', '28', '123', '129', '03/04/2014', 'Scotiabank', 'promo-eperf', '0.00', 'Voucher_de_pagos/55/cuore.png');
INSERT INTO `notificacion_pagos` VALUES ('150', '1', '4', '0', 'Tienda', 'Micro', '90', '4444', '4', '05/30/2014', 'Scotiabank', '1236', '10.00', 'Voucher_de_pagos/4/seguimiento.jpg');
INSERT INTO `notificacion_pagos` VALUES ('151', '1', '4', '0', 'Tienda', 'Master', '365', '0', '0', '', '-1', '', '0.00', 'Voucher_de_pagos/4/');
INSERT INTO `notificacion_pagos` VALUES ('152', '1', '4', '0', 'Tienda', 'Pyme', '180', '0', '0', '', '-1', '', '0.00', 'Voucher_de_pagos/4/');
INSERT INTO `notificacion_pagos` VALUES ('153', '1', '4', '0', 'Tienda', 'Micro', '90', '0', '0', '', '-1', '', '0.00', 'Voucher_de_pagos/4/');
INSERT INTO `notificacion_pagos` VALUES ('154', '1', '4', '0', 'Tienda', 'Micro', '180', '454', '121', '05/30/2014', 'Scotiabank', '121', '12.00', 'Voucher_de_pagos/4/');
INSERT INTO `notificacion_pagos` VALUES ('155', '1', '101', '0', 'Tienda', 'Negocio', '365', '10', '101', '05/31/2014', 'Scotiabank', 'centro', '3700.00', 'Voucher_de_pagos/101/ufoalienegypt2.jpg');
INSERT INTO `notificacion_pagos` VALUES ('156', '1', '102', '0', 'Tienda', 'Negocio', '365', '123', '102', '06/03/2014', 'Scotiabank', '123', '4292.00', 'Voucher_de_pagos/102/Remedios-naturales-para-combatir-la-caida-del-cabello-1.jpg');
INSERT INTO `notificacion_pagos` VALUES ('157', '1', '74', '0', 'Tienda', 'Negocio', '180', '123', '74', '07/10/2014', 'Bancomer', '123', '1900.00', 'Voucher_de_pagos/74/bank.jpg');
INSERT INTO `notificacion_pagos` VALUES ('158', '1', '4', '0', 'Tienda', '', '', '444', '0', '11/02/2014', 'Bancomer', '45455', '888.00', 'Voucher_de_pagos/4/6701.png');

-- ----------------------------
-- Table structure for `ofertas_dia`
-- ----------------------------
DROP TABLE IF EXISTS `ofertas_dia`;
CREATE TABLE `ofertas_dia` (
  `id_ofertas_dia` int(2) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(6) NOT NULL,
  `folio` int(8) NOT NULL,
  PRIMARY KEY (`id_ofertas_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ofertas_dia
-- ----------------------------
INSERT INTO `ofertas_dia` VALUES ('1', '37', '121');
INSERT INTO `ofertas_dia` VALUES ('2', '37', '119');
INSERT INTO `ofertas_dia` VALUES ('3', '55', '126');
INSERT INTO `ofertas_dia` VALUES ('4', '55', '131');
INSERT INTO `ofertas_dia` VALUES ('5', '155', '127');
INSERT INTO `ofertas_dia` VALUES ('6', '55', '141');
INSERT INTO `ofertas_dia` VALUES ('7', '42', '102');
INSERT INTO `ofertas_dia` VALUES ('8', '42', '100');
INSERT INTO `ofertas_dia` VALUES ('9', '42', '105');
INSERT INTO `ofertas_dia` VALUES ('10', '42', '104');
INSERT INTO `ofertas_dia` VALUES ('11', '56', '220');
INSERT INTO `ofertas_dia` VALUES ('12', '81', '270');
INSERT INTO `ofertas_dia` VALUES ('13', '81', '269');
INSERT INTO `ofertas_dia` VALUES ('14', '81', '273');
INSERT INTO `ofertas_dia` VALUES ('15', '82', '275');
INSERT INTO `ofertas_dia` VALUES ('16', '27', '85');
INSERT INTO `ofertas_dia` VALUES ('17', '25', '86');
INSERT INTO `ofertas_dia` VALUES ('18', '27', '71');
INSERT INTO `ofertas_dia` VALUES ('19', '27', '66');
INSERT INTO `ofertas_dia` VALUES ('20', '27', '83');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(4) NOT NULL,
  `nombre_pag` char(30) NOT NULL,
  `visitas` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'falconylagunes', '278');
INSERT INTO `pages` VALUES ('2', 'Silva-Abogados', '155');

-- ----------------------------
-- Table structure for `pedidos`
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `id_usuario` int(6) NOT NULL,
  `id_empresa` int(6) NOT NULL,
  `folio_producto` int(6) NOT NULL,
  `nombre_producto` varchar(100) CHARACTER SET utf8 NOT NULL,
  `codigo_producto` varchar(12) CHARACTER SET utf8 NOT NULL,
  `cantidad` int(4) NOT NULL DEFAULT '1',
  `precio` double NOT NULL,
  `id_compra` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `total_pagar_general` double NOT NULL,
  `status` int(2) NOT NULL,
  `subtot_unit` double NOT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 NOT NULL,
  `tipo_usuario` char(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES ('73', '19', '61', 'KIT CAPILAR', 'MU04', '2', '300', '55555', '0000-00-00 00:00:00', '0', '0', '300', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '65', '264', 'Almohada Terapeutica-Cojín Mouse de semillas naturales y hierbas.Color Azul.', '442569', '1', '75', '0', '0000-00-00 00:00:00', '0', '0', '75', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '19', '57', 'CREMA HUMECTANTE NATURAL', 'MU01', '1', '200', '0', '0000-00-00 00:00:00', '0', '0', '200', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '19', '56', 'CREMA FACIAL', 'MU02', '1', '300', '0', '0000-00-00 00:00:00', '0', '0', '300', '', 'particular');
INSERT INTO `pedidos` VALUES ('73', '55', '150', 'Cojín Monstro almohadas peluches regalos', 'CMON-11', '1', '240', '0', '0000-00-00 00:00:00', '0', '0', '240', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '83', '331', 'Juego de Azúcar y Café decorado Sol cerámica de alta temperatura.', 'JUE0010', '1', '260', '0', '0000-00-00 00:00:00', '0', '0', '260', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '83', '342', 'Juego Tequilero de Flores elaborado en cerámica de alta temperatura. ', 'JUTE30', '1', '1105', '0', '0000-00-00 00:00:00', '0', '0', '1105', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '83', '342', 'Juego Tequilero de Flores elaborado en cerámica de alta temperatura. ', 'JUTE30', '1', '1105', '0', '0000-00-00 00:00:00', '0', '0', '1105', '$', 'particular');
INSERT INTO `pedidos` VALUES ('73', '83', '322', 'Florero Mediano de cerámica de alta temperatura decorado a mano diseño ornamenta', 'FM0003', '1', '234', '0', '0000-00-00 00:00:00', '0', '0', '234', '$', 'particular');

-- ----------------------------
-- Table structure for `personas_mvc`
-- ----------------------------
DROP TABLE IF EXISTS `personas_mvc`;
CREATE TABLE `personas_mvc` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL,
  `estatura` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personas_mvc
-- ----------------------------
INSERT INTO `personas_mvc` VALUES ('1', 'bruno', '25', '1.65');
INSERT INTO `personas_mvc` VALUES ('2', 'alba', '30', '1.6');

-- ----------------------------
-- Table structure for `peticiones`
-- ----------------------------
DROP TABLE IF EXISTS `peticiones`;
CREATE TABLE `peticiones` (
  `id_peticion` int(4) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` int(1) NOT NULL,
  `id_empresa` int(8) NOT NULL,
  `id` int(8) NOT NULL,
  `folio` int(8) NOT NULL,
  `url_foto1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tipo_publicidad` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tiempo` int(10) NOT NULL,
  `subtotal` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL,
  `fecha_peticion` date NOT NULL,
  `fecha_autorizacion` datetime NOT NULL,
  `fecha_caducidad` datetime NOT NULL,
  `tiempo_restante` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_peticion`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peticiones
-- ----------------------------
INSERT INTO `peticiones` VALUES ('2', '0', '0', '73', '1', '../../ImagenesAnuncios/gabinocuadros@hotmail.com/11.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('10', '1', '6', '0', '35', '../../../ImagenesAnuncios/Body Natural/351.JPG', 'destacados', '28', '320', '0', '320', '2013-10-04', '2013-10-04 12:10:27', '2013-11-01 12:11:27', '2008-03-31 12:03:27', '3');
INSERT INTO `peticiones` VALUES ('11', '1', '6', '0', '37', '../../../ImagenesAnuncios/Body Natural/371.JPG', 'destacados', '28', '0', '0', '0', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `peticiones` VALUES ('12', '1', '6', '0', '18', '../../../ImagenesAnuncios/Body Natural/181.JPG', 'ofertas del dia', '28', '320', '0', '320', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3');
INSERT INTO `peticiones` VALUES ('14', '1', '5', '0', '27', '../../../ImagenesAnuncios/REGEN 7/271.JPG', 'destacados', '7', '80', '12.8', '92.8', '2013-10-04', '2013-10-04 11:10:31', '2013-10-11 11:10:31', '2008-03-31 11:03:31', '3');
INSERT INTO `peticiones` VALUES ('15', '1', '6', '0', '35', '../../../ImagenesAnuncios/Body Natural/351.JPG', 'destacados', '28', '320', '51.2', '371.2', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `peticiones` VALUES ('16', '1', '6', '0', '37', '../../../ImagenesAnuncios/Body Natural/371.JPG', 'destacados', '28', '320', '51.2', '371.2', '2013-10-04', '2013-10-04 12:10:49', '2013-11-01 12:11:49', '2008-03-31 12:03:49', '3');
INSERT INTO `peticiones` VALUES ('18', '1', '5', '0', '38', '../../../ImagenesAnuncios/REGEN 7/381.JPG', 'destacados', '14', '160', '0', '160', '2013-10-04', '2013-10-04 12:10:56', '2013-10-18 12:10:56', '2008-03-31 12:03:56', '3');
INSERT INTO `peticiones` VALUES ('19', '1', '3', '0', '10', '../../../ImagenesAnuncios/COSMETIQAL/101.png', 'destacados', '28', '320', '0', '320', '2013-10-04', '2013-10-04 12:10:56', '2013-11-01 12:11:56', '2008-03-31 12:03:56', '3');
INSERT INTO `peticiones` VALUES ('21', '2', '0', '73', '1', '../../ImagenesAnuncios/gabinocuadros@hotmail.com/11.jpg', 'sugerencias', '14', '160', '0', '160', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3');
INSERT INTO `peticiones` VALUES ('22', '2', '0', '73', '2', '../../ImagenesAnuncios/gabinocuadros@hotmail.com/21.jpg', 'sugerencias', '28', '320', '0', '320', '2013-10-04', '2013-10-21 15:10:29', '2013-11-18 14:11:29', '2008-04-17 15:04:29', '3');
INSERT INTO `peticiones` VALUES ('23', '1', '4', '0', '9', '../../../ImagenesAnuncios/B-Perfect/91.png', 'ofertas del dia', '28', '320', '0', '320', '2013-10-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3');
INSERT INTO `peticiones` VALUES ('24', '1', '5', '0', '41', '../../../ImagenesAnuncios/REGEN 7/411.JPG', 'ofertas del dia', '28', '160', '0', '160', '2013-10-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('25', '1', '5', '0', '42', '../../../ImagenesAnuncios/REGEN 7/421.JPG', 'ofertas del dia', '28', '320', '0', '320', '2013-10-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('26', '2', '0', '74', '5', '../../ImagenesAnuncios/joaobrags@hotmail.com/51.jpg', 'sugerencias', '21', '210', '0', '210', '2013-10-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('28', '2', '0', '74', '6', '../../ImagenesAnuncios/joaobrags@hotmail.com/61.jpg', 'sugerencias', '21', '210', '0', '210', '2013-10-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('29', '1', '9', '0', '45', '../../../ImagenesAnuncios/BICICLETAS VELOCCE/451.jpg', 'destacados', '21', '0', '0', '0', '2013-10-07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('30', '2', '0', '75', '8', '../../ImagenesAnuncios/Error, el temporal no existe', 'sugerencias', '14', '160', '0', '160', '2013-10-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('31', '1', '4', '0', '46', '../../../ImagenesAnuncios/B-Perfect/461.png', 'destacados', '28', '320', '0', '320', '2013-10-09', '2013-10-09 16:10:51', '2013-11-06 15:11:51', '2008-04-05 16:04:51', '3');
INSERT INTO `peticiones` VALUES ('32', '1', '4', '0', '47', '../../../ImagenesAnuncios/B-Perfect/471.png', 'destacados', '21', '0', '0', '0', '2013-10-09', '2013-10-09 16:10:00', '2013-10-30 16:10:00', '2008-04-05 16:04:00', '3');
INSERT INTO `peticiones` VALUES ('33', '1', '4', '0', '48', '../../../ImagenesAnuncios/B-Perfect/481.jpg', 'destacados', '14', '0', '0', '0', '2013-10-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('34', '1', '1', '0', '49', '../../../ImagenesAnuncios/CHARRAS/491.jpg', 'destacados', '14', '160', '0', '160', '2013-10-09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('36', '1', '6', '0', '17', '../../../ImagenesAnuncios/Body Natural/171.JPG', 'ofertas del dia', '28', '210', '0', '210', '2013-10-14', '2013-10-14 17:10:55', '2013-11-11 16:11:55', '2008-04-10 17:04:55', '3');
INSERT INTO `peticiones` VALUES ('37', '1', '6', '0', '16', '../../../ImagenesAnuncios/Body Natural/161.jpg', 'destacados', '7', '80', '0', '80', '2013-10-14', '2014-01-15 13:01:45', '2014-01-22 13:01:45', '2008-07-11 14:07:45', '3');
INSERT INTO `peticiones` VALUES ('38', '1', '6', '0', '17', '../../../ImagenesAnuncios/Body Natural/171.JPG', 'ofertas del dia', '7', '80', '0', '80', '2013-10-14', '2013-10-14 17:10:13', '2013-10-21 17:10:13', '2008-04-10 17:04:13', '3');
INSERT INTO `peticiones` VALUES ('39', '1', '6', '0', '18', '../../../ImagenesAnuncios/Body Natural/181.JPG', 'ofertas del dia', '7', '80', '0', '80', '2013-10-14', '2013-10-15 10:10:20', '2013-10-22 10:10:20', '2008-04-11 10:04:20', '3');
INSERT INTO `peticiones` VALUES ('40', '1', '6', '0', '19', '../../../ImagenesAnuncios/Body Natural/191.jpg', 'destacados', '7', '80', '0', '80', '2013-10-14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('41', '2', '0', '71', '4', '../../ImagenesAnuncios/llera1705@hotmail.com/41.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');
INSERT INTO `peticiones` VALUES ('42', '2', '0', '71', '10', '../../ImagenesAnuncios/llera1705@hotmail.com/101.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-14', '2013-10-24 12:10:15', '2013-10-31 12:10:15', '2008-04-20 12:04:15', '3');
INSERT INTO `peticiones` VALUES ('43', '2', '0', '71', '10', '../../ImagenesAnuncios/llera1705@hotmail.com/101.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('44', '2', '0', '71', '10', '../../ImagenesAnuncios/llera1705@hotmail.com/101.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('45', '1', '4', '0', '11', '../../../ImagenesAnuncios/B-Perfect/111.png', 'ofertas del dia', '21', '210', '0', '210', '2013-10-14', '2013-10-14 17:10:00', '2013-11-04 16:11:00', '2008-04-10 17:04:00', '3');
INSERT INTO `peticiones` VALUES ('46', '1', '3', '0', '29', '../../../ImagenesAnuncios/COSMETIQAL/291.jpg', 'ofertas del dia', '7', '80', '0', '80', '2013-10-15', '2013-10-21 16:10:57', '2013-10-28 16:10:57', '2008-04-17 16:04:57', '3');
INSERT INTO `peticiones` VALUES ('47', '1', '3', '0', '34', '../../../ImagenesAnuncios/COSMETIQAL/341.JPG', 'destacados', '7', '0', '0', '0', '2013-10-15', '2013-10-15 14:10:06', '2013-10-22 14:10:06', '2008-04-11 14:04:06', '3');
INSERT INTO `peticiones` VALUES ('48', '1', '3', '0', '34', '../../../ImagenesAnuncios/COSMETIQAL/341.JPG', 'destacados', '7', '0', '0', '0', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('49', '1', '3', '0', '10', '../../../ImagenesAnuncios/COSMETIQAL/101.png', 'ofertas del dia', '7', '80', '0', '80', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('50', '1', '5', '0', '36', '../../../ImagenesAnuncios/REGEN 7/361.JPG', 'ofertas del dia', '7', '80', '0', '80', '2013-10-15', '2013-10-15 10:10:33', '2013-10-22 10:10:33', '2008-04-11 10:04:33', '3');
INSERT INTO `peticiones` VALUES ('51', '2', '0', '71', '4', '../../ImagenesAnuncios/llera1705@hotmail.com/41.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('52', '2', '0', '72', '11', '../../ImagenesAnuncios/nsrasengan@hotmail.com/111.JPG', 'sugerencias', '14', '160', '0', '160', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('53', '2', '0', '71', '10', '../../ImagenesAnuncios/llera1705@hotmail.com/101.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('54', '2', '0', '71', '10', '../../ImagenesAnuncios/llera1705@hotmail.com/101.jpg', 'sugerencias', '7', '80', '0', '80', '2013-10-15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('55', '1', '4', '0', '13', '../../../ImagenesAnuncios/B-Perfect/131.png', 'destacados', '7', '80', '0', '80', '2013-10-21', '2013-10-21 16:10:00', '2013-10-28 16:10:00', '2008-04-17 16:04:00', '3');
INSERT INTO `peticiones` VALUES ('56', '1', '4', '0', '14', '../../../ImagenesAnuncios/B-Perfect/141.png', 'ofertas del dia', '7', '80', '0', '80', '2013-10-21', '2013-10-21 16:10:10', '2013-10-28 16:10:10', '2008-04-17 16:04:10', '3');
INSERT INTO `peticiones` VALUES ('57', '2', '0', '81', '26', '../../ImagenesAnuncios/eperfect@hotmail.com/261.jpg', 'sugerencias', '14', '160', '0', '160', '2013-11-20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('58', '2', '0', '88', '27', '../../ImagenesAnuncios/anaesthero@hotmail.com/271.jpg', 'sugerencias', '28', '320', '0', '320', '2014-01-16', '2014-01-16 11:01:26', '2014-02-13 11:02:26', '2008-07-12 12:07:26', '3');
INSERT INTO `peticiones` VALUES ('59', '2', '0', '87', '30', '../../ImagenesAnuncios/impressdigytal@hotmail.com/301.png', 'sugerencias', '28', '320', '0', '320', '2014-01-16', '2014-01-16 11:01:36', '2014-02-13 11:02:36', '2008-07-12 12:07:36', '3');
INSERT INTO `peticiones` VALUES ('60', '1', '31', '0', '77', '../../../ImagenesAnuncios/31/77.JPG', 'ofertas del dia', '28', '0', '0', '0', '2014-01-16', '2014-01-16 12:01:18', '2014-02-13 12:02:18', '2008-07-12 13:07:18', '3');
INSERT INTO `peticiones` VALUES ('61', '1', '28', '0', '82', '../../../ImagenesAnuncios/28/821.JPG', 'ofertas del dia', '28', '0', '0', '0', '2014-01-16', '2014-01-16 12:01:46', '2014-02-13 12:02:46', '2008-07-12 13:07:46', '3');
INSERT INTO `peticiones` VALUES ('62', '1', '41', '0', '96', '../../../ImagenesAnuncios/41/961.jpg', 'destacados', '7', '80', '12.8', '92.8', '2014-01-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('63', '1', '4', '0', '9', '../../../ImagenesAnuncios/4/91.png', 'ofertas del dia', '21', '210', '33.6', '243.6', '2014-01-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('65', '1', '55', '0', '147', '../../../ImagenesAnuncios/55/1471.png', 'destacados', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:49', '2014-04-01 14:04:49', '2008-08-28 14:08:49', '3');
INSERT INTO `peticiones` VALUES ('66', '1', '55', '0', '152', '../../../ImagenesAnuncios/55/1521.png', 'ofertas del dia', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:55', '2014-04-01 14:04:55', '2008-08-28 14:08:55', '3');
INSERT INTO `peticiones` VALUES ('67', '1', '55', '0', '156', '../../../ImagenesAnuncios/55/1561.jpg', 'ofertas del dia', '28', '0', '0', '0', '2014-03-04', '2014-03-04 13:03:05', '2014-04-01 14:04:05', '2008-08-28 14:08:05', '3');
INSERT INTO `peticiones` VALUES ('68', '1', '55', '0', '128', '../../../ImagenesAnuncios/55/1281.png', 'destacados', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:57', '2014-04-01 14:04:57', '2008-08-28 14:08:57', '3');
INSERT INTO `peticiones` VALUES ('77', '1', '55', '0', '129', '../../../ImagenesAnuncios/55/1291.jpg', 'destacados', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:18', '2014-04-01 14:04:18', '2008-08-28 14:08:18', '3');
INSERT INTO `peticiones` VALUES ('78', '1', '55', '0', '150', '../../../ImagenesAnuncios/55/1501.png', 'ofertas del dia', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:33', '2014-04-01 14:04:33', '2008-08-28 14:08:33', '3');
INSERT INTO `peticiones` VALUES ('79', '1', '55', '0', '130', '../../../ImagenesAnuncios/55/1301.png', 'ofertas del dia', '28', '320', '0', '320', '2014-03-04', '2014-03-04 13:03:17', '2014-04-01 14:04:17', '2008-08-28 14:08:17', '3');
INSERT INTO `peticiones` VALUES ('80', '1', '68', '0', '249', '../../../ImagenesAnuncios/68/2491.jpg', 'ofertas del dia', '7', '0', '0', '0', '2014-03-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('81', '1', '68', '0', '249', '../../../ImagenesAnuncios/68/2491.jpg', 'ofertas del dia', '7', '0', '0', '0', '2014-03-25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('82', '1', '68', '0', '249', '../../../ImagenesAnuncios/68/2491.jpg', 'destacados', '7', '80', '12.8', '92.8', '2014-03-25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('83', '1', '72', '0', '262', '../../../ImagenesAnuncios/72/2621.png', 'destacados', '28', '0', '0', '0', '2014-04-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('84', '1', '72', '0', '262', '../../../ImagenesAnuncios/72/2621.png', 'destacados', '28', '320', '0', '320', '2014-04-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');
INSERT INTO `peticiones` VALUES ('85', '1', '72', '0', '262', '../../../ImagenesAnuncios/72/2621.png', 'destacados', '28', '320', '0', '320', '2014-04-04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- ----------------------------
-- Table structure for `peticiones_tienda_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `peticiones_tienda_empresas`;
CREATE TABLE `peticiones_tienda_empresas` (
  `id_peticion` int(10) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(15) NOT NULL,
  `tiendas` varchar(15) CHARACTER SET latin1 NOT NULL,
  `meses` varchar(15) CHARACTER SET latin1 NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `dias` int(10) NOT NULL,
  `fecha_peticion` date NOT NULL,
  `autorizado` int(1) NOT NULL,
  PRIMARY KEY (`id_peticion`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peticiones_tienda_empresas
-- ----------------------------
INSERT INTO `peticiones_tienda_empresas` VALUES ('37', '45', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-12', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('38', '46', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-12', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('39', '46', 'Master', '3-Meses', '6000.00', '960.00', '6960.00', '90', '2013-09-12', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('40', '47', 'Master', '3-Meses', '6000.00', '960.00', '6960.00', '90', '2013-09-12', '1');
INSERT INTO `peticiones_tienda_empresas` VALUES ('41', '47', 'Pyme', '1-Mes', '1300.00', '208.00', '1508.00', '30', '2013-09-14', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('42', '48', 'Pyme', '1-Mes', '1300.00', '208.00', '1508.00', '30', '2013-09-14', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('43', '48', 'Micro', '3-Meses', '2550.00', '408.00', '2958.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('44', '49', 'Negocio', '1-Mes', '800.00', '128.00', '928.00', '30', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('45', '50', 'Micro', '3-Meses', '2550.00', '408.00', '2958.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('46', '51', 'Pyme', '6-Meses', '6000.00', '960.00', '6960.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('47', '52', 'Pyme', '12-Meses', '12000.00', '1920.00', '13920.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('48', '53', 'Plus', '9-Meses', '13500.00', '2160.00', '15660.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('49', '54', 'Pyme', '12-Meses', '12000.00', '1920.00', '13920.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('50', '54', '', '', '0.00', '0.00', '0.00', '0', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('51', '55', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('52', '56', 'Negocio', '9-Meses', '4500.00', '720.00', '5220.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('53', '57', 'Micro', '12-Meses', '9000.00', '1440.00', '10440.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('54', '57', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('55', '58', 'Micro', '3-Meses', '2550.00', '408.00', '2958.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('56', '59', 'Micro', '3-Meses', '2550.00', '408.00', '2958.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('57', '59', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('58', '60', 'Negocio', '6-Meses', '3000.00', '480.00', '3480.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('59', '61', 'Negocio', '6-Meses', '3000.00', '480.00', '3480.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('60', '61', 'Pyme', '6-Meses', '6000.00', '960.00', '6960.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('61', '62', 'Master', '9-Meses', '18000.00', '2880.00', '20880.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('62', '63', 'Pyme', '12-Meses', '12000.00', '1920.00', '13920.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('63', '64', 'Pyme', '6-Meses', '6000.00', '960.00', '6960.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('64', '65', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('65', '66', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('66', '66', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('67', '67', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('68', '68', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('69', '69', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('70', '69', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('71', '70', 'Master', '9-Meses', '18000.00', '2880.00', '20880.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('72', '71', '', '', '0.00', '0.00', '0.00', '0', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('73', '72', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('74', '72', 'Pyme', '9-Meses', '9000.00', '1440.00', '10440.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('75', '73', 'Master', '6-Meses', '12000.00', '1920.00', '13920.00', '180', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('76', '74', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('77', '75', 'Master', '9-Meses', '18000.00', '2880.00', '20880.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('78', '76', 'Master', '9-Meses', '18000.00', '2880.00', '20880.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('79', '76', 'Master', '12-Meses', '24000.00', '3840.00', '27840.00', '360', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('80', '77', 'Plus', '9-Meses', '13500.00', '2160.00', '15660.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('81', '78', 'Plus', '9-Meses', '13500.00', '2160.00', '15660.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('82', '79', 'Plus', '9-Meses', '13500.00', '2160.00', '15660.00', '270', '2013-09-18', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('83', '79', 'Negocio', '1-Mes', '800.00', '128.00', '928.00', '30', '2013-09-19', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('84', '80', '', '', '0.00', '0.00', '0.00', '0', '2013-09-19', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('85', '81', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-22', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('86', '82', 'Plus', '6-Meses', '9000.00', '1440.00', '10440.00', '180', '2013-09-22', '1');
INSERT INTO `peticiones_tienda_empresas` VALUES ('87', '82', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-24', '1');
INSERT INTO `peticiones_tienda_empresas` VALUES ('88', '83', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-24', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('89', '83', 'Plus', '3-Meses', '4500.00', '720.00', '5220.00', '90', '2013-09-24', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('90', '83', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('91', '83', 'Pyme', '9-Meses', '9000.00', '1440.00', '10440.00', '270', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('92', '84', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('93', '85', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('94', '86', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('95', '87', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('96', '88', 'Pyme', '3-Meses', '3000.00', '480.00', '3480.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('97', '88', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-25', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('98', '86', '', '', '0.00', '0.00', '0.00', '0', '2013-09-27', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('99', '87', 'Negocio', '9-Meses', '4500.00', '720.00', '5220.00', '270', '2013-09-30', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('100', '88', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-30', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('101', '89', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-30', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('102', '89', 'Negocio', '3-Meses', '1800.00', '240.00', '2040.00', '90', '2013-09-30', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('103', '89', 'Micro', '6-Meses', '4500.00', '720.00', '5220.00', '180', '2013-10-01', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('104', '0', '', '', '0.00', '960.00', '6960.00', '0', '2013-10-02', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('105', '1', '', '', '0.00', '480.00', '3480.00', '0', '2013-10-02', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('106', '2', '', '', '0.00', '480.00', '3480.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('107', '2', '', '', '0.00', '1440.00', '10440.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('108', '3', '', '', '0.00', '1440.00', '10440.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('109', '3', '', '', '0.00', '1920.00', '13920.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('110', '4', '', '', '0.00', '1920.00', '13920.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('111', '5', '', '', '0.00', '1920.00', '13920.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('112', '6', '', '', '0.00', '1920.00', '13920.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('113', '7', '', '', '0.00', '960.00', '6960.00', '0', '2013-10-03', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('114', '8', 'Master', '12-Meses', '0.00', '3840.00', '27840.00', '360', '2013-10-05', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('115', '9', 'Plus', '6-Meses', '0.00', '1440.00', '10440.00', '180', '2013-10-07', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('116', '10', 'Negocio', '1-Mes', '0.00', '128.00', '928.00', '30', '2013-10-08', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('117', '11', 'Plus', '1-Mes', '0.00', '240.00', '1740.00', '30', '2013-10-09', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('118', '12', 'Pyme', '12-Meses', '0.00', '1920.00', '13920.00', '360', '2013-10-09', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('119', '13', 'Pyme', '1-Mes', '0.00', '208.00', '1508.00', '30', '2013-10-09', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('120', '14', 'Negocio', '6-Meses', '0.00', '480.00', '3480.00', '180', '2013-10-15', '0');
INSERT INTO `peticiones_tienda_empresas` VALUES ('121', '15', 'Plus', '6-Meses', '0.00', '1440.00', '10440.00', '180', '2013-10-15', '0');

-- ----------------------------
-- Table structure for `planes_banner`
-- ----------------------------
DROP TABLE IF EXISTS `planes_banner`;
CREATE TABLE `planes_banner` (
  `id_plan` varchar(10) NOT NULL,
  `id_banner` varchar(20) NOT NULL,
  `tiempo` varchar(10) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id_plan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of planes_banner
-- ----------------------------
INSERT INTO `planes_banner` VALUES ('07-DE', 'destacados', '7-Días', '80');
INSERT INTO `planes_banner` VALUES ('14-DE', 'destacados', '14-Días', '160');
INSERT INTO `planes_banner` VALUES ('21-DE', 'destacados', '21-Días', '210');
INSERT INTO `planes_banner` VALUES ('28--DE', 'destacados', '28-Días', '320');
INSERT INTO `planes_banner` VALUES ('07-OD', 'ofertas del dia', '7-Días', '80');
INSERT INTO `planes_banner` VALUES ('14-OD', 'ofertas del dia', '14-Días', '160');
INSERT INTO `planes_banner` VALUES ('21-OD', 'ofertas del dia', '21-Días', '210');
INSERT INTO `planes_banner` VALUES ('28-OD', 'ofertas del dia', '28-Días', '320');
INSERT INTO `planes_banner` VALUES ('07-BS', 'banner superior', '7-Días', '150');
INSERT INTO `planes_banner` VALUES ('14-BS', 'banner superior', '14-Días', '300');
INSERT INTO `planes_banner` VALUES ('21-BS', 'banner superior', '21-Días', '450');
INSERT INTO `planes_banner` VALUES ('28-BS', 'banner superior', '28-Días', '600');
INSERT INTO `planes_banner` VALUES ('07-BL', 'banner lateral', '7-Días', '130');
INSERT INTO `planes_banner` VALUES ('14-BL', 'banner lateral', '14-Días', '260');
INSERT INTO `planes_banner` VALUES ('21-BL', 'banner lateral', '21-Días', '390');
INSERT INTO `planes_banner` VALUES ('28-BL', 'banner lateral', '28-Días', '520');
INSERT INTO `planes_banner` VALUES ('07-SU', 'sugerencias', '7-Días', '80');
INSERT INTO `planes_banner` VALUES ('14-SU', 'sugerencias', '14-Días', '160');
INSERT INTO `planes_banner` VALUES ('21-SU', 'sugerencias', '21-Días', '210');
INSERT INTO `planes_banner` VALUES ('28-SU', 'sugerencias', '28-Días', '320');

-- ----------------------------
-- Table structure for `planes_tienda`
-- ----------------------------
DROP TABLE IF EXISTS `planes_tienda`;
CREATE TABLE `planes_tienda` (
  `id_plan` varchar(25) CHARACTER SET latin1 NOT NULL,
  `id_tiendas` varchar(15) CHARACTER SET latin1 NOT NULL,
  `tiendas` varchar(15) CHARACTER SET latin1 NOT NULL,
  `meses` varchar(15) CHARACTER SET latin1 NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `activacion` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `limite_anuncios` int(100) NOT NULL,
  `dias` int(10) NOT NULL,
  `url_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planes_tienda
-- ----------------------------
INSERT INTO `planes_tienda` VALUES ('01-6M-NG', '01-NG', 'Negocio', '6', '2500.00', '500.00', '2500.00', '20', '180', '../Imagenes_e_perfect/img_shop/botonazul.png');
INSERT INTO `planes_tienda` VALUES ('01-12M-NG', '01-NG', 'Negocio', '12', '3700.00', '500.00', '3700.00', '20', '365', '../Imagenes_e_perfect/img_shop/botonazul.png');
INSERT INTO `planes_tienda` VALUES ('02-6M-MC', '02-MC', 'Micro', '6', '4000.00', '0.00', '4000.00', '50', '180', '../Imagenes_e_perfect/img_shop/botonMorado.png');
INSERT INTO `planes_tienda` VALUES ('02-12M-MC', '02-MC', 'Micro', '12', '5900.00', '0.00', '5900.00', '50', '365', '../Imagenes_e_perfect/img_shop/botonMorado.png');
INSERT INTO `planes_tienda` VALUES ('03-6M-PYM', '03-PYM', 'Pyme', '6', '5000.00', '0.00', '5000.00', '100', '180', '../Imagenes_e_perfect/img_shop/botonVerde.png');
INSERT INTO `planes_tienda` VALUES ('03-12M-PYM', '03-PYM', 'Pyme', '12', '6900.00', '0.00', '6900.00', '100', '365', '../Imagenes_e_perfect/img_shop/botonVerde.png');
INSERT INTO `planes_tienda` VALUES ('04-6M-PLS', '04-PLS', 'Plus', '6', '6500.00', '0.00', '6500.00', '300', '180', '../Imagenes_e_perfect/img_shop/botonAmarillo.png');
INSERT INTO `planes_tienda` VALUES ('04-12M-PLS', '04-PLS', 'Plus', '12', '7900.00', '0.00', '7900.00', '300', '365', '../Imagenes_e_perfect/img_shop/botonAmarillo.png');
INSERT INTO `planes_tienda` VALUES ('05-6M-MSTR', '05-MSTR', 'Master', '6', '8000.00', '0.00', '8000.00', '5000', '180', '../Imagenes_e_perfect/img_shop/botonNaranja.png');
INSERT INTO `planes_tienda` VALUES ('05-12M-MSTR', '05-MSTR', 'Master', '12', '12900.00', '0.00', '12900.00', '5000', '365', '../Imagenes_e_perfect/img_shop/botonNaranja.png');

-- ----------------------------
-- Table structure for `portada`
-- ----------------------------
DROP TABLE IF EXISTS `portada`;
CREATE TABLE `portada` (
  `id_portada` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_portada`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of portada
-- ----------------------------
INSERT INTO `portada` VALUES ('3', '91', '91/91portada.jpg', '');
INSERT INTO `portada` VALUES ('4', '120', '120/120portada.jpg', '');
INSERT INTO `portada` VALUES ('5', '169', '169/169portada.png', '');

-- ----------------------------
-- Table structure for `pregunta`
-- ----------------------------
DROP TABLE IF EXISTS `pregunta`;
CREATE TABLE `pregunta` (
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pregunta
-- ----------------------------
INSERT INTO `pregunta` VALUES ('1', '¿SERVICIO DE ENTREGA DEL PRODUCTO?');
INSERT INTO `pregunta` VALUES ('2', '¿CONDICIONES DEL PRODUCTO?');
INSERT INTO `pregunta` VALUES ('3', '¿ATENCIÓN AL CLIENTE?');

-- ----------------------------
-- Table structure for `productos`
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `folio_anuncio` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `categoria` varchar(60) CHARACTER SET utf8 NOT NULL,
  `subcategoria1` varchar(60) CHARACTER SET utf8 NOT NULL,
  `subcategoria2` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_producto` varchar(80) CHARACTER SET utf8 NOT NULL,
  `fabricante` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `moneda` varchar(3) CHARACTER SET utf8 NOT NULL,
  `precio` double(9,2) NOT NULL,
  `cantidad` int(6) NOT NULL DEFAULT '1',
  `unidades` varchar(20) CHARACTER SET utf8 NOT NULL,
  `descripcion` varchar(3000) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` varchar(16) NOT NULL,
  `celular` varchar(17) NOT NULL,
  `autorizado` tinyint(1) NOT NULL DEFAULT '0',
  `visitas` int(6) NOT NULL DEFAULT '0',
  `estado` varchar(40) CHARACTER SET utf8 NOT NULL,
  `municipio_region` varchar(30) CHARACTER SET utf8 NOT NULL,
  `tipo` varchar(3) NOT NULL,
  `fecha_revisa` date NOT NULL,
  `fecha_publicacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES ('38', '73', 'Fiestas y eventos', 'Renta de sillas y mesas', '', 'ksnvjfb', 'mc c ', '$', '99.00', '9', 'jjj', '<html/>', '  -  ', '  -  ', '0', '0', 'Nayarit', 'Acaponeta', 'pa', '0000-00-00', '2015-01-29');
INSERT INTO `productos` VALUES ('39', '73', 'Animales y mascotas', 'Gatos', '', 'comida', 'jadh', '$', '9.00', '88', 'jscd', '<html/>', '  -  ', '  -  ', '0', '0', 'Michoac', 'Acuitzio', 'pa', '0000-00-00', '2015-01-29');

-- ----------------------------
-- Table structure for `productos_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `productos_empresas`;
CREATE TABLE `productos_empresas` (
  `folio_producto` int(8) NOT NULL,
  `id_empresa` int(8) NOT NULL,
  `categoria` varchar(80) NOT NULL,
  `subcategoria1` varchar(80) NOT NULL,
  `subcategoria2` varchar(80) DEFAULT NULL,
  `nombre_producto` varchar(80) NOT NULL,
  `fabricante` varchar(40) DEFAULT NULL,
  `precio` double(9,2) NOT NULL,
  `descripcion` varchar(5000) NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `estado` varchar(40) NOT NULL,
  `visitas` int(8) NOT NULL DEFAULT '0',
  `cantidad` int(6) NOT NULL,
  `unidades` varchar(30) NOT NULL,
  `autorizado` tinyint(1) NOT NULL DEFAULT '0',
  `codigo` varchar(20) NOT NULL,
  `moneda` varchar(3) NOT NULL,
  `precio_med_may` double(9,2) NOT NULL,
  `unidades_min` int(10) NOT NULL,
  `unidades_max` int(10) NOT NULL,
  `precio_mayoreo` double(9,2) NOT NULL,
  `unidades_masde` int(10) NOT NULL,
  `tipo` varchar(3) NOT NULL,
  PRIMARY KEY (`folio_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of productos_empresas
-- ----------------------------
INSERT INTO `productos_empresas` VALUES ('28', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Crema Humectante BABY', 'Body Natural', '63.00', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\">Excelente Crema para toda la família, hidrata, nutre, humecta, previene líneas de expresión, brindando protección a tu piel con una muy agradable fragancia a bébé.<br/><br/></font></td></tr></table>', '2013-10-03 00:00:00', 'Estado de México', '446', '1000', 'piezas', '1', 'BN-LIQBAB 240', '$', '48.00', '36', '96', '36.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('27', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Jabón', 'Regen7', '70.00', 'Este innovador tratamiento contiene:<br/>Sauco,Manzanilla,Sábila,Árnica,Romerillo,Aceite de Almendras, etc.<br/>', '2013-10-03 00:00:00', 'Estado de México', '5', '100', 'Piezas', '1', 'R7-J90', '$', '58.00', '40', '399', '45.00', '400', 'pe');
INSERT INTO `productos_empresas` VALUES ('26', '6', 'Salud y belleza', 'Cuidado del cabello', '', 'GEL para el Cabello', 'Body Natural', '38.00', '<p style=\"color: rgb(66, 66, 66); text-align: justify;\" class=\"\\&quot;MsoNormal\\&quot;\">Gel súper fijador Extra Firme, fija tu cabello con el peinado de tu mayor agrado todo el día y no deja residuos blancos. Frascos con 400grs. Tenemos  precios especiales pra mayoristas y distribuídores. Contactanos!!</p>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-GEL400', '$', '32.00', '36', '96', '26.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('25', '6', 'Salud y belleza', 'Cuidado del cabello', '', 'Shampoo Anticaspa', 'Body Natural', '47.00', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\"><p class=\"\\&quot;MsoNormal\\&quot;\">Excelente tratamiento para la caspa, la elimina y no permite que vuelva.Contenido 320ml. Tenemos precios especiales para revendedores y distribuídores. Contactanos!</p><p class=\"\\&quot;MsoNormal\\&quot;\"><br/></p><p class=\"\\&quot;MsoNormal\\&quot;\"><o:p></o:p></p><div><br/></div></font></td></tr></table>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-SHAANT320', '$', '39.00', '36', '96', '33.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('24', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Crema Líquida con Sávila para hidratar la piel de toda la familia', 'Body Natural', '62.00', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\">Exelente crema para toda la família, hidrata, nutre, humecta, previen, líneas de expresión, brindando protección a tu piel, 420 ml.<div>Buscamos distribuídores y/o vendededores para toda la República</div><div><br/></div></font></td></tr></table>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN LIQSAB 420 ML', '$', '44.00', '36', '96', '36.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('23', '6', 'Salud y belleza', 'Cuidado del cabello', '', ' SILISHINE con SEDA Abrillantador del Cabello ', 'Body Natural', '65.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">SILISHINE con SEDA, excelente para tener un cabello brilloso, sano, fuerte porque lo repara, alisa  da brillo, nutre y lo cuida con  con el cual podrás lucir un cabello radiante.  Antes de peinarse o después de la ducha desenreda el cabello dejándolo hermoso.</span>', '2013-10-03 00:00:00', 'Estado de México', '90', '1000', 'piezas', '1', 'BLSIL-200', '$', '58.00', '36', '96', '44.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('22', '6', 'Salud y belleza', 'Cuidado de la salud', '', 'CURA-DOL gel para dolores musculares', 'Body Natural', '72.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Con su fórmula especial es ideal para aliviar los síntomas de tos, resfriado, y también para golpes y dolores musculares ya que sus ingredientes son antiinflamatorios curativos y astringentes. Con su nueva presentación el GEL, pensando tambien en el cuidado de su ropa ya que no causa manchas.</span>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-POMGEL90', '$', '61.00', '36', '96', '50.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('21', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Shampoos', 'Regen7', '100.00', 'Este innovador tratamiento contiene:<br/>Sauco,Manzanilla,Sábila,Árnica,Romerillo,Aceite de Almendras, etc.<br/>', '2013-10-03 00:00:00', 'Estado de México', '11', '100', 'Piezas', '1', 'R7-S240', '$', '80.00', '40', '399', '55.00', '400', 'pe');
INSERT INTO `productos_empresas` VALUES ('20', '6', 'Salud y belleza', 'Cuidado de la salud', '', 'CURA-DOL para los dolores musculares', 'Body Natural', '70.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Con su fórmula especial es ideal para aliviar los síntomas de tos, resfriado, y también para golpes y dolores musculares ya que sus ingredientes son antiinflamatorios curativos y astringentes. Contamos ahora con su presentación tambien en gel 90gr.</span>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-POMCUR90', '$', '61.00', '36', '96', '49.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('19', '6', 'Salud y belleza', 'Cuidado de la piel', '', 'Crema Hidronutritiva con Protección Sloar', 'Body Natural', '69.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Crema Humectante con importante acción hidratante y nutritiva para la piel, con protector solar.</span><div style=\"color: rgb(66, 66, 66); text-align: justify;\">Entre sus ingredientes contiene: Cera de Abeja. contenio neto 240 ml.</div><div style=\"color: rgb(66, 66, 66); text-align: justify;\">Excelente para la reducción de los efectos negativos de los rayos del sol sobre la piel (envejecimiento prematuro, desnutrición, arrugas, etc)</div>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-SOLPRO 240ML', '', '58.00', '36', '96', '42.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('18', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Talco Desodorante', 'Body Natural', '42.00', '<p class=\\\"MsoNormal\\\">Ideal para toda la familia, contiene triclosan, es un activo\r\nque ayuda a eliminar las bacterias que causan el mal olor.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">Le proporciona una sensación de frescura todo el día por que\r\nabsorbe el sudor.<o:p></o:p></p>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-TAL-200', '$', '34.00', '36', '96', '28.50', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('17', '6', 'Salud y belleza', 'Cuidado de la piel', '', 'Crema Aclarante', 'Body Natural', '77.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Crema Aclarante que ayuda a la disminuíción de manchas en la piel, asi como en la reducción de marcas de cicatrices, excelente para la nutición y humectación de la piel, con protección solar. Contiene cera de Abeja</span><div style=\"color: rgb(66, 66, 66); text-align: justify;\">Para pedidos de Medio mayoreo y Mayoreo absorvemos gastos de envío a negociar.</div><div style=\"color: rgb(66, 66, 66); text-align: justify;\">Buscamos Distribuídores y/o Vendedores para toda la Republica.</div>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-SOL-ACL-240', '$', '63.00', '36', '96', '46.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('16', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Desodorantes, antitranspirantes sin aluminio', 'Body Natural', '42.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Nuestros desodorantes con suaves y agradables fragancias para caballero, brindan una gradable sensación de frescura y limpieza ayudando de forma eficaz a controlar el mal olor causado por la transpiración durante todo el día incluso en situaciones de estrés.</span><div><span style=\"color: rgb(66, 66, 66); text-align: justify;\">Protegiendote contra el sudor y el mal olor en todo momento.</span></div><div><span style=\"color: rgb(66, 66, 66); text-align: justify;\"><br/></span></div><div><span style=\"color: rgb(66, 66, 66); text-align: justify;\">Los comercializamos por pieza y también por mayoreo y medio mayoreo para negócio. Gastos de envío a tratar así como condiciones de pago. Contactanos!</span></div>', '2013-10-03 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-DESVIN60', '$', '34.00', '36', '96', '28.50', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('15', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Kit Familiar', 'Regen7', '300.00', '<div align=\\\"center\\\"><div align=\\\"left\\\">Contenido:<br/></div>\r\n<div align=\\\"left\\\"><ul><li>Contiene 2 jabones de 90grs y dos shampoos de 120ml.<br/>\r\n  </li></ul></div>\r\nTratamiento Capilar<br/></div><br/>Shampoo y jabón contra los problemas de cabello como: Caída,Debilidad,Seborrea,Calvicie Prematura.<br/>Logra todos los beneficios  con el uso constante, porque previene,regenera y fortalece desde la primera semana de uso.<br/><br/><br/>', '2013-10-03 00:00:00', 'Estado de México', '3', '100', 'Paquetes', '0', 'R7-K4', '$', '255.00', '40', '399', '210.00', '400', 'pe');
INSERT INTO `productos_empresas` VALUES ('451', '158', 'Animales y mascotas', 'Mascotas en adopción', '', 'prueba autoriza', 'h', '9.00', 'prueba para saber si queda autorizado', '2014-11-02 16:11:44', 'Estado de México', '16', '9', 'j', '1', '1', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('263', '65', 'Salud y belleza', 'Terapias alternativas', '', 'CojínTerapéutico-Lumbar de semillas naturales y hierbas.Color Amarillo Puntos.', 'Angela A&H', '230.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN LUMBAR </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 36cm x 21cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso:  Aproximadamente 700 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este Cojín o Almohadilla Herbal contiene una mezcla perfecta de semillas naturales y hierbas como manzanilla, hierbabuena, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Regálese con momento de Relax con esta práctica y desestresante almohada. Instrucciones: caliéntese en el microondas de 1 a 2 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><p style=\"text-align: center;\"><u>Si la usa con terapia de calor ayuda a eliminar:</u></p><p style=\"text-align: center;\">Dolores musculares, ciática, lumbago, dolores menstruales, artritis, artrosis, tortícolis, molestias lumbares, contracturas, tendinitis, stress, y en general todas aquellas dolencias que requieren de calor local y antinflamatorios.</p><p></p><p style=\"text-align: center;\"><u>Con su uso en frío nos ayuda:</u></p><p style=\"text-align: center;\">Con ojos inflamados, moretones, síndrome del Túnel Carpiano, fiebre, pies cansados, dolor de muelas, picaduras de insectos, stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"text-align: center;\"><font color=\"#424242\"> DESCUENTOS: </font></p><p style=\"text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"text-align: center;\"><font color=\"#424242\"> 10% de descuento a partir de 10 piezas.  </font></p><p style=\"text-align: center;\"><font color=\"#424242\"> 15% de descuento a partir de 20 piezas</font></p><p style=\"text-align: center;\"><font color=\"#424242\"> 20% de descuento a partir de 30 piezas. </font></p><p style=\"text-align: left;\"><font color=\"#424242\">*LOS COLORES PUEDEN VARIAR. </font></p></div>', '2014-04-29 00:04:36', 'Distrito Federal', '2', '3', 'Piezas', '1', '359782', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('43', '5', 'Salud y belleza', 'Otros', '', 'Empresa Elaboración de Productos de Para el Cabello', '0', '0.00', '<html/>', '2013-10-04 00:00:00', 'Estado de México', '1', '20', '0', '0', '0', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('35', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Aceite para Bebé', 'Body Natural', '60.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Aceite humectante para bebé, le humecta la piel, la hidrata y le ayuda a mantenerla nutrida, muy útil para limpieza del bebé y del rostro.</span>', '2013-10-04 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'ACE-BB270', '$', '55.00', '36', '96', '49.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('36', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Loción para el Cabello', 'REGEN 7', '80.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Esta Loción para el cabello\r\nforma parte de la familia de REGEN 7, la innovadora loción mantendrá un\r\nequilibrio natural en tu cabello, contiene: extractos naturales de sauco, sábila,\r\nmalvilla y sangregado, agua desmineralizada, agua de rosas y alcohol etílico.</span><o:p></o:p></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '100', 'piezas', '0', 'LOR7', '$', '65.00', '40', '600', '53.00', '601', 'pe');
INSERT INTO `productos_empresas` VALUES ('37', '6', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Crema Humectante Clásica', 'Body Natural', '56.00', '<p class=\"MsoNormal\">Excelente Crema para toda la familia, hidrata, nutre,\r\nhumecta, previene líneas de expresión, brindando protección de piel.<o:p></o:p></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '1000', 'piezas', '1', 'BN-LIQHUM-420', '$', '44.00', '36', '96', '38.00', '97', 'pe');
INSERT INTO `productos_empresas` VALUES ('38', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Crema para Cabello', 'REGEN 7', '90.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Si lo que buscas es cuidar,\r\nmodelar y proteger tu cabello te  recomendamos\r\nesta crema para peinar ya que aportará a tu cabello una mejor hidratación y ayudará\r\na prevenir el frizz. <o:p></o:p></span></p><p class=\\\"MsoNormal\\\">\r\n\r\n</p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Para todo tipo de cabello.<o:p></o:p></span></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '600', 'piezas', '0', 'RE-CC05', '$', '73.00', '40', '600', '60.00', '601', 'pe');
INSERT INTO `productos_empresas` VALUES ('39', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Gel para el Cabello', 'REGEN 7', '90.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">¿El gel es indispensable\r\npara tu peinado? ¿No logras manejar tu cabello sin utilizar este producto? Te\r\ntenemos buenas noticias. Ahora puedes adquirir nuestro nuevo producto, el Gel\r\npara el cabello hecho a base de Extractos Naturales de: Sauco, Manzanilla,\r\nSábila, Romerillo, Sangregado, Árnica y Malvilla.</span></p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Presentación de 125 ml. <o:p></o:p></span></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '600', 'pieza', '0', 'RE-GC05', '', '73.00', '40', '600', '60.00', '601', 'pe');
INSERT INTO `productos_empresas` VALUES ('40', '5', 'Salud y belleza', 'Cuidado de la piel', '', 'Crema Facial.', 'REGEN 7', '90.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">La nueva Crema Facial de\r\nREGEN 7, aporta beneficios a la piel de tu rostro como Humectación e\r\nHidratación .Creada para Piel todo tipo de piel (seca, mixta, grasa o sensible), Hecha a base de Extractos Naturales como: Sauco, Manzanilla, Sábila, Romerillo, Sangregado, Árnica y Malvilla.</span><o:p></o:p></p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\"><br/></span></p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Contenido de 125 gr.</span></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '600', 'pieza', '0', 'RE-CF05', '$', '73.00', '40', '600', '60.00', '601', 'pe');
INSERT INTO `productos_empresas` VALUES ('41', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Kit Golden Cuidado del Cabello', 'REGEN 7', '243.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\">Aprovecha nuestro Kit Golden,\r\nlo mejor en productos para el cuidado de tu cabello. Protege, Hidrata y da\r\nBrillo.<o:p></o:p></span></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '100', 'kit´s', '0', 'R7-KT01', '$', '190.00', '20', '40', '156.00', '41', 'pe');
INSERT INTO `productos_empresas` VALUES ('42', '5', 'Salud y belleza', 'Cuidado del cabello', '', 'Kit Silver Cuidado del Cabello', 'REGEN 7', '234.00', '<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(66, 66, 66); background-position: initial initial; background-repeat: initial initial;\\\">Aprovecha nuestro Kit\r\nSilver, Combinando 3 de nuestros productos para el cuidado del cabello. <o:p></o:p></span></p>\r\n\r\n<p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(66, 66, 66); background-position: initial initial; background-repeat: initial initial;\\\">Hidrata, Cuida y da Brillo\r\na tu cabello.</span><span style=\\\"font-size: 13.5pt; line-height: 115%; font-family: Arial, sans-serif; background-position: initial initial; background-repeat: initial initial;\\\"><o:p></o:p></span></p>', '2013-10-04 00:00:00', 'Estado de México', '1', '100', 'kit´s', '0', 'KT-S01', '$', '183.00', '20', '40', '150.00', '41', 'pe');
INSERT INTO `productos_empresas` VALUES ('65', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Jarrito fabricado de barro libre de plomo', 'Fénix Promociones', '34.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify; font-family: arial;\"><b>Jarrito fabricado de barro libre de plomo, capacidad 200 ml, medidas: 9.5 cm de alto x 8.5 de diámetro, color chocolate y barro natural.</b><br/></span><span style=\"color: rgb(66, 66, 66); text-align: justify;\">Este artículo puede ir <b>personalizado </b>con la imagen de su empresa con calcomanía vitrificable.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); text-align: justify; font-family: arial;\">Para conocer <b>precios de medio mayoreo y mayoreo</b> favor de contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); text-align: justify; font-family: arial;\"><b>Entrega:</b> precios consideran entrega en México DF, de requerir distribución o entrega en otro lado se cotizará por separado.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); text-align: justify; font-family: arial;\"><b>Tiempos de entrega:</b> varían de acuerdo a cantidades solicitadas.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" color=\"#424242\" face=\"Arial\"><div style=\"text-align: left;\"><span style=\"font-family: arial;\"><b>Forma de pago:</b> </span><span style=\"font-family: arial;\">contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com. </span></div></font>', '2013-12-13 12:12:33', 'Distrito Federal', '1', '20', 'piezas', '1', ' FNXART-32', '', '0.00', '2', '99', '0.00', '100', 'pe');
INSERT INTO `productos_empresas` VALUES ('66', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Tequilero fabricado de barro libre de plomo.', 'Fénix Promociones', '25.00', '<span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><b>Tequilero fabricado de barro libre de plomo, capacidad 2 oz, medidas: 9.5 cm de alto x 4.5 de diámetro,</b> </span><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><b>color chocolate y barro natural.</b><br/></span><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este artículo puede ir <b>personalizado </b>con la imagen de su empresa con calcomanía vitrificable.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para conocer <b>precios de medio mayoreo y mayoreo</b> favor de contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><b>Entrega:</b> precios consideran entrega en México DF, de requerir distribución o entrega en otro lado se cotizará por separado.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><b>Tiempos de entrega:</b> varían de acuerdo a cantidades solicitadas.</span><br style=\"color: rgb(66, 66, 66); text-align: justify; font-family: \'Times New Roman\';\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" face=\"Arial\" color=\"#424242\"><div style=\"text-align: left;\"><span style=\"font-family: arial;\"><b>Forma de pago:</b> </span><span style=\"font-family: arial;\">contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com. </span></div></font>', '2013-12-16 11:12:31', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-26', '', '0.00', '2', '99', '0.00', '100', 'pe');
INSERT INTO `productos_empresas` VALUES ('67', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Jarrito de feria fabricado de barro libre de plomo', 'Fénix Promociones', '36.00', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\"><span style=\"font-family: arial;\"><b>Jarrito de feria fabricado de barro libre de plomo, capacidad 600 ml, medidas: 13 cm de alto x 8.5 de diámetro, color chocolate y barro natural.</b><br/></span><span style=\"font-family: arial;\">Este artículo puede ir <b>personalizado </b>con la imagen de su empresa con calcomanía vitrificable.</span><br style=\"font-family: \'Times New Roman\';\"/><span style=\"font-family: arial;\">Para conocer <b>precios de medio mayoreo y mayoreo</b> favor de contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com.</span><br style=\"font-family: \'Times New Roman\';\"/><span style=\"font-family: arial;\"><b>Entrega:</b> precios consideran entrega en México DF, de requerir distribución o entrega en otro lado se cotizará por separado.</span><br style=\"font-family: \'Times New Roman\';\"/><span style=\"font-family: arial;\"><b>Tiempos de entrega:</b> varían de acuerdo a cantidades solicitadas.</span><br style=\"font-family: \'Times New Roman\';\"/><font color=\"#424242\" face=\"Arial\"><div style=\"text-align: left;\"><span style=\"font-family: arial;\"><b>Forma de pago:</b> </span><span style=\"font-family: arial;\">contactar vía e mail a promocionesfenix@hotmail.com o fenixcompras@gmail.com.</span></div></font></font></td></tr></table>', '2013-12-16 11:12:04', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-37', '$', '0.00', '2', '99', '0.00', '100', 'pe');
INSERT INTO `productos_empresas` VALUES ('68', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Tequilero con asa fabricado de barro libre de plom', 'Fénix Promociones', '36.00', 'Tequilero con asa fabricado de barro libre de plomo, cap. 3 oz.', '2013-12-16 11:12:54', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-29', '', '0.00', '2', '99', '0.00', '100', 'pe');
INSERT INTO `productos_empresas` VALUES ('69', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Cazuela fabricada de barro, cap. 1 litro', 'Fénix Promociones', '0.00', 'Cazuela fabricada de barro libre de plomo con capacidad de 1 litro, medidas: 15 cm de diámetro x 10 cm de alto.', '2013-12-16 11:12:50', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-40', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('70', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Hielera redonda de barro, cap. 1.5 litros', 'Fénix Promociones', '0.00', 'Hielera redonda fabricada de barro libre de plomo con capacidad de 1.5 litros', '2013-12-16 12:12:31', 'Distrito Federal', '1', '20', 'piezas', '1', ' FNXART-43', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('71', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', ' ', 'Hielera de barro, cap. 750 ml.', 'Fénix Promociones', '0.00', 'Hielera fabricada de barro libre de plomo con capacidad de 750 ml.', '2013-12-16 12:12:36', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-41', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('72', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Florero decorado de barro', 'Fénix Promociones', '0.00', 'Florero decorado fabricado de barro libre de plomo', '2013-12-16 12:12:51', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-55', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('73', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Jarra de barro, cap. 3 litros', 'Fénix Promociones', '0.00', '<span style=\"color: rgb(66, 66, 66); text-align: justify;\">Jarra fabricada de barro libre de plomo con capacidad de 3 litros.</span>', '2013-12-16 12:12:25', 'Distrito Federal', '31', '20', 'piezas', '1', ' FNXART-38', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('74', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Plato extendido de barro, medida: 28.5 cm', 'Fénix Promociones', '0.00', 'Plato extendido fabricado de barro libre de plomo, medida: 28.5 cm', '2013-12-16 13:12:43', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-49', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('75', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Plato extendido de barro, medida: 25 cm', 'Fénix Promociones', '0.00', 'Plato extendido fabricado de barro libre de plomo, medida: 25 cm', '2013-12-16 13:12:53', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNXART-48', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('78', '28', 'Fiestas y eventos', 'Otros', '', 'Vasos para eventos sociales.', 'Carretos', '35.00', '<font color=\"#424242\" face=\"Arial\">Vaso jaibolero para eventos sociales, grabado en sand-blast.<br/>Personalizado tomando en cuenta el tipo evento.<br/>Variedad de diseños.</font>', '2013-12-26 11:12:17', 'Estado de México', '1', '2147483647', 'lote', '1', 'V1', '', '0.00', '0', '0', '25.00', '50', 'pe');
INSERT INTO `productos_empresas` VALUES ('57', '19', 'Salud y belleza', 'Cuidado de la piel', '', 'CREMA HUMECTANTE NATURAL', 'MUSCH', '200.00', '<div>RESUMEN:</div><div>Crema con tendencia natural para toda la familia que proporciona una humectación  y favorece la nutrición y posibles presencias de infecciones cutaneas. Es recomendada para la piel Diabética y Tercera edad. Más del 96% de ingredientes naturales.</div><div><br/></div><div><br/></div><div>INGREDIENTES PRINCIPALES:</div><div>Manteca de Karité, Cera de Vegetal, Aceite de Rosa Mosqueta, Aceite de Árnica, Aceite de Tepezcohuite, Aceite del Árbol del Te, Aceite de Aguacate, Aceite de Nuez de Macadamia, Aceite de Sábila, Aceite de Uva, Aceite de Soya, Manteca de Cacao, Omega 3 y 6.</div><div><br/></div><div>TIPO DE PIEL:</div><div>Seca y Normal.</div><div><br/></div><div>PARA:</div><div>Cara y Cuerpo.</div><div><br/></div><div>PRESENTACIÓN:</div><div>100 gramos.</div><div><br/></div><div>APLICACIÓN SUGERIDA: </div><div>La cantidad necesaria dependiendo de la zona a aplicar puede usar de día y noche.</div><div> </div><div><br/></div><div>MODO DE USO: </div><div>Aplicar la cantidad necesaria sobre  cuerpo y cara, brindando suave masaje a la piel hasta que se absorba por completo. Se recomienda aplicar dos veces por día, dependiendo del grado de deshidratación y tipo de piel.</div><div><br/></div><div>ADVERTENCIA: </div><div>Evítese el contacto con los ojos, suspenda su uso si observa alguna reacción desfavorable, en caso de presentar ardor, es normal, debido a los activos naturales que contiene el producto y su tipo de piel. Este efecto es temporal y si persisten las molestias suspenda su aplicación, ya que su piel puede ser sensible a los ingredientes.</div><div><br/></div>', '2013-11-06 14:11:51', 'Estado de México', '1', '100', 'PIEZAS', '1', 'MU01', '$', '130.00', '12', '500', '100.00', '501', 'pe');
INSERT INTO `productos_empresas` VALUES ('56', '19', 'Salud y belleza', 'Cuidado de la piel', '', 'CREMA FACIAL', 'MUSCH', '300.00', '<div>RESUMEN:</div><div>Favorable en la renovación y aceleración celular de la piel. Permite mayor absorción de agentes humectantes y desacelera el envejecimiento prematuro de la piel. Tratamiento con efecto Botox, resultados visibles aparir de la 28 días.</div><div><br/></div><div>INGREDIENTES PRINCIPALES:</div><div>Silicio Orgánico, Péptido de Arroz, Hialuramina, Aceite de Rosa Mosqueta, Péptido de Veneno de Serpiente, Sero de Fosfolipidos y Suero de Aminoácido.</div><div><br/></div><div>TIPO DE PIEL:</div><div>Graso, Seca y Normal.</div><div><br/></div><div>PARA:</div><div>Cara.</div><div><br/></div><div>PRESENTACIÓN:</div><div>50 gramos.</div><div><br/></div><div>APLICACIÓN SUGERIDA: </div><div>Noche.</div><div><br/></div><div>MODO DE USO: </div><div>Aplicar la cantidad necesaria sobre la  cara previamente limpia, brindando suave masaje a la piel hasta que se absorba por completo. Se recomienda aplicar por las noches, y para mejores resultados, se sugiere usar dos veces al día, dependiendo del grado de deshidratación y tipo de piel.</div><div><br/></div><div>ADVERTENCIA: </div><div>Evítese el contacto con los ojos, suspenda su uso si observa alguna reacción desfavorable, en caso de presentar ardor o irritación, es normal, debido a los activos naturales que contiene el producto y su tipo de piel, este efecto es temporal. Si persiste las molestias suspenda su aplicación ya que su piel puede ser sensible a los ingredientes.</div><div><br/></div>', '2013-11-06 14:11:15', 'Estado de México', '177', '100', 'PIEZAS', '1', 'MU02', '', '200.00', '12', '500', '160.00', '501', 'pe');
INSERT INTO `productos_empresas` VALUES ('60', '19', 'Salud y belleza', 'Cuidado del cuerpo', '', 'GEL CORPORAL', 'MUSCH', '250.00', '<div>RESUMEN:</div><div>Trabaja de forma auxiliar con algún otro tratamiento referente a modelador del cuerpo. </div><div> </div><div>INGREDIENTES PRINCIPALES:</div><div>Extracto de Castaño de Indias, Extracto de Algas Marinas, Extracto de Hiedra, Extracto de Alcachofa, Extracto de Romero, Extracto de Centella Asiática, Extracto de Cola de Caballo, Extracto de Eucalipto, Extracto de Árnica, Extracto de Hamamelis, Extracto Tlanchalagua, Extracto Agracejo, Extracto Ajenjo, Extracto Genciana, Extracto Diente de León, Carnitina, Cafeína, Bromelina.</div><div><br/></div><div>TIPO DE PIEL:</div><div>Seca y Normal.</div><div><br/></div><div>PARA:</div><div>Cuerpo.</div><div><br/></div><div>PRESENTACIÓN:</div><div>200 gramos.</div><div><br/></div><div>APLICACIÓN SUGERIDA: </div><div>Día y Noche.</div><div><br/></div><div>MODO DE USO: </div><div>Aplicar la cantidad necesaria sobre  el cuerpo, después de bañarse o antes de hacer ejercicio, brindando suave masaje a la piel hasta que se absorba por completo. Se recomienda usar dos veces por día, en la zona de aplicación, dependiendo del grado de actividad y tipo de piel.</div><div><br/></div><div>ADVERTENCIA: </div><div>Evítese el contacto con los ojos, suspenda su uso si observa alguna reacción desfavorable, en caso de presentar ardor o irritación, es normal, debido a los activos naturales que contiene el producto y su tipo de piel, este efecto es temporal, si persisten las molestias suspenda su aplicación ya que su piel puede ser sensible a los ingredientes. No administrar en niños. No se recomienda administrar durante el embarazo y lactancia.</div><div><br/></div>', '2013-11-06 14:11:55', 'Estado de México', '3', '100', 'PIEZAS', '1', 'MU03', '$', '170.00', '12', '500', '130.00', '501', 'pe');
INSERT INTO `productos_empresas` VALUES ('61', '19', 'Salud y belleza', 'Cuidado del cabello', '', 'KIT CAPILAR', 'MUSCH', '300.00', '<div>RESUMEN:</div><div>Este Kit tiene la intención de ayudar como un auxiliar en tratamiento del cabello, dando una limpieza profunda además de fortalecer, permitiendo por medio de sus ingredientes obtener un cabello saludable.  </div><div>  </div><div>ALGUNOS INGREDIENTES:</div><div>Extracto de Eucalipto, Extracto de Romero, Extracto de Mirto, Extracto de Café, Miel, Extracto de Thuja, Extracto de Ortiga, Miel, Extracto de Espinosilla, Extracto de Cola de Caballo, Extracto de Jojoba.</div><div><br/></div><div>TIPO DE PIEL:</div><div>Graso, Seco y Normal.</div><div><br/></div><div>PARA:</div><div>Cabello.</div><div><br/></div><div>PRESENTACIÓN:</div><div>Shampoo: 250 ml</div><div>Loción: 150 ml</div><div><br/></div><div>APLICACIÓN SUGERIDA: </div><div>Uso diario o cada tercer día.</div><div><br/></div><div>MODO DE USO: </div><div>Shampoo: </div><div>Aplicar la cantidad necesaria sobre el cuero cabelludo, previamente húmedo, brindando suave masaje al cabello, dejar aproximadamente 5 minutos y enjuagar con abundante agua. En la segunda aplicación se formará una mayor espuma que la primera. Se recomienda aplicar dos veces esta operación.</div><div><br/></div><div>Loción:</div><div>Aplicar la cantidad necesaria después de lavar y secar el cabello dando un suave majase en forma circular y dejar hasta que se absorba por completo, después peine de la forma que acostumbra hacerlo. También se recomienda aplicar antes de dormir.</div><div><br/></div><div>ADVERTENCIA: </div><div>Evítese el contacto con los ojos, suspenda su uso si observa alguna reacción desfavorable, en caso de presentar un pequeño ardor, es normal, debido a los activos naturales que contiene el producto y su tipo de piel, este efecto es temporal, si persisten las molestias suspenda su uso, ya que su piel puede ser sensible a los ingredientes.</div>', '2013-11-06 14:11:00', 'Estado de México', '1', '100', 'PIEZAS', '1', 'MU04', '$', '200.00', '12', '500', '160.00', '501', 'pe');
INSERT INTO `productos_empresas` VALUES ('77', '31', 'Servicios y negocios', 'Profesionales', 'Consultores', 'Proceso de pre-incubacion', 'Delegacion Azcapotzalco ', '1500.00', 'Objetivos Especificos:<div>- Brindarle a los empresarios herramientas teoricas para desarrollar su plan de negocios.</div><div>- Conozcan la tramitologia para darse de alta ante Hacienda.</div><div>- Conozcan los requisitos minimos para operar un negocio.</div><div>-Conocer la importacia de la Imagen Empresarial  para el exito en los negocios.</div><div>- Ampliar su vision Empresarial</div><div>Descripcion del Programa Emprendedor</div><div>El programa esta compuesto de 40 hrs de capacitacion presencial, el cual se compone de dos etapas:</div><div>A) Curso para elaboracion de Plan de Negocios. este curso se compone de 5 sesiones en las que se pretende desarrolar de manera efectiva el Plan de Negocios los temas particulares que se estudian son:</div><div>- Planeacion Estrategica</div><div>- Diseño Organizacional</div><div>- Estudio de Mercado / Imagen Corporativa</div><div>- Finanzas</div><div>- Costos</div><div>Este taller tiene una duracion de 20 Horas en el que se desarrollara de manera efectiva el Plan de Negocios.</div><div><br/></div><div>B) Se brindaran Talleres complementarios que le permitan al empresario conocer los diversos aspectos de los que requiere una empresa para que sea exitosa por ejemplo el area juridico / legal, apertura de negocios, conocer los lineamientos basicos para desarrollar una estrategia de ventas efectiva, conocer la importancia de la Imagen Empresarial y por ultimo conocer los elementos financieros fundamentales para saber la situacion financiera de la empresa.</div><div><br/></div>', '2013-12-19 16:12:47', 'Distrito Federal', '1', '1', 'curso ', '1', '1', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('79', '28', 'Fiestas y eventos', 'Otros', '', 'Vasos para eventos sociales.', 'Carretos', '35.00', 'Vaso jaibolero satinado para eventos sociales, grabado en sand-blast.<font color=\\\"#424242\\\" face=\\\"Arial\\\"><br/>Personalizado tomando en cuenta al tipo evento.<br/>Variedad de diseños.</font><br/>', '2013-12-26 11:12:20', 'Estado de México', '1', '2147483647', 'lote', '1', 'V2', '$', '0.00', '0', '0', '30.00', '50', 'pe');
INSERT INTO `productos_empresas` VALUES ('80', '28', 'Otros', 'Otras secciones en general', '', 'Tasa 11oz. grabada sand-blast.', 'Carretos', '80.00', 'Tasa 11oz. grabado sand-blast, variedad de colores y diseños en tasa.<br/>', '2013-12-26 12:12:44', 'Estado de México', '1', '2147483647', 'pieza', '1', 'T1', '$', '76.00', '6', '12', '72.00', '12', 'pe');
INSERT INTO `productos_empresas` VALUES ('81', '28', 'Otros', 'Otras secciones en general', '', 'Tasa lisa c/ cuchara y tapa.', 'Carretos', '100.00', 'Tasa c/ tapa y cuchara, lisa, varios colores.<br/>Cerámica resistente.<br/>Puede usarse en horno de microondas.<br/>', '2013-12-26 12:12:47', 'Estado de México', '1', '2147483647', 'pieza', '1', 'TTL1', '$', '95.00', '6', '12', '90.00', '12', 'pe');
INSERT INTO `productos_empresas` VALUES ('82', '28', 'Otros', 'Otras secciones en general', '', 'Tarro cervecero cap. 335ml.', 'Carretos', '120.00', 'Tarro cervecero mediano, capacidad de 335ml. Vitrificado.<br/>Modelos limitados a Pumas y América.<br/>', '2013-12-26 12:12:48', 'Estado de México', '1', '2147483647', 'pieza', '1', 'TRV1', '$', '114.00', '6', '12', '108.00', '12', 'pe');
INSERT INTO `productos_empresas` VALUES ('83', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Barril tequilero de barro', 'Fénix Promociones', '0.00', 'Barril tequilero fabricado de barro libre de plomo', '2014-01-16 10:01:18', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNX-027', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('84', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Florero', 'Fénix Promociones', '100.00', 'Florero estilado fabricado de barro libre de plomo', '2014-01-16 10:01:08', 'Distrito Federal', '1', '20', 'piezas', '1', 'FXN-28', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('85', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Vajilla', 'Fénix Promociones', '1000.00', 'Vajilla para 6 personas fabricada de barro libre de plomo', '2014-01-16 10:01:12', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNX-029', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('86', '27', 'Manualidades, coleccionables y antigüedades', 'Artesanías', 'Artesanías', 'Tarro', 'Fénix Promociones', '100.00', 'Tarro con asa de barro libre de plomo', '2014-01-16 11:01:22', 'Distrito Federal', '1', '20', 'piezas', '1', 'FNX-30', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('87', '37', 'Accesorios para auto y transportación', 'Herramientas', 'Herramientas', 'Abrillantador de Tolvas para autos', 'LURICA', '25.00', '<div>ABRILLLANDADOR DE TOLVAS </div><div>Producto diseñado únicamente para abrillantar las tolvas</div><div>APLICACIÓN: Después de haber lavado con detergente o desengrasante aplicar con atomizador directo </div>', '2014-01-23 12:01:50', 'Estado de México', '1', '100', 'pz', '1', '1', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('88', '37', 'Todo para el hogar y oficina', 'Otros', '', 'Abrillanta motor de autos', 'LURICA', '30.00', '<div>ABRILLANTA MOTOR (2)</div><div>Producto diseñado para abrillantar, lubricar y proteger los motores, además facilita el lavado ya que no es un producto grasoso.</div><div>APLICACIÓN: Después de haber lavado el motor con un desengrasante aplicar el producto con atomizador directo y dejar que seque solo.</div>', '2014-01-23 12:01:32', 'Estado de México', '1', '100', 'pz', '1', '2', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('89', '37', 'Servicios y negocios', 'Mantenimiento de vehículos', 'Otros', 'Limpia las manchas de rines de aluminio', 'LURICA', '30.00', '<div>ACIDO PARA ALUMINIO </div><div>Producto diseño para limpiar las manchas de rines de aluminio, cromo y metal</div><div>APLICACIÓN: Limpiar el área, aplicar el producto por partes pequeñas  (aproximadamente 15 cm) frotar 10 segundos con un esponja enjuagar con abundante agua.</div>', '2014-01-23 12:01:01', 'Estado de México', '1', '100', 'pz', '1', '3', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('90', '37', 'Maquinaria y equipo industrial', 'Automotríz', '', 'Productos para limpieza de tu auto', 'LURICA', '40.00', '<div>ACIDO LIMPIADOR DE LLUVIA PARA PARABRISAS (4)</div><div>Producto diseñado para limpiar las manchas de lluvia acida de los acristales de automóvil o casa</div><div>APLICACIÓN: Limpiar el área, humedecer una esponja con el producto y frotar por 10 segundos áreas pequeñas (aprox. 15 cm) inmediatamente enjuagar con  abundante agua</div>', '2014-01-23 12:01:13', 'Estado de México', '73', '100', 'pz', '1', '4', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('91', '37', 'Autos y transportación', 'Camiones y camionetas', 'Trailers', 'ARMOL ALL BRILLO, para la limpeza de llantas ', 'LURICA', '37.00', '<div>ARMOL ALL BRILLO</div><div>Producto para llantas y defensas de plástico dejando un brillo mas prolongado</div><div>APLICACIÓN: Limpiar el area ,  aplicar con</div><div>atomizador  y esparcir con  esponja</div>', '2014-01-23 12:01:52', 'Estado de México', '1', '100', 'pz', '1', '5', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('92', '37', 'Accesorios para auto y transportación', 'Otros', '', 'ARMOL ALL ECONOMICO, limpieza autos', 'LURICA', '29.00', '<div>ARMOL ALL ECONOMICO  </div><div>Producto para llantas y defensas de plástico</div><div>APLICACIÓN: Limpiar el área ,  aplicar con atomizador y esparcir con una esponja</div>', '2014-01-23 12:01:17', 'Estado de México', '1', '100', 'pz', '1', '6', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('93', '37', 'Otros', 'Otras secciones en general', '', 'ARMOL ALL EXTRABRILLO', 'LURICA', '42.00', '<div>Producto para llantas y defensas de plástico, ofrece por su  formulación concentrada un  brillo prolongado aún a la exposición del sol , si se diluye en agua pierde anclaje.</div><div><br/></div><div>APLICACIÓN: Limpiar el área ,  aplicar con</div><div>atomizador  y esparcir con  esponja.</div>', '2014-01-24 12:01:54', 'Estado de México', '1', '100', 'pz', '1', '7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('94', '37', 'Autos y transportación', 'Camiones y camionetas', 'Trailers', 'ARMOL ALL PROTECCION VINIL EN CREMA ', 'LURICA', '40.00', '<div>Producto no grasoso protege de los rayos ultravioleta, hace la función como repelente al polvo se recomienda usar en tableros y todas las partes de vinil y plástico..</div><div><br/></div><div>APLICACIÓN: Limpiar el área y aplicar directo con una esponja</div>', '2014-01-24 12:01:00', 'Estado de México', '1', '100', 'pz', '1', '8', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('95', '37', 'Accesorios para auto y transportación', 'Herramientas', 'Herramientas', 'BORLA MANUAL PARA PULIR ', 'LURICA', '80.00', 'Borla para pulir con 100% de lana,  evita deespecidio de producto.', '2014-01-24 12:01:32', 'Estado de México', '1', '100', 'pz', '1', '9', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('97', '42', 'Deportes y tiempo libre', 'Deportes Extremos', ' ', 'ACEITE RELAJANTE', 'Vie Naturelle', '135.00', '<span lang=\"ES-AR\">Este aceite te ayudara a relajar  músculos, tejidos y hasta las emociones,\r\npuedes usarlo para proporcionar un \r\nmasaje relajante o aplicar un \r\npoco en la cien para quitar dolores de cabeza causados por stress.  </span><div><span lang=\"ES-AR\">Su aroma es muy agradable consiéntete y\r\nrelájate con este aceite.  </span><div><span lang=\"ES-AR\"> Presentación 125ml </span></div></div>', '2014-02-01 23:02:20', 'Estado de México', '1', '50', 'pz', '1', 'FC-02 ', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('98', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'BÁLSAMO PARA PIES CANSADOS', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">BÁLSAMO\r\nPARA PIES CANSADOS<span lang=\\\"ES-MX\\\"><o:p></o:p></span></p>\r\n\r\n<span lang=\\\"ES-AR\\\">Contiene extracto de romero, mentol y alcanfor, cuyos\r\nefectos son relajantes, </span><div><span lang=\\\"ES-AR\\\">analgésicos y</span><span lang=\\\"ES-MX\\\"> desinflamatorios</span><span lang=\\\"ES-AR\\\">, se logra tener unos pies descansados al final\r\ndel día. </span><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\">Altamente recomendado para personas que caminan mucho o </span></div><div><span lang=\\\"ES-AR\\\">están paradas\r\ntodo el día. </span></div><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\">Presentación 250g </span></div><div><br/></div><div>Precio especial a mayoristas</div><div><br/></div><div>Tambien puedes unirte a la red de distribuidores de manera individual.<br/><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\"><br/></span></div></div></div>', '2014-02-01 23:02:15', 'Estado de México', '1', '50', 'pz', '1', 'FC-13', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('99', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'CREMA RELAJANTE MUSCULAR', 'Vie Naturelle', '80.00', '<p class=\"MsoNoSpacing\"><span lang=\"ES-AR\">CREMA RELAJANTE MUSCULAR</span><span lang=\"ES-AR\"><o:p></o:p></span></p><span lang=\"ES-AR\">Recomendada para quitar el dolor muscular por esfuerzo o ejercicio, así como también por algún golpe. </span><div><span lang=\"ES-AR\">Contiene aceite de romero que ayuda a relajar y desinflamar los músculos y tejidos. </span></div><div><span lang=\"ES-AR\">Presentación 125g </span></div><div><span lang=\"ES-AR\"><br/></span></div><div><span lang=\"ES-AR\">Precio especial a mayoristas.</span></div>', '2014-02-01 23:02:58', 'Estado de México', '1', '50', 'pz', '1', 'FC-30', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('100', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'GEL ANTICELULITIS', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\"><span>GEL\r\nANTICELULITIS</span><span><o:p></o:p></span></p>\r\n\r\n<span lang=\\\"ES-AR\\\">Evita la aparición de la celulitis o bien elimínala\r\nesto gracias a sus extractos  tales como\r\ntoronja, mandarina zanahoria y romero que también  te ayudaran a dar una mayor permeabilidad a\r\nla piel y suavidad. </span><div><span lang=\\\"ES-AR\\\">Presentación 250g </span></div><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\">precio especial a mayoristas.</span></div>', '2014-02-01 23:02:38', 'Estado de México', '2', '50', 'pz', '1', 'FC-43', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('101', '42', 'Servicios y negocios', 'Salud y belleza', 'Asesoras de belleza', 'GEL ANTIESTRIAS', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">GEL\r\nANTIESTRIAS<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Ayudará a evitar la aparición de las estrías causadas por\r\nel rompimiento de los tejidos de la epidermis. <o:p></o:p></p>\r\n\r\n<span lang=\\\"ES-AR\\\">Esta elaborado con aceites de pepita de uva (rico en\r\nvitamina E) y extractos de plátano y mandarina, cuya función es proteger y\r\nnutrir la piel gracias a las vitaminas que proporcionan. </span><div><span lang=\\\"ES-AR\\\">Si se aplica durante\r\nel embarazo evitarás la aparición de las estrías. </span><div><span lang=\\\"ES-AR\\\">Es un gel rico en vitaminas\r\nA, D, E </span></div><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\">Presentación 250g</span></div></div>', '2014-02-01 23:02:37', 'Estado de México', '1', '100', 'pz', '1', 'FC-44', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('102', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'GEL ANTIVARICES', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">La centella asiática y la castaña de indias integradas a\r\neste gel, ayudan a desinflamar las venas varicosas, así como también gracias a\r\nlos efectos analgésicos del alcanfor se evita el dolor.<o:p></o:p></p>\r\n\r\n<span lang=\\\"ES-AR\\\">Sus ingredientes actúan como vaso dilatadores\r\n(estimula la de circulación sanguínea), motivo por el que reactivan la\r\ncirculación y permite la relajación en la hinchazón de las venas. </span><div><span lang=\\\"ES-AR\\\"> Presentación 250g </span></div>', '2014-02-01 23:02:59', 'Estado de México', '1', '100', 'pz', '1', 'FC-45', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('103', '42', 'Salud y belleza', 'Cuidado de la piel', '', 'GEL HUMECTANTE', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Humecta y nutre tu piel, gracias a su principio activo que\r\nes la glicerina, evitando también la resequedad en el cuerpo. <o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Provocara una sensación de frescura  y una piel mas tersa. No es grasoso. </p><p class=\\\"MsoNoSpacing\\\"> Presentación 250g <o:p></o:p></p><p class=\\\"MsoNoSpacing\\\"><br/></p><p class=\\\"MsoNoSpacing\\\">Envíos a todo México</p>', '2014-02-01 23:02:27', 'Estado de México', '1', '50', 'pz', '1', 'FC-46', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('104', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'GEL REAFIRMANTE', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">GEL\r\nREAFIRMANTE<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Ayuda a dar firmeza a la piel y tejidos, gracias a la\r\ncentella asiática.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Su acción es reafirmante y activa los tejidos conectivos lo\r\nque estimula la producción de colágeno y elastina que nos ayudan a dar\r\ntonicidad y elasticidad a la piel.<o:p></o:p></p>\r\n\r\n<span lang=\\\"ES-AR\\\">La combinación de los extractos con los que se\r\nelabora, permiten tener una piel más firme y fuerte. </span><div><span lang=\\\"ES-AR\\\">Combínalo con el Gel\r\nReductivo y tendrás magníficos resultados.</span></div><div><span lang=\\\"ES-AR\\\"> Presentación 250g</span></div>', '2014-02-02 00:02:21', 'Estado de México', '1', '50', 'pz', '1', 'FC-48', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('105', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'GEL REDUCTIVO', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Ayudará a mejorar la figura y talla, gracias a los\r\nextractos de algas marinas y alcachofa, cuya función es lipolítica local\r\n(eliminación de la grasa del tejido adiposo). Su acción empieza a funcionar al\r\nser aplicado ya que sus ingredientes calentaran el poro, y lo mantendrá abierto\r\npara que los extractos penetren y empiecen a trabajar en la eliminación de la\r\ngrasa. </p><p class=\\\"MsoNoSpacing\\\">Te recomendamos tomar agua y mantener una alimentación balanceada para\r\nque compruebes sus resultados.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Si se aplica antes del ejerció el resultado es mucho mejor\r\ny te sorprenderás. </p><p class=\\\"MsoNoSpacing\\\">Presentación 250g <font face=\\\"Times New Roman, serif\\\"><o:p></o:p></font></p>', '2014-02-02 12:02:00', 'Estado de México', '1', '50', 'pz', '1', 'FC-49', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('106', '42', 'Salud y belleza', 'Terapias alternativas', '', 'GEL REFRESCANTE DE OJOS', 'Vie Naturelle', '60.00', '<p class=\\\"MsoNoSpacing\\\">Esta elaborado con extracto de pepino, lo que te ayudara a\r\nrefrescar e hidratar el contornos de tus ojos.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Esto te ayudará a disminuir la apariencia de los ojos\r\ncansados así como las bolsas.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Dejando una apariencia de ojos frescos y relajados. </p><p class=\\\"MsoNoSpacing\\\">Presentación 10g <font face=\\\"Times New Roman, serif\\\"><o:p></o:p></font></p>', '2014-02-02 12:02:25', 'Estado de México', '1', '50', 'pz', '1', 'FC-50', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('107', '42', 'Deportes y tiempo libre', 'Pilates y Yoga', ' ', 'LOCIÓN ANTIESTRIAS', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Ayudara a evitar la aparición de las estrías causadas por\r\nel rompimiento de los tejidos de la epidermis. <o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Esta elaborada con aceites de pepita de uva (rico en\r\nvitamina E) y extractos de plátano y mandarina, cuya función es proteger y\r\nnutrir la piel gracias a las vitaminas que nos proporciona. </p><p class=\\\"MsoNoSpacing\\\">Si se aplica\r\ndurante el embarazo evitarás la aparición de las estrías. </p><p class=\\\"MsoNoSpacing\\\">Presentación 125ml</p>', '2014-02-02 12:02:26', 'Estado de México', '1', '50', 'pz', '1', ' FC-67', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('108', '42', 'Deportes y tiempo libre', 'Ciclísmo', ' ', 'LOCIÓN REDUCTIVA REAFIRMANTE', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Ayudará a mejorar la figura y talla, gracias a los\r\nextractos con los que se elabora, tales como la alcachofa y las algas marinas,\r\ncuya función es lipolítica (eliminación de la grasa del tejido adiposo), así\r\ncomo también te ayudara a dar firmeza a la piel y tejidos. </p><p class=\\\"MsoNoSpacing\\\">Presentación 125ml.<o:p></o:p></p><p class=\\\"MsoNoSpacing\\\">Precio especial a mayoristas</p>', '2014-02-02 12:02:48', 'Estado de México', '1', '50', 'pz', '1', 'FC-68', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('109', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'LOCIÓN ANTICELULITIS', 'Vie Naturelle', '100.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span lang=\\\"ES-AR\\\">Evita la aparición de la\r\ncelulitis o bien elimínala esto gracias a sus extractos  tales como toronja, mandarina zanahoria y\r\nromero que también  te ayudaran a dar una\r\nmayor permeabilidad a la piel y suavidad. </span></p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span lang=\\\"ES-AR\\\">Presentación 125ml<font face=\\\"Times New Roman, serif\\\"><span style=\\\"line-height: 12pt;\\\"><o:p></o:p></span></font></span></p>', '2014-02-02 12:02:09', 'Estado de México', '1', '50', 'pz', '1', 'FC-69', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('110', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'LOCIÓN ANTIVARICES', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">La centella asiática y la castaña de indias integradas a\r\nesta loción, ayudan a desinflamar las venas varicosas, así como también gracias\r\na los efectos analgésicos del alcanfor se evita el dolor.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Sus ingredientes actúan como vaso dilatadores (estimulación\r\nde circulación sanguínea), motivo por el que reactivan la circulación y permite\r\nla relajación en la hinchazón de las venas. </p><p class=\\\"MsoNoSpacing\\\"> Presentación 125ml<font face=\\\"Times New Roman, serif\\\"><o:p></o:p></font></p>', '2014-02-02 20:02:49', 'Estado de México', '1', '100', 'pz', '1', 'FC-70', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('111', '42', 'Salud y belleza', 'Cuidado del cuerpo', '', 'LOCIÓN REFRESCANTE Y RELAJANTE PARA PIES', 'Vie Naturelle', '100.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span lang=\\\"ES-AR\\\">Es\r\nrelajante, analgésica y desinflamatoria, dejando los pies frescos y\r\ndescansados. Gracias a sus compuestos cuyos efectos son relajantes, analgésicos\r\ny</span><span lang=\\\"ES-AR\\\"> </span><span lang=\\\"ES-MX\\\">des inflamatorios</span><span lang=\\\"ES-AR\\\">. </span></p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span lang=\\\"ES-AR\\\">Es altamente recomendable para\r\npersonas que se encuentra gran cantidad del día de pie o caminando. </span></p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span lang=\\\"ES-AR\\\"> Presentación 125ml <font face=\\\"Times New Roman, serif\\\"><o:p></o:p></font></span></p>', '2014-02-02 20:02:47', 'Estado de México', '1', '70', 'pz', '1', 'FC-71', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('112', '42', 'Deportes y tiempo libre', 'Deportes Extremos', ' ', 'LOCIÓN REPELENTE DE MOSQUITOS', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Excelente para ahuyentar los molestos mosquitos. Elaborada\r\ncon extractos y esencias especificas para este problema y con un muy agradable\r\naroma. </p><p class=\\\"MsoNoSpacing\\\">¡No más picaduras de mosquitos. !</p><p class=\\\"MsoNoSpacing\\\"> Presentación 125ml <font face=\\\"Times New Roman, serif\\\"><o:p></o:p></font></p>', '2014-02-02 20:02:07', 'Estado de México', '1', '70', 'pz', '1', 'FC-72', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('113', '42', 'Servicios y negocios', 'Salud y belleza', 'Spas', 'SALES MINERALES EXFOLIANTES PARA MANOS Y CUERPO', 'Vie Naturelle', '130.00', '<p class=\\\"MsoNoSpacing\\\"><span lang=\\\"ES-AR\\\">Este magnifico producto, esta elaborado con finas\r\nsales minerales y aceites vitaminados tales como pepita de uva, ricino y\r\nalmendras. Este tratamiento te proporciona tres grandes beneficios: exfoliación, nutrición y exfoliación. </span></p><p class=\\\"MsoNoSpacing\\\"><span lang=\\\"ES-AR\\\">Comprueba sus magníficos resultados.</span></p><p class=\\\"MsoNoSpacing\\\"><span lang=\\\"ES-AR\\\">Presentación 250g</span><span lang=\\\"ES-AR\\\"> </span></p>', '2014-02-02 21:02:47', 'Estado de México', '1', '80', 'pz', '1', 'FC-76', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('114', '42', 'Servicios y negocios', 'Salud y belleza', 'Spas', 'SALES DE AROMATERAPIA', 'Vie Naturelle', '100.00', '<p class=\\\"MsoNoSpacing\\\">Elaboradas con aceites esenciales utilizados en la\r\naromaterapia cuyas propiedades son relajantes, tales como el aceite esencial de\r\nromero, neroli, enebro, lavanda, y limón. </p><p class=\\\"MsoNoSpacing\\\">Por lo que se logra relajar cuerpo y\r\nmente.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNoSpacing\\\">Esto equivale a una sesión de aromaterapia en los spa la\r\ncual ayuda a disminuir el estrés.<o:p></o:p></p>\r\n\r\n<span lang=\\\"ES-AR\\\">Al tener la combinación de estos ingredientes tenemos\r\nun producto, relajante, desinflamatorio y analgésico. Puedes ocuparlo para\r\ntina de baño o bien para tina de pies.</span><div><span lang=\\\"ES-AR\\\"><br/></span></div><div><span lang=\\\"ES-AR\\\">Presentación 250g</span><b><span style=\\\"font-size:11.0pt;\r\nline-height:115%;font-family:\"Times New Roman\",\"serif\";mso-fareast-font-family:\r\n\"Times New Roman\";mso-ansi-language:ES-AR;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\\\" lang=\\\"ES-AR\\\"> </span></b></div>', '2014-02-02 21:02:32', 'Estado de México', '1', '90', 'pz', '1', 'FC-77', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('126', '55', 'Fiestas y eventos', 'Invitaciones', '', 'Tarjetas para regalo, mamá, papá, maestro, navidad', 'Coure Gifts & Art', '21.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Tarjetas de felicitación originales para\r\ncualquier ocasión, dia de la madre, dia del maestro, dia del padre, de amor, de\r\namistad, cumpleaños, o simplemente para quedar bien. <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size: 12pt;\\\">Tenemos diferentes modelos</span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Paquetes de 20 tarjetas<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Surtido<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envio<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 13:03:32', 'Jalisco', '3', '5000', 'pz', '1', 'TARJ-01', '$', '0.00', '0', '0', '17.50', '20', 'pe');
INSERT INTO `productos_empresas` VALUES ('117', '37', 'Autos y transportación', 'Colectivos', 'Microbuses', 'BORLA MANUAL PARA PULIR TRABAJOS AUTOMOTRICES', 'Lurica', '80.00', 'Borla\r\npara pulir con 100% de lana,  en\r\ndiferentes tamaños con jareta de ajuste No. 10, 9, 8, 7, 6 y 5', '2014-02-04 20:02:31', 'Estado de México', '1', '300', 'pz', '1', '10', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('118', '37', 'Otros', 'Otras secciones en general', '', 'BORREGO PARA ENJABONAR SIN RAYAR TU AUTO', 'Lurica', '35.00', '<p class=\\\"MsoNormal\\\">Producto diseñado en peluche para enajonar sin rayar la\r\npintura de su auto y al mismo tiempo evitar desperdicio de shampoo.<o:p></o:p></p>', '2014-02-04 20:02:38', 'Estado de México', '1', '150', 'PZ', '1', '11', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('119', '37', 'Restaurantes y hotelería', 'Restaurantes', 'Otros', 'DESENGRASANTE MULTIUSOS  ', 'Lurica', '23.00', '<p class=\\\"MsoNormal\\\">Es un líquido concentrado para trabajo de limpieza. Un\r\ndesengrasante formulado con detergentes, tenso activos y espumantes, no ataca\r\nmetales, plásticos ni pinturas, no se descompone en substancias toxicas ni\r\ncorrosivas y es biodegradable.<o:p></o:p></p><p class=\\\"MsoNormal\\\">\r\n\r\n</p><p class=\\\"MsoNormal\\\">Altamente concentrado en desengrasante y detergentes, se\r\nutiliza en motores, campanas de cocina, estufas, mosaicos etc.APLICACIÓN:\r\nAplicar directo en la zona, tallar  y\r\nenjuagar con agua.<o:p></o:p></p>', '2014-02-04 20:02:19', 'Estado de México', '1', '200', 'PZ', '1', '12', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('120', '37', 'Accesorios para auto y transportación', 'Otros', ' ', 'LAVADO  EN SECO PARA VESTIDURAS ', 'Lurica', '42.00', '<p class=\\\"MsoNormal\\\">Producto recomendado para limpiar vestiduras de velour y\r\ncielo de vehículos.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">APLICACIÓN: De forma directa con un fregón  tallar la\r\nvestidura y con un trapo seco retirar el exceso.<o:p></o:p></p>', '2014-02-04 20:02:30', 'Estado de México', '1', '120', 'pz', '1', '13', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('121', '37', 'Accesorios para auto y transportación', 'Otros', ' ', 'SHAMPOO CON CERA ', 'Lurica', '21.00', '<p class=\\\"MsoNormal\\\">Producto especial para el lavado de autos ya que es suave y\r\nlleva acabo una limpieza profunda sin opacar la pintura, dejando una película\r\nprotectora de lluvia acida.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">APLICACIÓN:  Se diluye\r\nen agua, un litro puede diluirse en 80 de agua, se recomienda colocar primero\r\nel shampoo y después el agua para que tenga una mejor  reacción (espuma)<o:p></o:p></p>', '2014-02-04 20:02:26', 'Estado de México', '1', '100', 'pz', '1', '14', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('122', '37', 'Autos y transportación', 'Autos', ' ', 'SHAMPOO ECONOMICO ', 'Lurica', '19.00', '<p class=\\\"MsoNormal\\\">Producto especial para el lavado de carrocerías, de acción\r\ndesempolvante y gracias a su formulación es un producto más fuerte y espumoso\r\nque ayuda a quitar rápido toda la mugre.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">APLICACIÓN:  Se diluye\r\nen agua, un litro puede diluirse hasta en 120 litros de agua, se recomienda\r\ncolocar primero el shampoo y después el agua para que tenga una mejor  reacción (espuma)<o:p></o:p></p>', '2014-02-04 20:02:15', 'Estado de México', '1', '140', 'pz', '1', '15', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('123', '37', 'Autos y transportación', 'Camiones y camionetas', ' ', 'SHAMPOO PARA TAPICERIA Y ALFOMBRA', 'Lurica', '22.00', '<p class=\\\"MsoNormal\\\">De gran eficacia desmancha y retira la grasa<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">APLICACIÓN:  Primero\r\naspirar y retirar todo el polvo posible, \r\nse diluye un litro de producto por un litro de agua, con un cepillo\r\nsuave o fregón  humedecerlo con el\r\nproducto y tallar, retirar el exceso de jabón de la superficie con franela o\r\ntrapo limpio (enjuagar constantemente el trapo)<o:p></o:p></p>', '2014-02-04 20:02:02', 'Estado de México', '1', '150', 'pz', '1', '16', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('124', '37', 'Autos y transportación', 'Colectivos', ' ', 'SHAMPOO CON SILICON ', 'Lurica', '23.00', '<p class=\\\"MsoNormal\\\">Producto especial para el lavado de autos ya que es suave y\r\nlleva acabo una limpieza profunda sin opacar la pintura, dejando una película\r\nprotectora de lluvia acida y le da brillo a la superficie.<o:p></o:p></p>\r\n\r\n<p class=\\\"MsoNormal\\\">APLICACIÓN:  Se diluye\r\nen agua, un litro puede diluirse en 80 de agua, se recomienda colocar primero\r\nel shampoo y después el agua para que valla haciendo espuma.<o:p></o:p></p>', '2014-02-04 20:02:35', 'Estado de México', '2', '100', 'pz', '1', '17', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('125', '37', 'Servicios y negocios', 'Mantenimiento de vehículos', 'Otros', 'Lavado de autos, Venta de productos de limpieza aut', 'Lurica', '19.00', '<p class=\\\"MsoNormal\\\">Empresa Dedicada a la\r\nVenta y Distribución de Abrillantadores, Aromas, Ceras, Accesorios y Artículos\r\nde Limpieza para el Hogar y Automotriz de Todo Tipo.<o:p></o:p></p><p class=\\\"MsoNormal\\\">Para usarlos en lavados de autos, industria, hotelería, restaurantes</p><p class=\\\"MsoNormal\\\">Precios desde $19.00L  tambien podemos distribuir por galones.</p><p class=\\\"MsoNormal\\\">Consultanos tus dudas.</p><p class=\\\"MsoNormal\\\"><br/></p>', '2014-02-04 21:02:35', 'Estado de México', '1', '1000', 'pz', '1', '18', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('127', '55', 'Restaurantes y hotelería', 'Restaurantes', 'Otros', 'Chocolate para regalo, para toda ocasión, detalles', 'Coure Gifts & Art', '28.00', '<p style=\\\"margin-bottom: 6pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:14.0pt\\\">Estos cholates son un bonito detalle para esa persona\r\nespecial <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\"> </span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Tenemos diferentes modelos<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Chocolate  Chico \r\n$28.00<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Chocolate Grande $68.00<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Compra mínima para el precio de mayoreo\r\nes de 20 pz de Chocolate <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envio<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 14:03:26', 'Jalisco', '2', '5000', 'pz', '1', 'CHOCO-02', '$', '0.00', '0', '0', '23.50', '20', 'pe');
INSERT INTO `productos_empresas` VALUES ('128', '55', 'Manualidades, coleccionables y antigüedades', 'Arte', 'Figuras', 'Alcancía Buzón, regalos, infantiles, recuerdos', 'Coure Gifts & Art', '210.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:14.0pt\\\">Un detalle nunca esta demás </span><span style=\\\"font-size:12.0pt\\\"><o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Tenemos diferentes colores pregúntanos <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\"> </span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Compra mínima para el precio de mayoreo\r\nes de 10 pz <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envío<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 14:03:21', 'Jalisco', '1', '200', 'pz', '1', 'ALCABU-03', '$', '0.00', '0', '0', '189.00', '10', 'pe');
INSERT INTO `productos_empresas` VALUES ('129', '55', 'Manualidades, coleccionables y antigüedades', 'Manualidades', 'Manualidades', 'Alcancía Cochinitos, regalos, infantiles, recuerdos, artículos promocionales', 'Coure Gifts & Art', '187.50', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:14.0pt\\\">Un detalle nunca esta demás </span><span style=\\\"font-size:12.0pt\\\"><o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">ALCANCÍA PUERQUITO<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">14cm x 24.5cm x 16cm<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">empaque individual<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\"> </span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Compra mínima para el precio de mayoreo\r\nes de 10 pz <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envío o <b>a negociar para compras en mayoreo</b><o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 14:03:13', 'Jalisco', '1', '300', 'pz', '1', 'ALCAPU-04', '$', '0.00', '0', '0', '169.00', '10', 'pe');
INSERT INTO `productos_empresas` VALUES ('130', '55', 'Fiestas y eventos', 'Otros', '', 'Alcancía Corazón, regalos, recuerdos, artículos promocionales', 'Coure Gifts & Art', '187.50', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:14.0pt\\\">Un detalle nunca esta demás </span><span style=\\\"font-size:12.0pt\\\"><o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">ALCANCÍA CORAZÓN<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">24cm x 20cm x 11cm<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">empaque individual<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Compra mínima para el precio de mayoreo\r\nes de 10 pz <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envío<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 14:03:18', 'Jalisco', '1', '300', 'pz', '1', 'ALCUORE-05', '$', '0.00', '0', '0', '169.00', '10', 'pe');
INSERT INTO `productos_empresas` VALUES ('131', '55', 'Fiestas y eventos', 'Invitaciones', '', 'Botella Mensajera, Recuerdos botellas Decoradas', 'Coure Gifts & Art', '71.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:14.0pt\\\">Un detalle nunca esta demás </span><span style=\\\"font-size:12.0pt\\\"><o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Compra mínima para el precio de mayoreo\r\nes de 10 pz <o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">El precio es + costo de envío<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<o:p></o:p></span></p>', '2014-03-03 15:03:03', 'Jalisco', '1', '300', 'pz', '1', 'BODE-06', '$', '0.00', '0', '0', '59.00', '10', 'pe');
INSERT INTO `productos_empresas` VALUES ('132', '50', 'Otros', 'Otras secciones en general', '', 'Mermeladas artesanales', 'Alimentos Artesanal Wilson', '65.00', 'Mermeladas 100% mexicanas creadas de forma artesanal y con materia prima de origen orgánico. No contiene conservadores, ni colorantes artificiales.<br/>Su presentación es de 1 frasco de 300g por pieza y se manejan 18 distintos sabores dentro de 4 categorías: dulces (ciruela, naranja, limón y frutos rojos), picositas ( durazno c/chile morita, Zarzamora c/chile chipotle, piña c/chile piquin y mango c/chile habanero), exoticas (mango c/piña, jamaica, kiwi, higo c/vino tinto y jitomate) y de temporada (maracuya, mandarina, lima, tejocote y granda).<br/>*El precio varia dependiendo el sabor de la mermelada, que va dede $50 hasta $65.<br/><br/>Mermeladas MAPY es un producto diferente, original y nutritivo que puedes combinar en diversas formas con otros alimentos obteniendo un platillo de alta cocina o gourmet <br/>', '2014-03-03 16:03:51', 'Distrito Federal', '1', '12', 'piezas', '1', 'MAPY mermelada', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('133', '56', 'Celulares y cámaras', 'Cámaras de seguridad', ' ', 'CCTV- Análogo, Videovigilancia Circuito Cerrado ', 'longse', '100.41', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\"><div>DVR de 4 canales Resolución 4 CH x 960 H (960x480px) @30FPS/CH, Salida BNC y VGA, Audio 2 CH</div><div>entrada RCA + 1CH salida RCA, 2 Puertos USB,Puerto RJ45 para Red: Internet / DDNS / SMTP,</div><div>Almacenamiento interno de hasta 4TB con HDDSATAII, Compatible con Longse DVR Client para</div><div>Windows y TMeye para monitoreo en móviles (iPhone,i PAD,Android,WindowsPhone) y visualización</div><div>web a través de Internet Explorer.</div><div><p class=\"\\&quot;MsoNormal\\&quot;\">Precios en USD Américanos + I.V.A</p><p class=\"\\&quot;MsoNormal\\&quot;\">Entrega sin costo en Guadalajara y México D.F. Si se requiere envío dentro de la República mexicana, consultar costos de envío.</p></div></font></td></tr></table>', '2014-03-04 10:03:25', 'Estado de México', '1', '100', 'pieza', '1', 'LS-9604PD', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('141', '55', 'Manualidades, coleccionables y antigüedades', 'Manualidades', 'Manualidades', 'COJIN TU Y YO decorativo, regalos,', 'Coure Gifts & Art', '375.00', '<p style=\"margin: 0cm 0cm 0.0001pt 18pt;\" class=\"MsoNormal\">Dale a tu cuarto, sala o estancia un toque de diversión\r\ny de comodidad...<o:p></o:p></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt 18pt;\" class=\"MsoNormal\"> También es el regalo perfecto para a aquella persona\r\ntan especial, para que siempre te tenga presente!!!</p><p style=\"margin: 0cm 0cm 0.0001pt 18pt;\" class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt 18pt;\" class=\"MsoNormal\">TU&amp;YO<o:p></o:p></p>\r\n\r\n<p style=\"margin: 0cm 0cm 0.0001pt 18pt;\" class=\"MsoNormal\">110cm x 40cm </p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Compra mínima para el precio de mayoreo\r\nes de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">El precio es + costo de envío<o:p></o:p></p>\r\n\r\nEnvíos a toda la república Mexicana y al Extranjero\r\npor correo certificado, tu eliges el método de envío', '2014-03-04 11:03:53', 'Jalisco', '1', '300', 'PZ', '1', 'TUYO-08', '$', '0.00', '0', '0', '337.50', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('135', '56', 'Servicios y negocios', 'Otros', '', 'DVR de 8 canales Resolución Full D1', 'longse', '132.80', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\"><div>DVR de 8 canales ResoluciónFullD1,8CHx (720x480px) @30FPS/CH, Salida BNC y VGA, Audio 2CH</div><div>entrada RCA + 1CH salida RCA, 2 Puertos USB,Puerto RJ45 para Red: Internet/DDNS/SMTP,</div><div>Almacenamiento interno de hasta 4TB con HDDSATAII,Compatible con Longse DVR Client para</div><div>Windows y TMeye para monitoreo en móviles (iPhone, iPAD, Android, WindowsPhone) y visualización</div><div>web a través de Internet Explorer.</div><div><p class=\"MsoNormal\">Precios en USD Américanos + I.V.A</p><p class=\"MsoNormal\">Entrega sin costo en Guadalajara y México D.F. Si se requiere envío dentro de la República mexicana, consultar costos de envío.</p></div><div><br/></div></font></td></tr></table>', '2014-03-04 10:03:10', 'Estado de México', '4', '100', 'pieza', '1', 'LS-9508PD', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('138', '56', 'Servicios y negocios', 'Otros', '', 'CCTV- Análogo, Videovigilancia Circuito Cerrado Grabador 16 Camaras', 'longse', '202.44', '<table style=\"font-family: \'Times New Roman\';\" align=\"center\" width=\"75%\"><tr><td align=\"justify\"><font face=\"Arial\" color=\"#424242\"><div>DVR 16 Canales BNC, 1 Salida VGA y 1BNC. Grabaciòn H.264, Resolucion Max: 4 x CIF @ 480IPS. 2</div><div>Entradas / 1 Salida Audio RCA, Red: Internet / DDNS / SMTP, 1 Puerto RS-485, 2 Puertos USB2.0,</div><div>Almacenamiento 1x HDD SATA hasta 2 TB, Ecorp VMS y Moviles: ANDROID, iPhone, iPAD,Blackberry</div><div>(Consultar compatibilidades) (No incluye Disco Duro).</div><div><p class=\"\\&quot;MsoNormal\\&quot;\">Precios en USD Américanos + I.V.A</p><p class=\"\\&quot;MsoNormal\\&quot;\">Entrega sin costo en Guadalajara y México D.F. Si se requiere envío dentro de la República mexicana, consultar costos de envío.</p></div></font></td></tr></table>', '2014-03-04 11:03:16', 'Estado de México', '1', '100', 'pieza', '1', 'EC-N2GB16', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('139', '56', 'Servicios y negocios', 'Otros', '', 'DVR Full D1 8 Canales', 'longse', '306.09', '<div>DVR Full D1 8 Canales BNC, Salida VGA, BNC y HDMI, Grabaciòn H.264, Resolucion Full D1 (8CH x D1 </div><div>@ 240 IPS ), 8 Entrada / 1 Salida Audio, 8 Entrada / 2 Salidas Alarma, 2 Puertos RS-485, 2 Puertos USB, </div><div>Alamacenamiento 4 x HDD SATA hasta 16TB, Ecorp VMS y Moviles: ANDROID, iPhone, iPAD, </div><div>Blackberry (Consultar compatibilidades) (No incluye Disco Duro).</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:29', 'Estado de México', '1', '100', 'pieza', '1', 'EC-N2GB08D1', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('140', '56', 'Servicios y negocios', 'Otros', '', 'DVR Full D1 16 Canales ', 'longse', '419.45', '<div>DVR Full D1 16 Canales BNC, Salida VGA, BNC y HDMI, Grabaciòn H.264, Resolucion Full D1 (16CH x D1 </div><div>@ 480 IPS ), 8 Entrada / 1 Salida Audio RCA, 16 Entrada / 2 Salidas Alarma, 2 Puertos RS-485, 2 </div><div>Puertos USB, Alamacenamiento 2 x HDD SATA hasta 6 TB, Visualizacion Internet Explorer, Ecorp VMS </div><div>y Moviles: ANDROID, iPhone, iPAD, Blackberry (Consultar compatibilidades), (No incluye </div><div>Disco Duro).</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div><div><br/></div>', '2014-03-04 11:03:11', 'Estado de México', '1', '100', 'piezas', '1', 'EC-2GB16D1', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('142', '56', 'Celulares y cámaras', 'Cámaras de seguridad', 'Accesorios para cámaras de seguridad', ' Cámara HD tipo domo día y noche, Antibandálico ', 'longse', '127.94', '<div>Cámara HD tipo domo,Antivandálico, Sensor CCD 1/3” SONY, Effio-E, Resolución: 700 TVL, Lente </div><div>varifocal 2.8 – 12 mm, AWB, DWDR, Menú OSD de ajuste exterior,Día/Noche, Iluminación Nocturna </div><div>30 PCS IR LED, alcance 25mts, Alimentación: 12V@350mA, Montaje de Pared.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:30', 'Estado de México', '1', '100', 'pieza', '1', 'EC-3VDC7E', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('143', '56', 'Celulares y cámaras', 'Cámaras de seguridad', ' ', 'Housing Para Exterior Para Cámaras De Seguridad Cctv Incluye Brazo', 'ecorp', '24.29', 'Gabinete para exterior IP66, Dimensiones: 25cm (Largo) x 14cm (Ancho) x 12cm (Alto), Brazo incluido.<div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:28', 'Estado de México', '2', '100', 'pieza', '1', 'GABCCTV-CORTO', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('144', '56', 'Todo para el hogar y oficina', 'Jardín y exteriores', '', 'Housing Para Camaras De Seguridad Cctv Incluye Brazo', 'ecorp', '24.29', 'Gabinete para exterior IP66, Dimensiones: 37cm (Largo) x 14cm (Ancho) x 12cm (Alto), Brazo incluido.', '2014-03-04 11:03:46', 'Estado de México', '2', '100', 'pieza', '1', 'GABCCTV-LARGO', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('145', '55', 'Deportes y tiempo libre', 'Otros', '', 'Cojín Corazón Almohadas peluches decorativos', 'Coure Gifts & Art', '248.00', 'Cojines, almohadas, usalo como quieras <div><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">También es el regalo perfecto para a\r\naquella persona tan especial, para que siempre te tenga presente!!! <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">CORAZÓN<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">doble vista<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">40cm x 40cm<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">Compra mínima para el precio de mayoreo\r\nes de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">El precio es + costo de envío<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<font size=\\\"3\\\"><o:p></o:p></font></p></div>', '2014-03-04 11:03:02', 'Jalisco', '1', '200', 'PZ', '1', 'CORA-09', '$', '0.00', '0', '0', '216.00', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('146', '56', 'Accesorios para auto y transportación', 'Seguridad', ' ', 'CÁMARA PTZ A COLOR DÍA Y NOCHE, 360° CONTINUOS ', 'ecorp', '1439.74', '<div>CAMARA PTZ A COLOR DÍA Y NOCHE/ PROTOCOOS PELCO P/D, 360° CONTINUOS. IP 66 (EXTERIORES)</div><div>OSD MENU Zoom 27X (Óptico) + 16X (Digital), Tecnología CCD-DSP SAMSUNG SCM-2271, Resolución</div><div>560TVL, RS-485 (Pelco D/P), Memoria 128 Preset + 3 Tours. Velocidad 300º/seg. ICR, Día/Noche, </div><div>Iluminación infrarroja integrada, Alcance 80-150m Menú OSD. Protección IP66. Alimentación: </div><div>24VAC@700mA.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:40', 'Estado de México', '1', '100', 'piezas', '1', 'EC-2PTZ27XIR ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('147', '55', 'Restaurantes y hotelería', 'Hoteles', 'Otros', 'Cojin Flor almohadas peluches regalos', 'Coure Gifts & Art', '270.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">También es el regalo perfecto para a\r\naquella persona tan especial, para que siempre te tenga presente!!! <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\"><b>FLOR</b><o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">doble vista<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">50cm x 50cm<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">Compra mínima para el precio de mayoreo\r\nes de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">El precio es + costo de envío<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoNormal\\\">Envíos a toda la república Mexicana y al\r\nExtranjero por correo certificado, tu eliges el método de envío<font size=\\\"3\\\"><o:p></o:p></font></p>', '2014-03-04 11:03:45', 'Jalisco', '1', '200', 'pz', '1', 'CFLOR-10', '$', '0.00', '0', '0', '243.00', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('148', '56', 'Computación y electrónica', 'Accesorios para computadoras', 'Otros', 'Teclado Control Joystick 3D', 'ecorp', '144.14', '<div>Teclado + joystick 3D, Protocolos Pelco P/ Pelco D, Interfaz: RS-422, RS-485, RJ-45, Velocidad de </div><div>transmisión: 2400 ~ 19200 bps. Alimentación: 12VDC@500mA.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:45', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1CJ3D', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('149', '56', 'Celulares y cámaras', 'Cámaras de seguridad', ' ', 'Probador digital Para Revisar Sistemas CCTV', 'ecorp', '289.89', '<div>Probador digital de CCTV, Pantalla LCD 2.5”, Resolución 960x240px, Menú OSD. 1 Entrada/ 1 Salida </div><div>BNC@ NTCS, RS-232, RS-485 Tx/Rx (Pelco D/P, Samsung, Everfocus, etc), Probador UTP (RJ45). </div><div>Baterías y cargador incluido. </div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 11:03:36', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1CTS', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('150', '55', 'Fiestas y eventos', 'Decoración', '', 'Cojín Monstro almohadas peluches regalos', 'Coure Gifts & Art', '240.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpFirst\\\">También\r\nes el regalo perfecto para a aquella persona tan especial, para que siempre te\r\ntenga presente!!! <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">MOSTRO<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">doble\r\nvista<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">35cm\r\nx 40cm<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">Compra\r\nmínima para el precio de mayoreo es de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">El\r\nprecio es + costo de envío<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpLast\\\">Envíos a\r\ntoda la república Mexicana y al Extranjero por correo certificado, tu eliges el\r\nmétodo de envío<font size=\\\"3\\\"><o:p></o:p></font></p>', '2014-03-04 11:03:11', 'Jalisco', '5', '200', 'pz', '1', 'CMON-11', '$', '0.00', '0', '0', '216.00', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('151', '56', 'Maquinaria y equipo industrial', 'Construcción', '', 'CÁMARA OCULTA PARA INTERIOR CON DETECTOR DE MOVIMIENTO ', 'longse', '48.59', '<div>Camara Oculta Detector Movimiento Sensor HDIS 1/3\\\" Resolucion 700TVL, Lente fijo 3.7mm, </div><div>Alimentación: 12VDC@150mA.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 12:03:50', 'Estado de México', '1', '100', 'pieza', '1', 'LPRCHM', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('152', '55', 'Ropa, calzado y accesorios', 'Otros', 'Caballeros', 'Cojin nube regalos, peluches, almoadas', 'Coure Gifts & Art', '315.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpFirst\\\">También\r\nes el regalo perfecto para a aquella persona tan especial, para que siempre te\r\ntenga presente!!! <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpFirst\\\"><span style=\\\"font-size:12.0pt\\\">NUBE<o:p></o:p></span></p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\"><span style=\\\"font-size:12.0pt\\\">doble\r\nvista<o:p></o:p></span></p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">\r\n\r\n\r\n\r\n</p><p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpLast\\\"><span style=\\\"font-size:12.0pt\\\">95cm x\r\n85cm<o:p></o:p></span></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">Compra\r\nmínima para el precio de mayoreo es de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">Ó\r\nen compra de varios cojines diferentes modelos hasta sumar $2000.00 te puedo\r\nmanejar precio de mayoreo.<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpLast\\\">El precio\r\nes + costo de envío<o:p></o:p></p>\r\n\r\nEnvíos a toda la república Mexicana y al Extranjero\r\npor correo certificado, tu eliges el método de envío', '2014-03-04 12:03:04', 'Jalisco', '1', '200', 'pz', '1', 'CNUBE-12', '$', '0.00', '0', '0', '283.00', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('153', '56', 'Servicios y negocios', 'Otros', '', 'Gabinete Rack de Pared de 6 Unidades  ', 'ecorp', '186.24', '<div>Gabinete de Pared de 6 Unidades de Rack. Puerta de Cristal y cerradura con llave. Incluye charola, PDU </div><div>Multicontacto polarizado y ventilador a 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 12:03:04', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1G6U ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('154', '56', 'Servicios y negocios', 'Otros', '', 'Gabinete De Pared  9u', 'ecorp', '207.30', '<div>Gabinete de Pared de 9 Unidades de Rack. Puerta de Cristal y cerradura con llave. Incluye charola, PDU </div><div>Multicontacto polarizado y ventilador a 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 12:03:01', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1G9U ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('155', '56', 'Servicios y negocios', 'Otros', '', 'Antena Direccional para Conexión Directa a RocketM5', 'UBiQUiTi', '137.66', '<div>Antena direccional para conexión directa a RocketM5, Ganancia: 17 dBi, Banda de operación: 4.9-5.9 </div><div>GHz, Apertura: 90°, Polarización Dual (Vertical/Horizontal). Integrada con 2 conectores SMA Inverso </div><div>macho. Jumpers incluido.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Américanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-04 12:03:48', 'Estado de México', '1', '100', 'pieza', '1', 'AM-5G17', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('156', '55', 'Todo para el hogar y oficina', 'Decoración', '', 'Mandiles Dama/Caballero modernos decorados', 'Coure Gifts & Art', '270.00', '<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpFirst\\\">Mandiles\r\noriginales hasta para cocinar, son el regalo divertido para la dama o el\r\ncaballero.<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">Compra\r\nmínima para el precio de mayoreo es de 5 pz <o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpMiddle\\\">El\r\nprecio es + costo de envío a negociar<o:p></o:p></p>\r\n\r\n<p style=\\\"margin-bottom: 0.0001pt;\\\" class=\\\"MsoListParagraphCxSpLast\\\">Envíos a\r\ntoda la república Mexicana y al Extranjero por correo certificado, tu eliges el\r\nmétodo de envío<font size=\\\"3\\\"><o:p></o:p></font></p>', '2014-03-04 12:03:12', 'Jalisco', '2', '3000', 'PZ', '1', 'MADAM-17', '$', '0.00', '0', '0', '243.00', '5', 'pe');
INSERT INTO `productos_empresas` VALUES ('157', '56', 'Servicios y negocios', 'Otros', '', 'Antena Inalámbrica Ubiquiti para conectarte o para enviar señal ', 'UBiQUiTi', '157.09', '<div>Punto de enlace inalámbrico para uso en intemperie, Antena integrada de 16dBi de ganancia, Potencia</div><div>de transmisión 500mW, Throughput real: 300Mbps Access Point, AP WDS, Cliente WDS, Suscriptor y </div><div>AIRMAX. Polaridad Vertical/Horizontal simultaneas, Sistema MIMO TDMA, Ancho de banda de canal </div><div>5~40 MHz (ajustable), Aplicaciones: QoS, VLAN, VPN, Encriptación WEP 32 y 64 bits, WPA/WPA2, AES,</div><div>TKIP. Alimentación 24VDC@500mA/PoE, Analizador de espectro digital incluido en interfaz de </div><div>programación, Inyector PoE incluido.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 09:03:26', 'Estado de México', '1', '100', 'piezas', '1', 'NSM5', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('158', '56', 'Servicios y negocios', 'Otros', '', 'Bobina de Cable UTP Categoría 6 Color Azul 4 pares ', 'ecorp', '105.27', 'Bobina de cable UTP Categoría 6, Color Azul, 305mts. 4 pares trenzados 23AWG con aislante.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 09:03:01', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BUTP6', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('159', '56', 'Servicios y negocios', 'Otros', '', 'Bobina de Cable Siamés para CCTV', 'ecorp', '186.24', '<div>Bobina de cable Siamés para CCTV, CoaxialRG59 (Blindaje: 95%malladecobre)+2Pot.18AWG</div><div>Carrete de 305 metros.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 09:03:10', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BCS305', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('160', '56', 'Celulares y cámaras', 'Cámaras', 'Cámaras de video', 'Bobina de cable siamés para CCTV de 20 metros', 'ECORP', '22.67', '<div>Bobina de cable siamés para CCTV de 20 metros, Coaxial conterminación BNC + 2 Pot con conectores macho / hembra.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 09:03:22', 'Estado de México', '1', '100', 'piezas', '1', 'EC-L20DB', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('161', '56', 'Servicios y negocios', 'Otros', '', 'Cable Siamés Coaxial de 40 metros Cámaras CCTV ', 'ecorp', '22.51', '<div>Bobina de cable siamés para CCTV de 40 metros, Coaxial con terminación BNC + 2 Pot con conectores macho / hembra.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 09:03:33', 'Estado de México', '1', '100', 'pieza', '1', 'EC-L40BD ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('162', '56', 'Servicios y negocios', 'Otros', '', 'Fuentes De Poder 12VCD Para Camara De Video Y Seguridad Cctv', 'ecorp', '8.42', 'Fuente de poder 12VCD 1 AMP.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 10:03:53', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1AD12V1A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('163', '56', 'Servicios y negocios', 'Otros', '', 'Fuente de Poder para CCTV 9 Salidas 12VDC /1A', 'longse', '61.54', '<div>Fuente de Poder distribuida para CCTV 9 salidas 12VDC /1 A Salidas protegidas con fusible1000mA LED indicador de encendido por cada canal Salidas configurables ON/OFF Protección contra Sobrecarga y Cortos Circuitos.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 11:03:03', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1PS12V10A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('164', '56', 'Servicios y negocios', 'Otros', '', 'Fuente de Poder para CCTV 18 Salidas Configurables 12VDC', 'longse', '72.88', '<div>Fuente de Poder distribuida para CCTV 18 Salidas 12 VDC/500mA Salidas protegidas confusible 500mA LED indicador de encendido por cada salida Salidas configurables ON/OFF Protección contra Sobrecarga y Cortos Circuitos.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 11:03:51', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1PS12V12A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('165', '56', 'Servicios y negocios', 'Otros', '', 'Convertidor de Corriente de 24 VAC A 12 VCD de gran utilidad a distancias ', 'ecorp', '11.34', 'Convertidor de corriente de 24 VAC A 12 VCD 1am regulado.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 12:03:37', 'Estado de México', '1', '100', 'pieza', '1', 'EC-AADAC24', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('166', '56', 'Servicios y negocios', 'Otros', '', 'Inyector PoE estándar Alimentador de Cámaras 15W de potencia ', 'ecorp', '37.75', '<div>Inyector PoE estándar 802.3af. Salida de voltaje máxima de 48V. Hasta 15W de potencia de salida. Velocidad de red 10/100 Mbps.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 12:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'PSE1000D', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('167', '56', 'Servicios y negocios', 'Otros', '', 'Balun Receptor Activo de 1 canal para CCTV', 'ecorp', '31.58', '<div>Balun receptor activo de 1canal para CCTV. Protección contra transitorios. Control de brillo y nitidez.</div><div>Impedancia 100? UTP / 75? BNC. Alimentación: 12VDC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 12:03:33', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1TA1R', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('168', '56', 'Servicios y negocios', 'Otros', '', 'Transmisor Activo Balun  de 1 canal para CCTV.', 'ecorp', '29.15', '<div>Balun transmisor activode1canal para CCTV. Protección contra transitorios. Control de brillo y</div><div>nitidez. Impedancia 100? UTP / 75? BNC. Alimentación: 12VDC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 12:03:47', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1TA1T', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('169', '56', 'Servicios y negocios', 'Otros', '', 'Receptor Activo de 16 Canales de Video', 'ecorp', '322.28', '<div>Receptor activo centralizado de16 canales: RJ45 / Bornes, impedancia: 100?,16 Canales de salida BNC, impedancia: 75?, Transmisión de video de hasta 2000m de cableado con UTP Cat5e 24AWG, Alimentación: 100-240VAC. Para montaje en rack 1U.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-06 12:03:31', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1R16A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('170', '56', 'Servicios y negocios', 'Otros', '', 'Transmisor Pasivo Centralizado de 16 Canales ', 'ecorp', '160.33', '<div>Transmisor pasivo centralizado de 16 canales: BNC, impedancia: 75?, 16 Canales de salida</div><div>RJ45/Bornes,impedancia: 100? ,Transmisión de video de hasta 350m de cableado con UTP Cat5e</div><div>24AWG, Alimentación: 100-240VAC. Para montaje en rack 1U.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 09:03:38', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1T16P', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('171', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Balun Transceptor de Video de 1 Canal para CCTV', 'ecorp', '4.70', '<div>Balun transceptor pasivo de video de 1 canal para CCTV, Impedancia 100? UTP/ 75? BNC.</div><div>Transmisión de video de hasta 300m.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 09:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1TP', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('176', '56', 'Computación y electrónica', 'Accesorios para computadoras', 'Componentes para pc', 'Disco Duro Capacidad 2TB Serial SATA', 'ecorp', '157.09', 'Disco duro serial SATA-2. Capacidad: 2TB para unidad de almacenamiento de DVR.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:30', 'Estado de México', '1', '100', 'pieza', '1', 'DD SATA2 2TB', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('173', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Transceptor Balun 1 Canal CCTV Transmisión de Video de Hasta 300m', 'ecorp', '4.86', '<div>Balun transceptor pasivo de video de 1canal para CCTV con cable, Impedancia 100? UTP / 75? BNC.</div><div>Transmisión de video de hasta 300m.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div><div><br/></div>', '2014-03-07 09:03:21', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1TPL', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('174', '56', 'Computación y electrónica', 'Accesorios para computadoras', 'Componentes para pc', 'Disco Duro SATA-2  500GB TOSHIBA', 'ecorp', '89.07', 'Disco duro serial SATA-2. Capacidad: 500GB TOSHIBA para unidad de almacenamiento de DVR.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 09:03:46', 'Estado de México', '1', '100', 'pieza', '1', 'DD SATA2 500GB', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('175', '56', 'Computación y electrónica', 'Accesorios para computadoras', 'Componentes para pc', 'Disco Duro Serial SATA 1TB', 'ecorp', '106.89', 'Disco duro serial SATA-2. Capacidad: 1TB para unidad de almacenamiento de DVR.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 09:03:24', 'Estado de México', '1', '100', 'pieza', '1', 'DD SATA2 1TB', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('177', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Iluminador Infrarrojo para Exteriores', 'longse', '72.88', 'Iluminador Infrarrojo para exteriores IP 66. hasta 80 Mts. 114 IR Leds', '2014-03-07 10:03:25', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ILIR80', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('178', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Conector de Poder Macho para CCTV', 'ecorp', '1.54', 'Conector de poder macho para CCTV.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:19', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1DCM', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('179', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Convertidor RS-232 a RS-485', 'ecorp', '13.77', 'Convertidor RS-232 a RS-485.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:59', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1RS485', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('180', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Convertidor de Video RCA, S-Video y VGA Entrada y VGA Salida ', 'ecorp', '66.72', '<div>Convertidor de video, Entrada: RCA, S-Video y VGA, Salida VGA, Incluye fuente de alimentación y cable VGA 1.5m.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:18', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1AVGA', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('181', '56', 'Computación y electrónica', 'Audio, tv y video', '', 'Micrófono Pre-amplificado Omnidireccional', 'ecorp', '23.97', 'Micrófono pre-amplificado omnidireccional. Alimentación 12VDC.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:50', 'Estado de México', '1', '100', 'pieza', '1', 'ADIPA4MIC', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('182', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Conector BNC de Presión para Cable RG-59', 'ecorp', '0.97', 'Conector BNC de presión para cable RG-59, Impedancia 75?.<div><br/></div>', '2014-03-07 10:03:46', 'Estado de México', '1', '100', 'pieza', '1', 'EC-MBNC', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('183', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Sistema de Alerta Personal para Emergencias LogicMark.', 'LogicMark', '354.67', '<div>Sistema de alerta personal para emergencias LogicMark. Sistema programable hasta 4 números telefónicos para marcación automática y llamada a número de emergencia adicional. Incluye: 1) Estación base con capacidad de hasta 4 Comunicadores Inalámbricos, Alcance hasta 30m  (LoS) Compatible con líneas telefónicas VoIP y Analógicas DSL y cargador de baterías integrado. 2) Comunicador inalámbrico colgante con botón para llamada de emergencia, Alimentación conbatería de Litio con tiempo de vida de hasta 4 meses en espera y 1 hora en conversación, protección IPX5 que permite su uso en la ducha.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:54', 'Estado de México', '1', '100', 'pieza', '1', '15911', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('184', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Comunicador Inalámbrico  Botón para llamada de Emergencia', 'LogicMark', '200.82', '<div>Comunicador inalámbrico para montaje en muro con botón para llamada de emergencia compatible con sistema de alerta personal de emergencia LogicMark Alimentación con 4</div><div>baterías AAA con tiempo de vida de hasta 4 meses en espera y 1 hora en conversación, protección PX5 que permite su uso en la ducha.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 10:03:38', 'Estado de México', '1', '100', 'pieza', '1', '37920', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('185', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Panel de Control Configurable para Puertas Unidireccional o Bidireccional', 'ecorp', '208.92', '<div>Panel de control de accesos configurable para 2 puertas de uso unidireccional o 1 puerta de uso bidireccional. Puertos Wiegand 26, soporte de hasta 2 lectoras, 1 salida auxiliar de alarma. Sistema de control de acceso y/o asistencia. Memoria de hasta 30,000 usuarios y 60,000 eventos. Sistema Standalone. Comunicación TCP/IP. Servidor WEB integrado para monitoreo. Alimentación 12VDC@1000mA.</div><div>Incluye software de administración.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACCE2L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('186', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Panel de Control de Accesos para 4 Puertas de Uso Bidireccional', 'ecorp', '370.87', '<div>Panel de control de accesos para 4 puertas de uso bidireccional. Puertos Wiegand 26, soporte de hasta 8 lectoras, 2 salidas auxiliares. Sistema de control de acceso y/o asistencia. Memoria de hasta 30,000 usuarios y 60,000 eventos. Sistema Standalone. Comunicación TCP/IP. Software de adminitración incluido. Servidor WEB integrado para monitoreo. Alimentación 12 VDC @ 1000mA Incluye software de administración. </div>', '2014-03-07 11:03:39', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACCE8L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('187', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Gabinete Metálico para Panel de Control de Acceso', 'ecorp', '127.94', '<div>Gabinete metálico para panel de control de acceso, Cerradura con llave, fuente de alimentación 12 VDC @ 3A cargador para bateria.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'EC-GABN', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('188', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Bateria Universal Recargale 12VDC', 'ecorp', '23.48', 'Bateria Universal recargale 12VDC 7AMP.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:45', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BAT7A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('189', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Bateria Universal Recargable 5AMP', 'ecorp', '16.20', 'Bateria Universal recargable 12VDC 5AMP.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:17', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BAT5A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('190', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Gabinete Metálico para Panel de Control de Acceso 2VDC 7AMP ', 'ecorp', '142.43', '<div>EC-GABN Gabinete metálico para panel de control de acceso, Cerradura con llave, fuente de</div><div>alimentación 12VDC@3A cargador para bateria y EC-1BAT5A bateria de respaldo 12VDC 7AMP integrados.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:20', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-GABBAT', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('191', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Kit de Control de Acceso Incluye Gabinete Metálico', 'ecorp', '346.35', '<div>Kit de control de acceso, incluye gabinete metálico EC-GABN con fuente de alimentación integrada de 12V@3A, bateria de respaldo EC-1BAT75, Panel de control EC-ACCE2L Incluye software de administración.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:15', 'Estado de México', '1', '100', 'pieza', '1', 'KIT ACSE-02L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('192', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Kit de Control de Acceso Incluye Gabinete con Fuente de Alimentación ', 'ecorp', '508.30', '<div>Kit de control de acceso, incluye gabinete metálico EC-GABN con fuente de alimentación integrada de12V@3A, bateria de respaldo EC-1BAT5A, Panel de control EC-ACCE8L Incluye software de administración.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:02', 'Estado de México', '1', '100', 'pieza', '1', 'KIT ACSE-08L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('193', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Lector Biométrico y de Tarjetas Sitema Stand Alone y/o Administrable por Softwar', 'ecorp', '160.33', '<div>Lector biométrico y de tarjetas. Sitema Stand Alone y/o Administrable por software, memoria interna de 3000 usuarios. Teclado numerico integrado. Interfaz RS-232, RJ45 para comunicación via PC. Salida Wiegand 26, para conectarse a control de accesos externo. Incluye Software de administración y supervisión.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:58', 'Estado de México', '1', '100', 'pieza', '1', 'EC-FT700', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('194', '56', 'Computación y electrónica', 'Otros', '', 'Lector de Tarjetas 125 Khz Acceso Autonomo 2000 Usuarios', 'ecorp', '56.68', '<div>Control de Acceso Autonomo 1 puerta 2000 Usuarios, Lector de Tarjetas 125 Khz integrado, Modo de operación: Tarjeta/PIN o Ambas. 12v 1000mA. Configurable a traves de RS-232. Temperatura operación: -10 a 70 c, rango de lectura 5-10cm.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:32', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACRE01S', '', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('195', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Lector de Proximidad de Largo Alcance 8m', 'ecorp', '743.35', '<div>Lector de proximidad de largo alcance. Rango de lectura de hasta 8m. Operación en UHFde 860-960MHz, antena integrada conpetencia de hasta 30dBm. PuertoRS-232, Ethernet. Salida Wiegand 26, Compatible con tags ISO1800-6B, ISO1800-6C, Alimentación 12VDC@3000mA. Proteccion IP55.</div><div>Incluye fuente de alimentacion y bracket de montaje.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 11:03:49', 'Estado de México', '1', '100', 'piezas', '1', 'EC-LUHF8M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('196', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Lectora de Proximidad Resistente al Agua', 'ecorp', '30.77', '<div>Lectora de Proximidad Ecorp. Rango de lectura de .5 a 10cm. Alimentación 12V, 50mA, Tamaño 103* 48* 22 (mm) . Distancia de comunicación 100m. Para Exteriores, Resistente al agua. Estándares Internacionales Wigand, 125Khz.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:53', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACRE01', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('197', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Tag Programable Compatible con Lectores UHF', 'ecorp', '0.81', '<div>Tag programable ISO18000-6C compatible con lectores UHF(EC-LUHF8M), Alcance de hasta 5m, Encapsulado en PVC. Dimensiones: 98mm x 17mm.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:25', 'Estado de México', '1', '100', 'pieza', '1', 'EC-TLUHF', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('198', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Tarjeta de Proximidad Ecorp 125Khz', 'ecorp', '1.94', 'Tarjeta de Proximidad Ecorp 1.8mm EM 125Khz . Material: ABS + PVC.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:37', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACCE', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('199', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Tarjeta de Proximidad Ecorp Delgada 0.8mm', 'ecorp', '1.62', 'Tarjeta de Proximidad Ecorp delgada, 0.8mm.EM 125Khz (Imprimible).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:00', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ACCTE', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('200', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Tarjeta de Lectura LR-2000 Repetición Programable', 'ecorp', '2098.80', '<div>LR-2000, Beige,AWIDLogo,902-928 MHz PERIMETER ACCESS CONTROL READERS & ACCESSORIES Long Range Reader, Paquete compacto de 8x8x1,125 pulgadas Repetición programable velocidad de lectura para una sola vez o varias lecturas.Utiliza la tecnología RFID pasiva, no requiere batería para etiquetas.Industria estándar Wiegand y RS-232 salida de datos.Certificado con normas de la FCC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:13', 'Estado de México', '1', '100', 'pieza', '1', 'LR-2000-B-U', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('201', '56', 'Computación y electrónica', 'Audio, tv y video', 'Accesorios para audio, tv y video', 'Sistema Inalámbrico de Interfón de 2 Vías con Video', 'OPTEX', '370.87', '<div>Sistema inalámbrico de Interfón de 2 vías con video. Frente de calle integrado con</div><div>micrófono,parlante,cámara (Sensor CMOS¼”,ResoluciónVGA(640x480px)eiluminador IR para visualización de visitante en día y noche. Operacióncon 6 baterías AA.(Noincluidas). Captura automáticadeimágenes cuando se accionaelbotóndellamado, Almacenamiento de hasta 160 imágenes, para uso en exterior: protección IPX4. Interfón con pantalla LCD de color de 2.5”. Cobertura de hasta 90m (Línea de vista). Frecuencia de comunicación: 2.4GHz . Operación con baterías AAA, Base- Cargador incluido.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:04', 'Estado de México', '1', '100', 'pieza', '1', 'iVISION', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('202', '56', 'Autos y transportación', 'Autos', ' ', 'Braket U para Puertas de Cristal', 'ecorp', '16.03', 'Braket U para puertas de cristal sin marco(350lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p><div><br/></div></div>', '2014-03-07 12:03:27', 'Estado de México', '1', '100', 'pieza', '1', 'EC-180UL ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('203', '56', 'Accesorios para auto y transportación', 'Accesorios para Autos', 'Otros', 'Bracket L inward door', 'ecorp', '15.00', 'Bracket L inward door(350lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:39', 'Estado de México', '1', '100', 'pieza', '1', 'EC-180L ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('204', '56', 'Computación y electrónica', 'Otros', '', 'Bracket ZL para (350lbs)', 'ecorp', '14.58', 'Bracket ZL para (350lbs).\r\n\r\nPrecios en USD Americanos + I.V.A\r\n\r\nEntrega sin costo en Guadalajara y México D.F. Si se requiere envío dentro de la República mexicana, consultar costos de envío.', '2014-03-07 12:03:44', 'Estado de México', '1', '100', 'pieza', '1', 'EC-180ZL', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('205', '56', 'Computación y electrónica', 'Otros', 'Otros', 'Braket U para puertas de cristal sin marco (600lbs)', 'ecorp', '16.03', 'Braket U para puertas de cristal sin marco(600lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-07 12:03:07', 'Estado de México', '2', '100', 'pieza', '1', 'EC-280UL', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('207', '56', 'Accesorios para auto y transportación', 'Seguridad', 'Seguridad', 'Bracket L inward door(600lbs)', 'ecorp', '14.58', 'Bracket L inward door(600lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:01', 'Estado de México', '1', '100', 'pieza', '1', 'EC-280L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('208', '56', 'Accesorios para auto y transportación', 'Seguridad', 'Seguridad', 'Bracket ZL para (600lbs)', 'ecorp', '14.58', 'Bracket ZL para (600lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:25', 'Estado de México', '1', '100', 'pieza', '1', 'EC-280ZL', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('209', '56', 'Accesorios para auto y transportación', 'Seguridad', 'Seguridad', 'Bracket L inward door (1200lbs)', 'ecorp', '27.53', 'Bracket L inward door(1200lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:15', 'Estado de México', '1', '100', 'pieza', '1', 'EC-500L', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('213', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Pibote (Perno) Electrico para Puertas de Cristal o Madera', 'ecorp', '50.20', '<div>Chapa de pibote (Perno) para puertas de cristal, o madera. Salida de supervision de estado NO/NC.</div><div>Aliemntacion 12VDC@350mA, Dimensiones: 200*35*38mm.</div><div><p class=\"MsoNormal\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\"MsoNormal\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:02', 'Estado de México', '1', '20', '', '1', 'EC-ELBGD', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('211', '56', 'Accesorios para auto y transportación', 'Seguridad', '', 'Bracket ZL para (1200lbs)', 'ecorp', '30.77', 'Bracket ZL para (1200lbs).<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:18', 'Estado de México', '1', '100', 'pieza', '1', 'EC-500ZL', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('212', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Chapa Electrica para Puertas de Cristal o Madera', 'ecorp', '38.87', '<div>Chapa de pibote (Perno) para puertas de cristal, o madera Aliemntacion 12VDC@350mA,</div><div>Dimensiones: 200*35*38mm.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 10:03:31', 'Estado de México', '1', '100', 'pieza', '1', 'EC-ELBCH', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('214', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Cerrador de Puertas Retractil', 'ecorp', '43.73', 'Cerrador de Puertas retractil para uso en exterior.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 11:03:24', 'Estado de México', '1', '100', 'pieza', '1', 'EC-RGPS', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('230', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo Articulado 180 Grados 5 Metros', 'WEJOIN', '225.11', 'Brazo Articulado 180 Grados 5 metros.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:43', 'Estado de México', '1', '100', 'pieza', '1', 'EC-B180M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('216', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Liberador de Puertas sin Contacto', 'ecorp', '16.20', '<div>Liberador de puertas sin contacto. Sistema infrarrojo, rango de detección de hasta 10cm. Salida NO/NC. Para uso en exterior IP55.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 11:03:39', 'Estado de México', '1', '100', 'pieza', '1', 'EC-BNTS', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('217', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Botón para Puerta Inoxidable', 'ecorp', '10.53', 'Botón P/Puerta (NO/NC) Acero inoxidable.\r\nPrecios en USD Americanos + I.V.A\r\nEntrega sin costo en Guadalajara y México D.F. Si se requiere envío dentro de la República mexicana, consultar costos de envío.\r\n', '2014-03-10 11:03:01', 'Estado de México', '56', '100', 'pieza', '1', 'EC-801B', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('218', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Caja de Montura Metálica para Botón ', 'ecorp', '8.10', 'Caja de montura Metálica para botón EC-801B.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 11:03:54', 'Estado de México', '1', '100', 'pieza', '1', 'EC-801B-M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('219', '56', 'Todo para el hogar y oficina', 'Otros', '', 'Caja de Montura Plástica para Botón', 'ecorp', '1.62', 'Caja de montura plástica para botón EC-802.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p><div><br/><div><br/></div></div></div>', '2014-03-10 11:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'EC-800B-P', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('220', '56', 'Maquinaria y equipo industrial', 'Automotríz', '', 'Sistema de Apartado de Estacionamiento 2 Controles Inalámbricos', 'WEJOIN', '202.44', '<div>Sistema de apartado de estacionamiento para uso en intemperie, alarma de violación, incluye 2 controles inalámbricos (alcance hasta 30m), batería 12V@7Ah y cargador de batería.</div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<div>Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío. </div>', '2014-03-10 13:03:59', 'Estado de México', '1', '100', 'pieza', '1', 'EC-PKLOCK ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('221', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera de 3 Metros con Iluminación LED 3 Segundos Vista', 'WEJOIN', '1277.79', '<div>Barrera 3 segundos vista (IZ) o (DE) (inlcuye brazo de 3 metros con iluminación LED y sensor de masa a 110 volts, y 2 controles remotos)</div><div>Principales características:</div><div>Motor de tres segundos.</div><div>Largo máximo de brazo: 3 metros.</div><div>De uso MEDIO hasta 800 aperturas diarias.</div><div>Temperatura del sistema de embrague: -20°C a 75°C.</div><div>Voltaje de trabajo 110 V AC.</div><div>Distancia de control de hasta 30 metros.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:44', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-BL3M - (IZ)-(', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('222', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera 3 Segundos Vista  Brazo de 4 Metros 110 volts ', 'WEJOIN', '1277.79', '<div>Barrera 3 segundos vista (IZ) o (DE) (inlcuye brazo de 4 metros con iluminación LED y sensor de masa a 110 volts y 2 controles remotos).</div><div>Principales características:</div><div>Motor de tres segundos.</div><div>Largo máximo de brazo: 4 metros.</div><div>De uso MEDIO hasta 800 aperturas diarias.</div><div>Temperatura del sistema de embrague: -20°C a 75°C.</div><div>Voltaje de trabajo 110 V AC.</div><div>Distancia de control de hasta 30 metros.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:30', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-BL4M - (IZ)-(', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('223', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo led de 3 Mts para Barrera con Indicadores ', 'WEJOIN', '154.99', 'Brazo led de 3 Mts para barrera con indicadores LED´S.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:12', 'Estado de México', '1', '100', 'pieza', '1', 'EC-BL3M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('224', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo led de 4 Mts para Barrera', 'WEJOIN', '154.99', 'Brazo led de 4 Mts para barrera con indicadores LED´S.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:51', 'Estado de México', '1', '100', 'pieza', '1', 'EC-BL4M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('225', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular Alto flujo', 'WEJOIN', '960.00', '<div>Barrera vehicular Alto flujo, Velocidad de Apertura 1 Segundo, Disponible vista Izquierda (IZ) y  Derecha (DE). Alimentacion 110VAC. Preparada para brazos de 3 metros Rectos. Incluye 2 controles inalambricos. </div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:44', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BCH - (IZ)-(DE)', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('226', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo Recto de 3 metros', 'WEJOIN', '113.37', 'Brazo Recto de 3 metros.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:54', 'Estado de México', '2', '100', 'pieza', '1', 'EC-1BRCH3', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('227', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo Recto de 4.5 Metros', 'WEJOIN', '116.60', 'Brazo Recto de 4.5 metros.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:30', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1BRM4.5', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('228', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo Recto de 6 Metros', 'WEJOIN', '119.84', 'Brazo Recto de 6 metros.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:57', 'Estado de México', '1', '100', 'pieza', '1', 'EC-BRG6M', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('229', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Brazo Articulado 180 Grados 3 Metros', 'WEJOIN', '225.11', 'Brazo Articulado 180 Grados 3 metros.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-10 13:03:01', 'Estado de México', '1', '100', 'pieza', '1', 'EC-B180CH', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('231', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular con Brazo de 3m', 'WEJOIN', '1083.45', '<div>Barrera vehicular con brazo de 3m, Velocidad de apertura: 1 segundo. Disponible vista Izquierda (IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:37', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BCH - (IZ)-(', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('232', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular Brazo de 4.5m', 'WEJOIN', '953.89', '<div>Barrera vehicular con brazo de 4.5m, Velocidad de apertura: 3segundos. Disponible vista Izquierda(IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:25', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BM - (IZ)-(D', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('233', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular con Brazo de 6m', 'WEJOIN', '937.69', '<div>Barrera vehicular con brazo de 6m, Velocidad de apertura: 6 segundos. Disponible vista Izquierda (IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:36', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BG - (IZ)-(D', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('234', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular Retráctil Brazo Articulado', 'WEJOIN', '1083.45', '<div>Barrera vehicular retráctil con brazo articulado a 180° 3 metros, Velocidad de apertura: 3 segundos. Disponible vista izquierda (IZ) y derecha(DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:07', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BAM180 DE', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('235', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular Brazo Articulado 180° 3 m Retráctil', 'WEJOIN', '1083.45', '<div>Barrera vehicular retráctil con brazo articulado a 180° 3 metros, Velocidad de apertura: 3 segundos. Disponible vista izquierda (IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:45', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BAM180 IZ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('236', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular Retráctil 5m 180°', 'WEJOIN', '1044.58', '<div>Barrera vehicular retráctil con brazo articulado a 180° 5 metros, Velocidad de apertura: 6 segundos. Disponible vista izquierda (IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:18', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BAG180 DE', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('237', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Barrera Vehicular 5m Sensor de Masa', 'WEJOIN', '1044.58', '<div>Barrera vehicular retráctil con brazo articulado a 180° 5 metros, Velocidad de apertura: 6 segundos. Disponible vista izquierda (IZ) y derecha (DE), Incluye brazo, 2 controles inalámbricos y sensor de masa, Alimentación: 110VAC.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:51', 'Estado de México', '1', '100', 'pieza', '1', 'KIT EC-1BAG180 IZ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('238', '56', 'Inmuebles', 'Venta', 'Otros', 'Motor de Rodamiento Residencial Puertas Hasta 600kg', 'WEJOIN', '257.50', 'Motor de Rodamiento Residencial puertas hasta 600kg a 110 Volts Inlcuye 2 controles.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:06', 'Estado de México', '1', '100', 'pieza', '1', 'EC-3MR500', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('239', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Motor de Rodamiento Industrial puertas hasta 1200kg', 'WEJOIN', '306.09', 'Motor de Rodamiento Industrial puertas hasta 1200kg a 220 Volts Inlcuye 2 controles.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:50', 'Estado de México', '1', '100', 'pieza', '1', 'EC-4MR1000', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('240', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Control Remoto Para Barreras o Motores', 'ecorp', '12.96', 'Control Remoto Para Barreras o Motores.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:12', 'Estado de México', '1', '100', 'pieza', '1', 'EC-CONTR', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('241', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Sensor de Masa Vehicular Ecorp', 'ecorp', '95.55', 'Sensor de masa vehicular marca Ecorp Alimentacion 110V.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 12:03:46', 'Estado de México', '1', '100', 'pieza', '1', 'EC-1LOOP ', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('242', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Base para Instalación en Colado de Concreto de Barreras Vehiculares', 'ecorp', '79.36', 'Base para instalación en colado de concreto de barreras vehiculares ECORP.<div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 13:03:56', 'Estado de México', '1', '100', 'pieza', '1', 'EC-AMEX', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('243', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Torniquete Bidireccional de Acero Inoxidable Sensor Fotoeléctrico', 'WEJOIN', '1595.21', '<div>Torniquete tipo puente bidireccional de acero inoxidable, latencia de hasta 35 ingresos por minuto, sistema totalmente automático con interfaz RFID, puertos RS-232 y RJ45 integrados para comunicación, inspección con sensor fotoeléctrico, incluye pantalla indicadora de trafico. Sistema de bajo consumo, menor a 50W .</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 13:03:27', 'Estado de México', '1', '100', 'pieza', '1', 'EC-TP112S', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('244', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Torniquete Tripoide Bidireccional de Acero Inoxidable ', 'WEJOIN', '1353.90', '<div>Torniquete tripoide bidireccional de acero inoxidable, latencia de hasta 35 ingresos por minuto, sistema manual con interfaz RFID, puertos RS-232 y RJ45 integrados para comunicación, inspección con sensor fotoeléctrico, incluye pantalla indicadora de trafico. Sistema de bajo consumo, aproximadamente 30W.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 13:03:19', 'Estado de México', '1', '100', 'pieza', '1', 'EC-T122S', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('245', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Torniquete de Bandera Bidireccional de Acero Inoxidable Automático', 'WEJOIN', '1805.74', '<div>Torniquete de bandera bidireccional de acero inoxidable, tiempo de apertura / cierre 2.5 s , sistema totalmente automático, puerto RS-485 integrado para comunicación., con función anti-golpe.</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div>', '2014-03-11 13:03:09', 'Estado de México', '1', '100', 'pieza', '1', 'EC-TB202', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('246', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Torniquete Cuerpo Completo Bidirecional ', 'ecorp', '7198.68', '<div>Torniquete cuerpo completo bidirecional, 1000 ciclos por hora, liberador de emergencia, control electronico inteligente, terminado en pintura electrostática color gris, dimensiones 2.32mt. Alto por 1.50mt. Refacciones disponibles, espacio para colocar lectoras, (proporcionar modelo y marca,o medidas de las mismas).</div><div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<p class=\\\"MsoNormal\\\">Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío.</p></div><div> </div>', '2014-03-11 13:03:42', 'Estado de México', '1', '100', 'pieza', '1', 'EC-D4009', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('247', '56', 'Maquinaria y equipo industrial', 'Otros', '', 'Torniquete de Cuerpo Completo Bidirecional Control Electronico Inteligente', 'ecorp', '10039.28', '<div>Torniquete de cuerpo completo bidirecional, 1000 ciclos por hora, liberador de emergencia, control electronico inteligente, terminado en acero inoxidable, (tapas negras) dimensiones 2.32mt. Alto por 1.50mt. Refacciones disponibles, espacio para colocar lectoras, (proporcionar modelo y marca,o medidas de las mismas).</div><p class=\\\"MsoNormal\\\">Precios en USD Americanos + I.V.A</p>\r\n\r\n<div>Entrega sin costo en Guadalajara y México D.F. Si se\r\nrequiere envío dentro de la República mexicana, consultar costos de envío. </div>', '2014-03-11 13:03:21', 'Estado de México', '2', '100', 'pieza', '1', 'EC-T4009A', 'U$S', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('264', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Almohada Terapeutica-Cojín Mouse de semillas naturales y hierbas.Color Azul.', 'Angela A&H', '75.00', '<p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN MOUSE</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 12cm x 18cm </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> Peso: Aproximadamente. 150 gramos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, manzanilla y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Ayuda a evitar el Síndrome del Túnel Carpeano a través de un soporte adecuado en línea recta, amoldada a la forma natural del antebrazo aumentando el área de apoyo y reduciendo el punto de presión. Además el contenido herbal y el calor producen una relajación en la zona aparte de ofrecer un aroma relajante mientras trabaja con el teclado o el mouse. Debe colocarlo bajo el antebrazo hasta que sienta que tiene la muñeca en línea recta con el brazo. Lo pude también usar en frío. Instrucciones: caliéntese en el microondas por 1 minuto. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Conservación del producto: </u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">DESCUENTOS: </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\">10% de descuento a partir de 10 piezas.  </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 15% de descuento a partir de 20 piezas</font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 20% de descuento a partir de 30 piezas. </font></p><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*LOS COLORES PUEDEN VARIAR.</p>', '2014-04-29 00:04:35', 'Distrito Federal', '2', '5', 'Piezas', '1', '442569', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('265', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Almohada Terapeutica-Cervical-Hombros de semillas naturales y hierbas.Color rosa', 'Angela A&H', '340.00', '<p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN CERVICAL - HOMBROS </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 40cm x 41cm</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aproximadamente  1,600 gramos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Esta almohada te brindará un aroma que te relajará y eliminará el cansancio y el estrés después de un día de trabajo. Instrucciones: caliéntese en el microondas de 2 a 3 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Si la usa con terapia de calor ayuda a eliminar:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Dolencias en el cuello y hombros, tensión por stress, tortícolis, si lo usas en el pecho ayuda a eliminar gripe y tos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Con su uso en frío nos ayuda:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">A eliminar stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> DESCUENTOS: </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 10% de descuento a partir de 10 piezas.  </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 15% de descuento a partir de 20 piezas</font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 20% de descuento a partir de 30 piezas. </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial;\"><font color=\"#424242\">*LOS COLORES PUEDEN VARIAR. </font></p>', '2014-04-29 03:04:06', 'Distrito Federal', '1', '5', 'Piezas', '1', '532872', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('268', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador de contactos eléctricos-CFC Free Aerosol Secado rápido / flamable. ', 'LPS ', '348.00', '<div>Contenido Neto: 312gramos. </div><div><br/></div><div>Secado rápido / flamable</div><div><br/></div><div>Limpiador de contactos eléctricos.</div><div>ideal para partes eléctricas/ electrónicas delicadas.</div><div>Limpia y desengrasa mecanismos de precisión delicados.</div><div>Con su acción penetrante remueve aceite, grasa, suciedad, flux y otros contaminantes. </div><div>No contiene solventes clorados.</div><div>No deja residuo, no mancha y es seguro en plásticos.</div><div>Rápida evaporación. </div><div>Válvula inverta permite rociar en cualquier posición.</div>', '2014-04-29 21:04:00', 'Estado de México', '1', '100', 'Piezas', '1', '03116', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('269', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador de Contactos eléctricos- Micro X Aerosol Limpiador de contactos.', 'LPS ', '200.00', '<div>Contenido Neto: 312gramos. </div><div><br/></div><div>Rápida penetración.</div><div>No contiene solventes clorados.</div><div>Sin residuo.</div><div>No mancha.</div><div>Seca rápido.</div><div>Seguro en plásticos y metales.</div><div>Válvula, inverta permite rociar en cualquier posición.</div>', '2014-04-29 21:04:08', 'Estado de México', '1', '150', 'Piezas', '1', '04516', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('298', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa biodegradable de extremo rendimiento resistente a altas temperaturas Safir', 'Rocol', '16295.00', '<div>Grasa para rodamientos de Alta Temperatura</div><div><br/></div><div>Producto:</div><div>Safiro Alta Temperatura 2 cubeta 17 Kg</div><div><br/></div><div>Descripción:</div><div>Temperaturas extremas Premium y grasa resistente al químico.</div><div>Rendimiento extremo, poliéter perfluorado, grasa de extrema presión fortificada con PTFE. </div><div>Diseñado para operar en donde las grasas convencionales fallan debido a la temperatura o el ataque químico.</div><div>*Espesada con Complejo de litio y aceite de sintético de PAO.</div><div>*Contiene antioxidantes y NO carboniza ni escurre, </div><div>*Grado NLGI 2</div><div>*Temperaturas de trabajo: -40ºC A 200ºC  (hasta 220ºC  por períodos cortos).</div><div>*Intervalos de lubricación</div><div>*Excelente resistencia a la corrosión por humedad y temperatura.</div><div><br/></div><div>Lubricación:</div><div>*Rodamientos en condiciones extremas. </div><div>*Rodamientos de bolas, rodillos o bujes.</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-04-30 16:04:14', 'Querétaro', '1', '100', 'cubetas', '1', '1273-7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('270', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Precision Clean Concentrado Desengrasante / Limpiador multi-propósito.', 'LPS ', '692.00', '<div>Garrafa Contenido Neto: 3.78Litros. </div><div><br/></div><div>Súper fuerza industrial para eliminar las manchas mas difíciles. </div><div>Base agua biodegradable.</div><div>Formula alcalina inhibe la formación de oxidación instantánea. </div><div>pH- Concentrado = 13  - Listo para usar = 12.5</div><div>no contiene butilo, solventes clorados o derivados del petróleo, cloro, amonio o abrasivos.</div><div>Seguro en la mayoría de las superficies excepto Magnesio.</div><div>Disponible en tres presentaciones: aerosol. concentrado y listo para usar.</div><div><br/></div>', '2014-04-29 21:04:08', 'Estado de México', '1', '200', 'Piezas', '1', '02701', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('271', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial -Wear Guard High Load Sistema Epóxico resistente a la abrasión', 'Devcon Industrial', '6504.00', '<div> Peso: Cubeta de 13.6 kg.</div><div><br/></div><div>Sistema Epoxy con perlas de cerámica alúmina.</div><div>Altamente resistente a la abrasión</div><div>Excepcional resistencia a una amplia gama de ácidos, bases, soluciones salinas saturadas, aceites y otros químicos.</div><div><br/></div><div>Reparaciones:</div><div><br/></div><div>Lavadores de gases, sistemas expuestos a cenizas.</div><div>Codos de tuberías, hameros y tolvas.</div><div>Bombas de lodos</div>', '2014-04-29 22:04:39', 'Estado de México', '1', '200', 'Piezas', '1', '11490', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('272', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial - Resanador 10-10 Sustituto de concreto para reparaciones.', 'Devcon Industrial', '1469.00', '<div><br/></div><div>Peso: Cubeta de 10 kg.</div><div><br/></div><div>Montero Epóxico con carga de sílica.</div><div>Resistencia a ácidos y álcalis.</div><div>Resistencia mecánica 3 veces más que un concreto.</div><div>Reparación de hoyos y grietas en el concreto.</div><div>Aplicación y adhesión a concreto, metales, madera, ladrillo, piedra y así mismo.</div><div>No requiere juntas de expansión.</div>', '2014-04-29 22:04:33', 'Estado de México', '1', '350', 'Piezas', '1', '10-10', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('273', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial-Flexane Reparador de Hule 80 Pasta', 'Devcon Industrial', '945.00', '<div>Peso: Bote de 454 gramos. </div><div><br/></div><div>Compuesto Reparador de Uretano Flexible</div><div>Sistema de Hule Sintético 2 componentes. </div><div>Fácil de mezclar y se aplica con espátula.</div><div>Endurece hasta una consistencia de dureza media de caucho (87 Shore A).</div><div>Baja contracción.</div><div>No requiere calor para el curado.</div><div>Autonivelantes</div><div>Reparaciones:</div><div>Partes de hule descontinuadas (reproducción).</div><div>Formación de moldes flexibles.</div><div>Como juntas de control de hormigón</div>', '2014-04-29 22:04:34', 'Estado de México', '1', '150', 'Piezas', '1', '15820', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('274', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial - Plastialum Adhesivo Epóxico con Carga de Aluminio', 'Devcon Industrial', '794.00', '<div>Bote de Plástico Contenido Neto: 454gramos.</div><div><br/></div><div>Sistema Epoxy con carga de aluminio, 2 componentes.: </div><div>Adhesivo y reparador o recubrimiento.</div><div>De fácil aplicación, sin equipo especializado.</div><div>No escurre y es inoxidable.</div><div>Se adhiere al aluminio y a la mayoría de los metales.</div><div>Acabados de aluminio.</div><div><br/></div><div>Reparación de:</div><div><br/></div><div>Piezas fundidas, guías, matrices o dispositivos de fijación.</div><div><br/></div><div>Reproducción precisa de detalles y acabados de precisión.</div>', '2014-04-29 22:04:56', 'Estado de México', '1', '250', 'Piezas', '1', '10610', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('275', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial - Reparadores de Metal- Plastiacero Normal Líquido', 'Devcon Industrial', '618.00', '<div>Jeringa Contenido Neto: 25 ml. </div><div><br/></div><div>Adhesivo Epóxico con carga de acero, presentación en jeringa. Reparaciones que requieren más tiempo para realizarlas, y que exigen mayores tolerancias a ruptura y temperatura. Ideal para superficies horizontales. Rellenado de grietas o fisuras milimétricas en maquinarias y motores. Moldeado de cualquier tipo de piezas, tales como aquellas difíciles de conseguir o de precio demasiado alto. Reparaciones de emergencia de objetos metálicos en el hogar u oficina. </div><div><br/></div><div>Tiempo de Aplicación:  45 minutos (antes de secar) </div><div><br/></div><div>Tiempo de Curado:  16 horas.</div>', '2014-04-29 22:04:16', 'Estado de México', '1', '350', 'Piezas', '1', '10210', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('315', '87', 'Maquinaria y equipo industrial', 'Otros', '', 'Marcadores Industriales Dykem Alta eficiencia sobre aluminio, Consumibles para t', 'DYKEM', '720.00', '<div>La caja contiene 12 piezas.</div><ul type=\"disc\">\r\n <li class=\"MsoNormal\">Usos\r\n     en interiores como en exteriores.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Pintan\r\n     virtualmente cualquier superficie. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Las\r\n     marcas no se decoloran o pierden opacidad.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Fórmula\r\n     que no contiene Xileno.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Alta\r\n     eficiencia sobre aluminio, con alta capacidad de pintado.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Tiempo\r\n     de secado de 25 a 35 segundos.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">El\r\n     mecanismo Valve Action previene el secado de la pintura en el\r\n     cartucho. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">La\r\n     punta puede reemplazarse para asegurar el uso de pintura en cada marcador.<o:p></o:p></li>\r\n</ul>\r\n\r\n<p style=\"margin-left: 36pt; background-position: initial initial; background-repeat: initial initial;\" class=\"MsoNormal\">Aplicaciones:<o:p></o:p></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\">Identificar\r\n     inventarios.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Trabajos\r\n     en proceso.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Identificación\r\n     de herramienta.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Trabajos\r\n     de soldadura o forjado de metales.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Producto\r\n     terminado.<font face=\"Arial, sans-serif\" color=\"#646363\"><span style=\"font-size: 16pt;\"><o:p></o:p></span></font></li>\r\n</ul>', '2014-04-30 17:04:28', 'Baja California', '1', '90', 'cajas', '1', '84006 ', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('278', '83', 'Fiestas y eventos', 'Servicio de banquetes', '', 'Tortillero de Cerámica de Alta Temperatura decorado a mano.', 'La Vajilla Mexicana', '156.00', 'Tortillero de Cerámica de Alta Temperatura elaborado a mano en diferentes colores y diseños unicos. <div><br/></div><div>Caracteristicas: </div><div><br/></div><div>Resistente al calor del Horno de Microondas y convencional. </div><div>Resiste a bajas temperaturas. </div><div>Se puede limpiar en lavavajillas.</div><div>Se puede usar como decoración. </div><div>Recuerdo de fiestas. </div><div>Usar como recipiente contenedor de alimentos. </div><div><br/></div><div>Medidas:</div><div><br/></div><div>Diametro de 20 cm aprox. </div><div>Profundidad de 7cm altura. aprox. </div><div><br/></div><div>Peso: </div><div><br/></div><div>1,100 gr. </div>', '2014-04-30 00:04:03', 'Distrito Federal', '1', '4', 'Piezas', '1', 'TOR001', '$', '130.00', '13', '24', '99.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('276', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial  -Reparadores de Metal- Plastiacero Normal Pasta', 'Devcon Industrial', '1568.00', '<div>Pasta Lata Contenido Neto: 70 gramos. </div><div><br/></div><div>Adhesivo Epóxico con carga de acero, presentación en pasta. Reparaciones en superficies horizontales o verticales que requieren más tiempo para realizarlas, y que exigen mayores tolerancias a ruptura y temperatura. Recubrimientos sobre placas metálicas porosas o lisas. Formar o recuperar cuerdas metálicas barridas de cualquier dimensión. Rellenado de grietas o fisuras en el monoblock de motores. Recuperación de dientes de engranes convencionales rotos. Reparación de radiadores. Para el rellenado de fisuras en losetas, pisos y concreto. </div><div><br/></div><div>Tiempo de Aplicación: 45 minutos (antes de secar) </div><div><br/></div><div>Tiempo de Curado: 16 horas. </div>', '2014-04-29 22:04:28', 'Estado de México', '1', '350', 'Piezas', '1', '10120', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('277', '82', 'Maquinaria y equipo industrial', 'Otros', '', 'Devcon Industrial- Reparadores de Metal-Plastiacero Normal Rápido', 'Devcon Industrial', '810.00', '<div>Pasta Lata Contenido Neto: 70 gramos.</div><div>Adhesivo Epóxico con carga de acero, presentación en pasta. Por ser pasta, no se escurre. Reparaciones de emergencia en superficies horizontales o verticales. Pequeñas perforaciones o fisuras en el tanque de gasolina. Reparación de tolvas, carcazas y recipientes metálicos perforados. Reparación de soportes, aspas, compresores. Pegado o reparación de objetos metálicos en el hogar u oficina.</div><div><br/></div><div>Tiempo de Aplicación:  5 minutos (antes de secar) </div><div><br/></div><div>Tiempo de Curado:  1 hora.</div><div><br/></div><div><br/></div>', '2014-04-29 22:04:10', 'Estado de México', '1', '200', 'Piezas', '1', '10240', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('317', '87', 'Maquinaria y equipo industrial', 'Textiles', '', 'Marcadores Industriales Dykem Textil Dalo Secado rápido en diversos tejidos ', 'DYKEM', '642.00', '<div>La caja contiene 6 piezas.</div><ul type=\"disc\">\r\n <li class=\"MsoNormal\">Marcador\r\n     para uso en materiales textiles<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Marcador\r\n     novedoso por si ultra alta capacidad, el compartimiento “T” en el marcador\r\n     Dalo & TexpenTextile deja una marca brillante y fuerte. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Secado\r\n     rápido en diversos tejidos sintéticos con algodón. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Cuerpo\r\n     de aluminio grande y de alto desempeño. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Punta\r\n     de balín de precisión<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Válvula\r\n     de goma que controla el flujo. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Marcador\r\n     ergonómicamente correcto que permite marcar en todos lo ángulos, incluso\r\n     en posición punta arriba.<font face=\"Arial, sans-serif\" color=\"#646363\"><span style=\"font-size: 16pt;\"><o:p></o:p></span></font></li>\r\n</ul>', '2014-04-30 18:04:53', 'Baja California', '1', '100', 'cajas', '1', '23023', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('382', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Antifaz de semillas naturales y hierbas.Color Naranja.  ', 'Angela A&H', '99.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">ANTIFAZ HERBAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 20cm x 10cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: 200 gramos Aprox. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Contienen una mezcla perfecta de Semillas y Hierbas Medicinales que en combinación con el Calor o Frió emiten Aromas con propiedades Curativas y Relajantes. Han sido diseñadas para aliviar los dolores de cabeza, jaquecas, cansancio de ojos, cirugía de parpados entre otras terapias; entregando los aromas de las hierbas involucradas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Ideales para ojos cansados ó irritados.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Tenerlo dentro del congelador en su bolsa hermética.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\"><br/></span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\">DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div><br/></div><div>*LOS COLORES PUEDEN VARIAR. </div></div>', '2014-05-05 02:05:27', 'Distrito Federal', '1', '5', 'Piezas', '1', '875427', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('381', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Antifaz de semillas naturales y hierbas.Color Azul Marino.  ', 'Angela A&H', '99.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">ANTIFAZ HERBAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 20cm x 10cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: 200 gramos Aprox. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Contienen una mezcla perfecta de Semillas y Hierbas Medicinales que en combinación con el Calor o Frió emiten Aromas con propiedades Curativas y Relajantes. Han sido diseñadas para aliviar los dolores de cabeza, jaquecas, cansancio de ojos, cirugía de parpados entre otras terapias; entregando los aromas de las hierbas involucradas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Ideales para ojos cansados ó irritados.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Tenerlo dentro del congelador en su bolsa hermética.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\"><br/></span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\">DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div><br/></div><div>*LOS COLORES PUEDEN VARIAR. </div></div>', '2014-05-05 02:05:15', 'Distrito Federal', '2', '5', 'Piezas', '1', '875426', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('383', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Antifaz de semillas naturales y hierbas.Color Café.', 'Angela A&H', '99.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">ANTIFAZ HERBAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 20cm x 10cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: 200 gramos Aprox. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Contienen una mezcla perfecta de Semillas y Hierbas Medicinales que en combinación con el Calor o Frió emiten Aromas con propiedades Curativas y Relajantes. Han sido diseñadas para aliviar los dolores de cabeza, jaquecas, cansancio de ojos, cirugía de parpados entre otras terapias; entregando los aromas de las hierbas involucradas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Ideales para ojos cansados ó irritados.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Tenerlo dentro del congelador en su bolsa hermética.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\"><br/></span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\">DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div><br/></div><div>*LOS COLORES PUEDEN VARIAR. </div></div>', '2014-05-05 02:05:43', 'Distrito Federal', '1', '5', 'Piezas', '1', '875428', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('380', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Cefálea/Multiusos de semillas naturales y hierbas.Color Negro', 'Angela A&H', '170.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">CEFÁLEA MULTIUSOS </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 10cm x 38cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aprox. 300 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, melisa y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Debe colocarlo sobre la frente, cienes, nuca y otros lugares de la cabeza por el tiempo que estime conveniente. Alivia dolores de muñecas, codos, rodillas, tobillos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Instrucciones:</u> caliéntese en el microondas por 1 minuto. Evite el sobrecalentamiento. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Conservación del producto:</u> Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Cuando lo usas en frío ayuda a eliminar:</u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolor de cabeza, migraña, lesiones musculares recientes, baja la temperatura alta sin ser agresivo para la piel, excelente opción para usarlo con niños.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cuando lo usas con terapia térmica:</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolores en rodillas, muñecas, tobillos, codos y los dolores de mastitis (auxiliar para desinflamar los senos cuando se está amamantando).</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">DESCUENTOS: </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*LOS COLORES PUEDEN VARIAR. </div>', '2014-05-05 02:05:07', 'Distrito Federal', '1', '5', 'Piezas', '1', '643722', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('284', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Cervical-Hombros de semillas naturales y hierbas.Color Azul. ', 'Angela A&H', '340.00', '<p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN CERVICAL - HOMBROS </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 40cm x 41cm</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aproximadamente  1,600 gramos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Esta almohada te brindará un aroma que te relajará y eliminará el cansancio y el estrés después de un día de trabajo. Instrucciones: caliéntese en el microondas de 2 a 3 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Si la usa con terapia de calor ayuda a eliminar:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Dolencias en el cuello y hombros, tensión por stress, tortícolis, si lo usas en el pecho ayuda a eliminar gripe y tos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Con su uso en frío nos ayuda:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">A eliminar stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> DESCUENTOS: </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 10% de descuento a partir de 10 piezas.  </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 15% de descuento a partir de 20 piezas</font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 20% de descuento a partir de 30 piezas. </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial;\"><font color=\"#424242\">*LOS COLORES PUEDEN VARIAR. </font></p>', '2014-04-30 04:04:36', 'Distrito Federal', '1', '5', 'Piezas', '1', '532873', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('285', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Cervical-Hombros de semillas naturales y hierbas.Color Azul.', 'Angela A&H', '340.00', '<p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN CERVICAL - HOMBROS </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 40cm x 41cm</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aproximadamente  1,600 gramos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Esta almohada te brindará un aroma que te relajará y eliminará el cansancio y el estrés después de un día de trabajo. Instrucciones: caliéntese en el microondas de 2 a 3 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Si la usa con terapia de calor ayuda a eliminar:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Dolencias en el cuello y hombros, tensión por stress, tortícolis, si lo usas en el pecho ayuda a eliminar gripe y tos.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u>Con su uso en frío nos ayuda:</u></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">A eliminar stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> DESCUENTOS: </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 10% de descuento a partir de 10 piezas.  </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 15% de descuento a partir de 20 piezas</font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"> 20% de descuento a partir de 30 piezas. </font></p><p style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><font color=\"#424242\"><br/></font></p><p style=\"color: rgb(66, 66, 66); font-family: arial;\"><font color=\"#424242\">*LOS COLORES PUEDEN VARIAR. </font></p>', '2014-04-30 05:04:41', 'Distrito Federal', '1', '5', 'Piezas', '1', '532874', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('286', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Lumbar de semillas naturales y hierbas.Color Morado Rayas. ', 'Angela A&H', '230.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN LUMBAR </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 36cm x 21cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso:  Aproximadamente 700 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este Cojín o Almohadilla Herbal contiene una mezcla perfecta de semillas naturales y hierbas como manzanilla, hierbabuena, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Regálese con momento de Relax con esta práctica y desestresante almohada. Instrucciones: caliéntese en el microondas de 1 a 2 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><p style=\"text-align: center;\">Si la usa con terapia de calor ayuda a eliminar:</p><p style=\"text-align: center;\">Dolores musculares, ciática, lumbago, dolores menstruales, artritis, artrosis, tortícolis, molestias lumbares, contracturas, tendinitis, stress, y en general todas aquellas dolencias que requieren de calor local y antinflamatorios.</p><p></p><p style=\"text-align: center;\">Con su uso en frío nos ayuda:</p><p style=\"text-align: center;\">Con ojos inflamados, moretones, síndrome del Túnel Carpiano, fiebre, pies cansados, dolor de muelas, picaduras de insectos, stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"text-align: center;\"> DESCUENTOS: </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </p><p style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</p><p style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR.</p></div>', '2014-04-30 05:04:37', 'Distrito Federal', '1', '5', 'Piezas', '1', '359783', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('287', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Lumbar de semillas naturales y hierbas.Color Azul Rayas.', 'Angela A&H', '230.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN LUMBAR </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 36cm x 21cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso:  Aproximadamente 700 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este Cojín o Almohadilla Herbal contiene una mezcla perfecta de semillas naturales y hierbas como manzanilla, hierbabuena, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Regálese con momento de Relax con esta práctica y desestresante almohada. Instrucciones: caliéntese en el microondas de 1 a 2 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><p style=\"text-align: center;\">Si la usa con terapia de calor ayuda a eliminar:</p><p style=\"text-align: center;\">Dolores musculares, ciática, lumbago, dolores menstruales, artritis, artrosis, tortícolis, molestias lumbares, contracturas, tendinitis, stress, y en general todas aquellas dolencias que requieren de calor local y antinflamatorios.</p><p></p><p style=\"text-align: center;\">Con su uso en frío nos ayuda:</p><p style=\"text-align: center;\">Con ojos inflamados, moretones, síndrome del Túnel Carpiano, fiebre, pies cansados, dolor de muelas, picaduras de insectos, stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"text-align: center;\"> DESCUENTOS: </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </p><p style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</p><p style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR.</p></div>', '2014-04-30 05:04:10', 'Distrito Federal', '1', '230', 'Piezas', '1', '359784', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('288', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Lumbar de semillas naturales y hierbas.Color Azul Puntos. ', 'Angela A&H', '230.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN LUMBAR </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 36cm x 21cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso:  Aproximadamente 700 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este Cojín o Almohadilla Herbal contiene una mezcla perfecta de semillas naturales y hierbas como manzanilla, hierbabuena, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Regálese con momento de Relax con esta práctica y desestresante almohada. Instrucciones: caliéntese en el microondas de 1 a 2 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><p style=\"text-align: center;\">Si la usa con terapia de calor ayuda a eliminar:</p><p style=\"text-align: center;\">Dolores musculares, ciática, lumbago, dolores menstruales, artritis, artrosis, tortícolis, molestias lumbares, contracturas, tendinitis, stress, y en general todas aquellas dolencias que requieren de calor local y antinflamatorios.</p><p></p><p style=\"text-align: center;\">Con su uso en frío nos ayuda:</p><p style=\"text-align: center;\">Con ojos inflamados, moretones, síndrome del Túnel Carpiano, fiebre, pies cansados, dolor de muelas, picaduras de insectos, stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"text-align: center;\"> DESCUENTOS: </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </p><p style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</p><p style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR.</p></div>', '2014-04-30 05:04:24', 'Distrito Federal', '1', '5', 'Piezas', '1', '359789', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('289', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Lumbar de semillas naturales y hierbas.Color Rosa Puntos. ', 'Angela A&H', '230.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN LUMBAR </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 36cm x 21cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso:  Aproximadamente 700 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Este Cojín o Almohadilla Herbal contiene una mezcla perfecta de semillas naturales y hierbas como manzanilla, hierbabuena, eucalipto, menta y toronjil y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. Regálese con momento de Relax con esta práctica y desestresante almohada. Instrucciones: caliéntese en el microondas de 1 a 2 minutos. Evite el sobrecalentamiento. Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. Conservación del producto: Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><p style=\"text-align: center;\">Si la usa con terapia de calor ayuda a eliminar:</p><p style=\"text-align: center;\">Dolores musculares, ciática, lumbago, dolores menstruales, artritis, artrosis, tortícolis, molestias lumbares, contracturas, tendinitis, stress, y en general todas aquellas dolencias que requieren de calor local y antinflamatorios.</p><p></p><p style=\"text-align: center;\">Con su uso en frío nos ayuda:</p><p style=\"text-align: center;\">Con ojos inflamados, moretones, síndrome del Túnel Carpiano, fiebre, pies cansados, dolor de muelas, picaduras de insectos, stress, dolores de cabeza, migraña, inflamaciones, síntomas provocados por el “golpe de calor”.</p><p style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </p><p style=\"text-align: center;\"> DESCUENTOS: </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </p><p style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</p><p style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </p><p style=\"text-align: center;\"><br/></p><p style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR.</p></div>', '2014-04-30 05:04:51', 'Distrito Federal', '1', '5', 'Piezas', '1', '359785', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('379', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Cefálea/Multiusos de semillas naturales y hierbas.Color Azul.', 'Angela A&H', '170.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">CEFÁLEA MULTIUSOS </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas: 10cm x 38cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aprox. 300 gramos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como lavanda, poleo, melisa y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Debe colocarlo sobre la frente, cienes, nuca y otros lugares de la cabeza por el tiempo que estime conveniente. Alivia dolores de muñecas, codos, rodillas, tobillos.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Instrucciones:</u> caliéntese en el microondas por 1 minuto. Evite el sobrecalentamiento. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Conservación del producto:</u> Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. No debe lavarse.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Cuando lo usas en frío ayuda a eliminar:</u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolor de cabeza, migraña, lesiones musculares recientes, baja la temperatura alta sin ser agresivo para la piel, excelente opción para usarlo con niños.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cuando lo usas con terapia térmica:</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolores en rodillas, muñecas, tobillos, codos y los dolores de mastitis (auxiliar para desinflamar los senos cuando se está amamantando).</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><span style=\"text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </span></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">DESCUENTOS: </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*LOS COLORES PUEDEN VARIAR. </div>', '2014-05-05 02:05:20', 'Distrito Federal', '1', '5', 'Piezas', '1', '643721', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('290', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador desengrasante de usos multiples- Pre Solve Aerosol (Base solvente)', 'LPS ', '294.00', '<div>Contenido Neto: 425gr. </div><div><br/></div><div>Desengrasante cítrico</div><div>Remueve pegamento, grasa, cera, brea y suciedad</div><div>Limpiador de alto desempeño que al contacto limpia.</div><div>Seguro en la mayoría de los plásticos y metales.</div><div>Actúa rápido, profunda penetración. </div><div>Base natural.</div><div>No contiene solventes clorados.</div><div>Flash point superior a 38ºC</div><div>No conductor</div><div>Deja poco residuo.</div>', '2014-04-30 16:04:41', 'Estado de México', '1', '200', 'Piezas', '1', '01420', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('291', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa industrial de alto rendimiento de triple duracion Safiro 2 cubeta 17 Kg', 'Rocol', '5473.00', '<div>Grasa multipropósito para rodamientos</div><div><br/></div><div>Producto:</div><div>Safiro 2 cubeta 17 Kg</div><div><br/></div><div>Descripcion:</div><div>Alto rendimiento, grasa de triple duracion.</div><div>Larga vida Revolucionario grasa de rodamiento para una lubricación óptima.</div><div>Adecuado para todo tipo de bolas, de rodillos y planos.</div><div>*Espesada con Multicomplejo de Litio.</div><div>*Grado NLG 2.</div><div>*Temperaturas de trabajo de -30ºC a 150ºC.</div><div>*Resistente al lavado por agua (&lt;2.0% perdida). </div><div>*Excelente rendimiento a presiones extremas (fuerza de soldadura &gt; 800 kg). </div><div>*Lubrica y dura 3 veces más que las grasas convencionales de litio.</div><div>*Intervalos de lubricación muy prolongados.</div><div>*Protege y resiste la corrosión. </div><div>*Protege de la contaminación por polvo. </div><div><br/></div><div>Lubricación:</div><div>*Rodamientos de bolas.</div><div>*Rodamientos de rodillos </div><div>*Rodamientos planos</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 16:04:06', 'Querétaro', '1', '100', 'cubetas', '1', '1217-7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('378', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal- Cojín Abdominal de semillas naturales y hierbas- Color Azul. ', 'Angela A&H', '190.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN ABDOMINAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas:  27cm x 22cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aprox. 450 gramos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como mejorana, poleo, melisa, menta y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Úsala en sustitución de la compresa de agua caliente, ayuda a desinflamar el estómago cuando sientes molestias de colitis, indigestión, estás en periodo premenstrual o menstrual. También se puede usar para eliminar la mastitis en periodo de lactancia o cuando tu periodo menstrual te causa esta molestia. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Instrucciones: </u>caliéntese en el microondas por 2 minuto. Evite el sobrecalentamiento.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Conservación del producto: </u>Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Cuando lo usas en frío ayuda a eliminar: </u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolor de cabeza, migraña, lesiones musculares recientes, baja la temperatura alta sin ser agresivo para la piel, excelente opción para usarlo con niños. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cuando lo usas con terapia térmica: </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolores en rodillas, muñecas, tobillos, codos y los dolores de mastitis (auxiliar para desinflamar los senos cuando se está amamantando). </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\"> DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR. </div><div><br/></div></div>', '2014-05-05 01:05:24', 'Distrito Federal', '1', '5', 'Piezas', '1', '732495', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('301', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa biodegradable de extremo rendimiento resistente a altas temperaturas Safir', 'Rocol', '4036.00', '<div>Grasa para rodamientos de Alta Temperatura</div><div><br/></div><div>Producto:</div><div>Safiro Alta Temperatura 2 cubeta 4 Kg</div><div><br/></div><div>Descripción:</div><div>Temperaturas extremas Premium y grasa resistente al químico.</div><div>Rendimiento extremo, poliéter perfluorado, grasa de extrema presión fortificada con PTFE. </div><div>Diseñado para operar en donde las grasas convencionales fallan debido a la temperatura o el ataque químico.</div><div>*Espesada con Complejo de litio y aceite de sintético de PAO.</div><div>*Contiene antioxidantes y NO carboniza ni escurre, </div><div>*Grado NLGI 2</div><div>*Temperaturas de trabajo: -40ºC A 200ºC  (hasta 220ºC  por períodos cortos).</div><div>*Intervalos de lubricación</div><div>*Excelente resistencia a la corrosión por humedad y temperatura.</div><div><br/></div><div>Lubricación:</div><div>*Rodamientos en condiciones extremas. </div><div>*Rodamientos de bolas, rodillos o bujes.</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-04-30 16:04:58', 'Querétaro', '1', '100', 'cubetas', '1', '1273-6', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('292', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa industrial de alto rendimiento de triple duracion Safiro 2 cubeta 4 Kg', 'Rocol', '1355.00', '<div>Grasa multipropósito para rodamientos</div><div><br/></div><div>Producto:</div><div>Safiro 2 cubeta 4 Kg</div><div><br/></div><div>Descripcion:</div><div>Alto rendimiento, grasa de triple duracion.</div><div>Larga vida Revolucionario grasa de rodamiento para una lubricación óptima.</div><div>Adecuado para todo tipo de bolas, de rodillos y planos.</div><div>*Espesada con Multicomplejo de Litio.</div><div>*Grado NLG 2.</div><div>*Temperaturas de trabajo de -30ºC a 150ºC.</div><div>*Resistente al lavado por agua (&lt;2.0% perdida). </div><div>*Excelente rendimiento a presiones extremas (fuerza de soldadura &gt; 800 kg). </div><div>*Lubrica y dura 3 veces más que las grasas convencionales de litio.</div><div>*Intervalos de lubricación muy prolongados.</div><div>*Protege y resiste la corrosión. </div><div>*Protege de la contaminación por polvo. </div><div><br/></div><div>Lubricación:</div><div>*Rodamientos de bolas.</div><div>*Rodamientos de rodillos </div><div>*Rodamientos planos</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 16:04:23', 'Querétaro', '1', '100', 'cubetas', '1', '1217-6', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('300', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'SUPER GLUE ADHESIVO INSTANTÁNEO mental, plástico, hule, etc.', 'Permatex', '3860.00', '<p class=\"MsoNormal\">La caja contiene 20 piezas.</p><p class=\"MsoNormal\">Diseñado\r\npara lograr una unión mas rápida y duradera. Se aplica fácilmente y trabaja en\r\nmateriales no porosos, incluso: mental, plástico, hule, caucho, papel, madera,\r\ntextiles y corcho. Es permanente el adhesivo transparente llena completamente\r\naberturas y holguras a 0.004 pulgadas. APLICACIONES: Especialmente en\r\nautomotores; en logotipos, protuberancias, logotipos de cambio de engranaje,\r\nornamentos, reparación de los interiores. <font size=\"4\"><span style=\"line-height: 115%;\"><o:p></o:p></span></font></p>', '2014-04-30 16:04:52', 'Aguascalientes', '1', '100', 'cajas', '1', '49550', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('297', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'FIJADOR RESISTENCIA MEDIA AZUL ensamble contra el aflojamiento de pernos', 'Permatex', '2532.00', '<p class=\"MsoNormal\">La caja contiene 6 piezas.</p><p class=\"MsoNormal\">Azul-Resistencia Media Los\r\nfijadores anaeróbicos de partes roscadas Permatex® son superiores a los seguros\r\nde arandela convencionales, insertos de nylon y toros dispositivos mecánicos\r\npor que aseguran el ensamble completo más rápido contra el aflojamiento por\r\nimpacto o vibración, de esta forma las fuerzas de sujeción se conservan. Los\r\nfijadores son la forma más confiable de fijar y sellar los pernos roscados de\r\ncualquier forma y tamaño de hasta ¾ pulgada. <font face=\"Arial, sans-serif\" color=\"#646363\"><span style=\"font-size: 16pt; line-height: 115%;\"><o:p></o:p></span></font></p>', '2014-04-30 16:04:16', 'Aguascalientes', '1', '90', 'cajas', '1', '24250', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('293', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'RIGHT STUFF Hule negro elastómero tipo caucho sellador instantáneo y flexible ', 'Permatex', '3312.00', '<p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">La caja contiene 6 piezas.</p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">Hule negro elastómero tipo caucho que proporciona un sellado\r\ninstantáneo. Flexibilidad y adhesivo superior que se adapta al movimiento de la\r\nunión. Excelente resistencia al aceite y a los fluidos de transmisión, no\r\ncorrosivo. Bajo Olor. Baja Volatilidad. Usado en líneas de producción de equipo\r\noriginal. Rango de temperatura -59ºC a 232ºC (-75ºF a 450ºF), 260ºC (500ºF)\r\nintermitentes.</p>\r\n\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">Aplicaciones sugeridas:<span> </span>Formador de juntas para el sellado de bridas, compresores,\r\nbombas, cajas de engranes, cubiertas de válvulas, tapas de aceite, bombas de\r\nagua, etc.<span style=\"font-size:14.0pt;line-height:115%\"><o:p></o:p></span></p>', '2014-04-30 16:04:04', 'Aguascalientes', '1', '80', 'cajas', '1', '33694', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('294', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador/Desengrasante de usos múltiples -Pre Solve Liquido (Garrafa)', 'LPS ', '1407.00', '<div>Contenido Neto. 378 Litros </div><div><br/></div><div>Desengrasante cítrico</div><div>Remueve pegamento, grasa, cera, brea y suciedad</div><div>Limpiador de alto desempeño que al contacto limpia.</div><div>Seguro en la mayoría de los plásticos y metales.</div><div>Actúa rápido, profunda penetración. </div><div>Base natural.</div><div>No contiene solventes clorados.</div><div>Flash point superior a 38ºC</div><div>No conductor</div><div>Deja poco residuo.</div>', '2014-04-30 16:04:11', 'Estado de México', '1', '300', 'Piezas', '1', '01428', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('296', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador desengrasante de usos multiples- Presolve Liquido (Porrón)', 'LPS ', '6358.00', '<div>Contenido Neto: 18.93 Litros</div><div><br/></div><div>Desengrasante cítrico</div><div>Remueve pegamento, grasa, cera, brea y suciedad</div><div>Limpiador de alto desempeño que al contacto limpia.</div><div>Seguro en la mayoría de los plásticos y metales.</div><div>Actúa rápido, profunda penetración. </div><div>Base natural.</div><div>No contiene solventes clorados.</div><div>Flash point superior a 38ºC</div><div>No conductor</div><div>Deja poco residuo.</div><div> </div>', '2014-04-30 16:04:55', 'Estado de México', '1', '300', 'Piezas', '1', '01405', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('299', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'FIJADOR DE RESISTENCIA PERMANENTE ROJO resiste  toda fuga y golpe ', 'Permatex', '2532.00', '<p class=\"MsoNormal\">La caja contiene 6 piezas.</p><p class=\"MsoNormal\">El fijador Permatex®\r\npermanente de partes roscadas de alta resistencia rojo es un material\r\nanaeróbico fijador permanente que cure entre cuerdas ensambladas para formar un ensamble que resiste virtualmente toda fuga, golpe o vibración. El producto es\r\nun líquido anaeróbico de un solo componente que cura cuando se confina en\r\nausencia de aire entre 2 superficies metálicas. Ideal para todos los ensambles\r\nde sujetadores de tuerca y tornillo de hasta 1 pulgada de diámetro donde el\r\ndesensamble futuro es improbable.<font face=\"Arial, sans-serif\" color=\"#646363\"><span style=\"font-size: 16pt; line-height: 115%;\"><o:p></o:p></span></font></p>', '2014-04-30 16:04:43', 'Aguascalientes', '1', '90', 'cajas', '1', '26250', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('302', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Lubricantes Industriales. LPS 1 Aerosol-Película seca / Lubricante sin grasa', 'LPS ', '207.00', '<div>Contenido Neto: 312 gramos.</div><div><br/></div><div>Provee una película lubricante delgada y seca.</div><div>Resiste la acumulación de aceite, polvo y suciedad. </div><div>Seguro en la pintura y en la mayoría de los plásticos.</div><div>Válvula inverta permite rociar en cualquier posición. </div><div>Provee una delgada barrera contra la corrosión a un corto plazo.</div><div>Utilizando en el mundo de la aviación. </div><div>Afloja piezas oxidadas o congeladas,</div><div>Ideal para mecanismos delicados. </div><div>Actúa con rápida penetración.</div><div>Desplaza la humedad.No es conductor 32 kV.</div>', '2014-04-30 17:04:18', 'Estado de México', '1', '150', 'Piezas', '1', '00116', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('303', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'ANTIAFERRANTE BASE COBRE ideal para acero inoxidable o aleaciones similares', 'Permatex', '2733.00', '<p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">La caja contiene 12 piezas.</p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">El lubricante Antiaferrante con Cobre\r\nPermatex® es un antiaferrante con cobre de alta temperatura, calidad de primera,\r\ny lubricante de cuerdas. Contiene un alto porcentaje de hojuelas de cobre en\r\nuna base de grasa semi-sintética y fortificado con\r\ninhibidores de oxidación y corrosión de alta calidad.</p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">El antiaferrante con cobre de\r\nPermatex® fué diseñado específicamente para usarse en acero inoxidable o aleaciones\r\nsimilares. Protege los sujetadores con rosca y conexiones del calor,\r\naferramiento, congelamiento y rozamiento a temperaturas desde -34°C hasta\r\n982°C.<o:p></o:p></p>\r\n\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt\" class=\"MsoNormal\">Puede usarse en bombas, sensores,\r\nválvulas, tuercas y tornillos donde existen condiciones extremas de calor.<font size=\"4\"><span style=\"line-height: 115%;\"><o:p></o:p></span></font></p>', '2014-04-30 17:04:14', 'Aguascalientes', '1', '70', 'cajas', '1', '31163', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('304', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Lubricantes Industriales. LPS 2 Aerosol-Lubricante de alto desempeño', 'LPS ', '214.00', '<div>Contenido Neto: 312gramos. </div><div><br/></div><div>Provee una película aceitosa que no seca para una larga lubricación. </div><div>Desplaza la humedad.</div><div>Afloja piezas oxidadas o congeladas.</div><div>Provee una delgada barrera contra la corrosión hasta por un año.</div><div>No es conductor. </div><div>No contiene solvente clorados o silicones.</div><div>Seguro en la mayoría de las superficies.</div><div>Excelente protección en herramientas de mano y máquinas.</div><div>Aceptado por la Canadian Food Inspection Agency.</div><div>Válvula inverta permite rociar en cualquier posición. </div><div>Dieléctrico hasta los 32 kV.</div>', '2014-04-30 17:04:41', 'Estado de México', '1', '200', 'Piezas', '1', '00216', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('305', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Inhibidor de Óxido-LPS 3 Heavy Duty Aerosol-Inhibidor de Corrosión.', 'LPS ', '274.00', '<div>Contenido Neto: 312gramos. </div><div><br/></div><div>Inhibe la corrosión y oxidación; protege partes de acero en interiores hasta por dos años.</div><div>Forma una película transparente ceroso, suave para proteger y lubricar.</div><div>Inhibe la exfoliación y la corrosión filiforme del aluminio.</div><div>Penetra para remover la humedad. </div><div>No contiene solventes clorados o silicones.</div><div>No es conductor.</div><div>Seguro en la mayoría de las superficies.</div><div>fácilmente removible con desengrasante LPS</div><div>Aceptado por la Canadian Food</div><div>Inspection Agency - Categoría N1</div><div>Tiene un rendimiento a 3.5 mils de espesor de: Aerosol= 4.1 m2 / Galón= 42.36 m2.</div><div> </div><div><br/></div>', '2014-04-30 17:04:10', 'Estado de México', '1', '250', 'Piezas', '1', '00316', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('306', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa biodegradable de extremo rendimiento resistente a altas temperaturas Safir', 'Rocol', '528.00', '<div>Grasa para rodamientos de Alta Temperatura</div><div><br/></div><div>Producto:</div><div>Safiro Alta Temperatura 2 cartucho 400g</div><div><br/></div><div>Descripción:</div><div>Temperaturas extremas Premium y grasa resistente al químico.</div><div>Rendimiento extremo, poliéter perfluorado, grasa de extrema presión fortificada con PTFE. </div><div>Diseñado para operar en donde las grasas convencionales fallan debido a la temperatura o el ataque químico.</div><div>*Espesada con Complejo de litio y aceite de sintético de PAO.</div><div>*Contiene antioxidantes y NO carboniza ni escurre, </div><div>*Grado NLGI 2</div><div>*Temperaturas de trabajo: -40ºC A 200ºC  (hasta 220ºC  por períodos cortos).</div><div>*Intervalos de lubricación</div><div>*Excelente resistencia a la corrosión por humedad y temperatura.</div><div><br/></div><div>Lubricación:</div><div>*Rodamientos en condiciones extremas. </div><div>*Rodamientos de bolas, rodillos o bujes.</div><div><br/></div><div>La caja con 10 cartuchos y tiene un costo de $ 5,280.00 pesos</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-04-30 17:04:12', 'Querétaro', '1', '100', 'pieza', '1', '1273-1', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('307', '85', 'Maquinaria y equipo industrial', 'Otros', '', 'ANTIAFERRANTE BASE NIQUEL resiste corrosión y reduce el desgaste ', 'Permatex', '2960.00', '<p class=\"MsoNormal\">La caja contiene 10 pezas.</p><p class=\"MsoNormal\">El\r\nlubricante Antiaferrante Niquelado Permatex® es un lubricante de alta temperatura,\r\nalta calidad, de uso pesado que resiste aferramientos y corrosión y reduce el\r\ndesgaste en aplicaciones de alta presión. Contiene metales resistentes, aceites\r\ny materiales de grafito que no se pueden quemar o eliminar por partes de lento movimiento.\r\nEste producto soporta rangos de temperaturas desde los -65ºF hasta los 2400ºF\r\n(-54ºC a 1316ºC). Se recomienda para uso donde se debe evitar contaminación por\r\ncobre, bajo condiciones de extrema presión y temperatura y con acero\r\ninoxidable, titanio y aleaciones de níquel. fué diseñado específicamente para\r\nusarse en acero inoxidable o aleaciones similares. Protege los sujetadores con\r\nrosca y conexiones del calor, aferramiento, congelamiento y rozamiento a temperaturas\r\ndesde -65°F hasta 2400°F      (-54°C\r\nhasta 1316°C). Puede usarse en bombas, sensores, válvulas, tuercas y tornillos\r\ndonde existen condiciones extremas de calor.<font size=\"4\"><span style=\"line-height: 115%;\"><o:p></o:p></span></font></p>', '2014-04-30 17:04:22', 'Aguascalientes', '1', '80', 'cajas', '1', '77164', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('308', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa para engranes alta temperatura de disulfuro de molibdeno para cojinetes li', 'Rocol', '12203.00', '<div>Grasa para rodamientos de Alta Temperatura</div><div><br/></div><div>Producto:</div><div>Rocol MHT cubeta 17 Kg</div><div><br/></div><div>Descripción:</div><div>Alta temperatura, la grasa de disulfuro de molibdeno para cojinetes lisos</div><div>Diseñada para la lubricación y protección efectivas de los cojinetes de fricción, especialmente en aplicaciones de movimiento lento con mucha carga encima de 100 ° C.</div><div>*Grasa Lubricante para rodamientos planos</div><div>*Grasa especializada para condiciones extremas de carga y temperatura.</div><div>*Contiene disulfuro de Molibdeno como lubricante sólido, para soportar grandes cargas.</div><div>*NLGI 2/3</div><div>*Temperaturas de trabajo: -40º C a 235ºC (hasta 285ºC por períodos cortos). </div><div>*Aceite base de baja volatilidad para una larga vida.</div><div>*Resiste la eliminación por agua.</div><div><br/></div><div>Lubrica y protege en aplicaciones con cargas pesadas y movimi</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 17:04:34', 'Querétaro', '1', '100', 'cubetas', '1', '1209-7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('310', '84', 'Maquinaria y equipo industrial', 'Automotríz', '', 'Grasa para engranes alta temperatura de disulfuro de molibdeno para cojinetes li', 'Rocol', '3016.00', '<div>Grasa para rodamientos de Alta Temperatura</div><div><br/></div><div>Producto:</div><div>Rocol MHT cubeta 4 Kg</div><div><br/></div><div>Descripción:</div><div>Alta temperatura, la grasa de disulfuro de molibdeno para cojinetes lisos</div><div>Diseñada para la lubricación y protección efectivas de los cojinetes de fricción, especialmente en aplicaciones de movimiento lento con mucha carga encima de 100 ° C.</div><div>*Grasa Lubricante para rodamientos planos</div><div>*Grasa especializada para condiciones extremas de carga y temperatura.</div><div>*Contiene disulfuro de Molibdeno como lubricante sólido, para soportar grandes cargas.</div><div>*NLGI 2/3</div><div>*Temperaturas de trabajo: -40º C a 235ºC (hasta 285ºC por períodos cortos). </div><div>*Aceite base de baja volatilidad para una larga vida.</div><div>*Resiste la eliminación por agua.</div><div><br/></div><div>Lubrica y protege en aplicaciones con cargas pesadas y movimi</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 17:04:58', 'Querétaro', '1', '100', 'cubetas', '1', '1209-6', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('311', '84', 'Maquinaria y equipo industrial', 'Automotríz', '', 'Grasa lubricante para engranes de alto rendimiento y mayor resistencia al lavado', 'Rocol', '6942.00', '<div>Grasa con resistencia al lavado por agua</div><div>Producto: </div><div>Safiro Aqua 2 cubeta 17 Kg</div><div><br/></div><div>Descripción:</div><div>Una grasa de alto rendimiento diseñado para dar mayor resistencia al lavado por agua.</div><div>Para su uso en todo tipo de bolas, de rodillos y planos.</div><div>*Espesada con complejo de aluminio.</div><div>*grado NLGI 2</div><div>*Temperaturas de trabajo: -201C a 150ºC</div><div>*Propiedades de extrema presión y resistente al agua.</div><div>*Intervalos de lubricación prolongados.</div><div><br/></div><div>Lubricación: </div><div>Aplicaciones en plantas tratadoras de agua.</div><div>Industria de la construcción, marina, agricultura, textil, minas, etc.</div><div>Rodamientos de bola, rodillos y planos.</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 17:04:03', 'Querétaro', '1', '100', 'cubetas', '1', '1275-7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('309', '81', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador/Desengrasante de usos múltiples -Precision Clean Líquido- (Concentrado', 'LPS ', '3221.00', 'Contenido Neto: 19.83 Litros <div><br/></div><div><div>Súper fuerza industrial para eliminar las manchas mas difíciles. </div><div>Base agua biodegradable.</div><div>Formula alcalina inhibe la formación de oxidación instantánea. </div><div>pH- Concentrado = 13  - Listo para usar = 12.5</div><div>no contiene butilo, solventes clorados o derivados del petróleo, cloro, amonio o abrasivos.</div><div>Seguro en la mayoría de las superficies excepto Magnesio.</div><div>Disponible en tres presentaciones: aerosol. concentrado y listo para usar.</div></div>', '2014-04-30 17:04:32', 'Estado de México', '1', '300', 'Piezas', '1', '02705', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('312', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa sintetica biodegradable diseñada para aplicaciones de alta velocidad Safir', 'Rocol', '976.00', '<div>Grasa para Alta Velocidad</div><div><br/></div><div>Producto:</div><div>Safiro (Hi Speed) Alta Velocidad 1.0 Kg</div><div><br/></div><div>Descripción:</div><div>Una grasa sintética única diseñada específicamente para aplicaciones de alta velocidad</div><div>como husillos de máquinas-herramienta, centrífugas y dinamómetros.</div><div>Grasa extrema, alta velocidad para aplicaciones en las que las grasas convencionales fallan</div><div>*Grasa para condiciones de extrema velocidad</div><div>*Elaborada con aceites sintéticos altamente refinados.</div><div>*Grado NLGI 2 </div><div>*Factor DmN: 1,250,000 </div><div>*Temperaturas de trabajo: -40ºc a 120ºC </div><div>*Buenas propiedades anides gaste (fuerza de soldadura  de 200 kg).</div><div>*Pérdida al lavado por agua: &lt;2.0%.</div><div>*Permite el uso de tapones sencillos y proporciona un cierto grado de protección contra la penetración de contaminantes. </div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 17:04:43', 'Querétaro', '1', '100', 'Botes', '1', '1205-4', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('376', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal- Cojín Abdominal de semillas naturales y hierbas- Color Rosa. ', 'Angela A&H', '190.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN ABDOMINAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas:  27cm x 22cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aprox. 450 gramos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como mejorana, poleo, melisa, menta y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Úsala en sustitución de la compresa de agua caliente, ayuda a desinflamar el estómago cuando sientes molestias de colitis, indigestión, estás en periodo premenstrual o menstrual. También se puede usar para eliminar la mastitis en periodo de lactancia o cuando tu periodo menstrual te causa esta molestia. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Instrucciones: </u>caliéntese en el microondas por 2 minuto. Evite el sobrecalentamiento.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Conservación del producto: </u>Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Cuando lo usas en frío ayuda a eliminar: </u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolor de cabeza, migraña, lesiones musculares recientes, baja la temperatura alta sin ser agresivo para la piel, excelente opción para usarlo con niños. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cuando lo usas con terapia térmica: </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolores en rodillas, muñecas, tobillos, codos y los dolores de mastitis (auxiliar para desinflamar los senos cuando se está amamantando). </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\"> DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR. </div><div><br/></div></div>', '2014-05-05 01:05:09', 'Distrito Federal', '1', '5', 'Piezas', '1', '732493', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('377', '65', 'Salud y belleza', 'Terapias alternativas', '', 'Cojín Herbal-Cojín Abdominal de semillas naturales y hierbas-Color Morado Rayas', 'Angela A&H', '190.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">COJÍN ABDOMINAL </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Medidas:  27cm x 22cm </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">Peso: Aprox. 450 gramos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cojín o Almohadilla Herbal elaborado con una mezcla perfecta de semillas naturales y hierbas como mejorana, poleo, melisa, menta y algunas más que en combinación con el calor o frío emitirán aromas con propiedades relajantes. Las semillas de linaza permiten mantener la temperatura.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Úsala en sustitución de la compresa de agua caliente, ayuda a desinflamar el estómago cuando sientes molestias de colitis, indigestión, estás en periodo premenstrual o menstrual. También se puede usar para eliminar la mastitis en periodo de lactancia o cuando tu periodo menstrual te causa esta molestia. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Instrucciones: </u>caliéntese en el microondas por 2 minuto. Evite el sobrecalentamiento.  </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Para usarse fría colóquela en una bolsa sellada dentro del congelador por 1 ó 2 horas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"> </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Conservación del producto: </u>Guárdese sellada en el refrigerador para conservar sus propiedades y frescura herbal. <u>No debe lavarse.</u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><u>Cuando lo usas en frío ayuda a eliminar: </u></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolor de cabeza, migraña, lesiones musculares recientes, baja la temperatura alta sin ser agresivo para la piel, excelente opción para usarlo con niños. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Cuando lo usas con terapia térmica: </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Dolores en rodillas, muñecas, tobillos, codos y los dolores de mastitis (auxiliar para desinflamar los senos cuando se está amamantando). </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\">*NOTA IMPORTANTE: Se dede de meter en el microondas junto con un vaso de agua para que la humedad haga que las hierbas suelten sus beneficios. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><div style=\"text-align: center;\"> DESCUENTOS: </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 10% de descuento a partir de 10 piezas.  </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 15% de descuento a partir de 20 piezas.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"> 20% de descuento a partir de 30 piezas. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: left;\">*LOS COLORES PUEDEN VARIAR. </div><div><br/></div></div>', '2014-05-05 01:05:36', 'Distrito Federal', '1', '5', 'Piezas', '1', '732494', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('313', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'lubricante biodegradable de cadena en aerosol con sulfuro de molibdeno Rocol Aer', 'Rocol', '383.00', '<div>Lubricante para cadenas transportadoras</div><div><br/></div><div>Producto:</div><div>Rocol Aero Cadenas y Transportadoras 300 ml</div><div><br/></div><div>Descripción:</div><div>Protector de cadena Hi-Load Spray es un lubricante de cadena de aerosol de alta carga que contiene disulfuro de molibdeno para su uso en las condiciones más arduas.</div><div>Ideal para su uso en todo tipo de cadenas que se ejecutan bajo una carga pesada.</div><div>*Alta resistencia, alta carga lubricante de cadena de aerosoles con sulfuro de molibdeno.</div><div>*Formulado con disulfuro de Molibdeno (MoS2).</div><div>*Intervalo de temperaturas: -30ºC a 180ºC</div><div>*Excelente rendimiento a presiones extremas (fuerza de soldadura de 250 kg.) </div><div>*Excelente protección contra la corrosión.</div><div>*Repelente al agua.</div><div>*Penetra, lubrica, y protege contra la corrosión pernos y cacahuates.</div><div>*Excelente adhesión.</div><div><br/></div><div>La caja con 12 aerosoles  tiene un costo de $ 4,596.00</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-04-30 17:04:10', 'Querétaro', '1', '120', 'aerosoles', '1', '22141', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('314', '87', 'Maquinaria y equipo industrial', 'Otros', '', 'Marcadores Industriale Dykem Pintan cualquier Superficie Permanentes', 'DYKEM', '720.00', '<div>La caja contiene 12 piezas.</div><ul type=\"disc\">\r\n <li class=\"MsoNormal\">Usos\r\n     en interiores como en exteriores.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Pintan\r\n     virtualmente cualquier superficie. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">Las\r\n     marcas no se decoloran o pierden opacidad.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Fórmula\r\n     que no contiene Xileno.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Alta\r\n     eficiencia sobre aluminio, con alta capacidad de pintado.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Tiempo\r\n     de secado de 25 a 35 segundos.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">El\r\n     mecanismo Valve Action previene el secado de la pintura en el\r\n     cartucho. <o:p></o:p></li>\r\n <li class=\"MsoNormal\">La\r\n     punta puede reemplazarse para asegurar el uso de pintura en cada marcador.<o:p></o:p></li>\r\n</ul>\r\n\r\n<p style=\"margin-left: 36pt; background-position: initial initial; background-repeat: initial initial;\" class=\"MsoNormal\">Aplicaciones:<o:p></o:p></p>\r\n\r\n<ul type=\"disc\">\r\n <li class=\"MsoNormal\">Identificar\r\n     inventarios.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Trabajos\r\n     en proceso.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Identificación\r\n     de herramienta.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Trabajos\r\n     de soldadura o forjado de metales.<o:p></o:p></li>\r\n <li class=\"MsoNormal\">Producto\r\n     terminado.<font face=\"Arial, sans-serif\" color=\"#646363\"><span style=\"font-size: 16pt;\"><o:p></o:p></span></font></li>\r\n</ul>', '2014-04-30 17:04:52', 'Baja California', '1', '80', 'cajas', '1', '84001', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('316', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa Rocol biodegradable multi-propósito para rodamientos de grado alimenticio', 'Rocol', '15575.00', '<div>Lubricante no toxico de grado alimenticio</div><div><br/></div><div>Producto:</div><div>Foodlube Universal cubeta 17 Kg</div><div><br/></div><div>Descripción:</div><div>FOODLUBE universal es un alto rendimiento, multi-propósito, grasa para rodamientos de calidad alimentaria que promete la máxima vida útil del rodamiento.</div><div>Una grasa de extrema presión verdaderamente universal diseñado para la lubricación mejorada de todos los tipos de bolas, de rodillos y planos.</div><div>*Espesada con complejo de aluminio y fortificada con PTFE/HLWS, no tóxico. </div><div>*Grado NLGI 2 </div><div>*FDA grupo 21, CFR 178.3570 NSF H1 </div><div>*Temperaturas de trabajo: -50ºC a 160ºC.</div><div>*Excelente rendimiento a presiones extremas (fuerza de soldadura de 620 kg).</div><div>*Su vida útil en rodamientos SKF  es de 11000 horas. </div><div>*Muy resistente a la eliminación por agua. </div><div>*Apta para uso en motores y ventiladores eléctricos.</div><div>*Excelente protección contra la corrosión.</div><div><br/></div><div>Lubricación: </div><div>*En entornos alimentarios o higiénicos. </div><div>*Rodamientos de bolas, de rodillos y planos.</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-04-30 17:04:40', 'Querétaro', '1', '100', 'cubetas', '1', '1520-7', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('374', '91', 'Ropa, calzado y accesorios', 'Moda actual y accesorios', 'Caballeros', 'Chamarras chaquetas de piel super deportivas CAT', 'Prenda Piel', '1849.00', 'Todas nuestras chamarras de piel están hechas con piel natural 100% nacional.<div><p class=\"MsoNormal\">PIEL. BORREGO<br/>\r\nFORRO. TEXTIL<br/>\r\nCIERRES DE METAL<br/>\r\nAJUSTADORES CON CIERRE EN PUÑOS<br/>\r\nbuen surtido de tallas<o:p></o:p></p><p class=\"MsoNormal\">pregunta</p></div>', '2014-05-05 00:05:56', 'Estado de México', '1', '30', 'pz', '0', 'depo3', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('375', '91', 'Ropa, calzado y accesorios', 'Moda actual y accesorios', 'Caballeros', 'chamarras deportivas de piel para moto en tultitlan', 'Prenda Piel', '1900.00', '<p class=\"MsoNormal\">Somos fabricantes y desarrollamos modelos\r\nespeciales con el logotipo de tu empresa, de acuerdo a tus necesidades,\r\ncomunicate con nosotros.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Contamos con gran surtido de chamarras\r\ndeportivas, todas ellas con diseños exclusivos de \"Prenda Piel\", si\r\ntienes algún diseño especial lo puedes traer y te hacemos la chamarra a tu\r\ngusto, a tu medida y con tu diseño, trabajamos todo tipo de pieles.<br/>\r\n<br/>\r\nAsí mismo hacemos chamarras para equipos, nos da\r\nsus logotipos, motivos de las chamarras, y las fabricamos a la medida.<o:p></o:p></p>', '2014-05-05 00:05:59', 'Estado de México', '2', '20', 'pz', '0', 'depo4', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('318', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Grasa Rocol para engranes multi-propósito para rodamientos de grado alimenticio', 'Rocol', '514.00', '<div>Lubricante no toxico de grado alimenticio</div><div><br/></div><div>Producto:</div><div>Foodlube Universal cartucho 380 g</div><div><br/></div><div>Descripción:</div><div>FOODLUBE universal es un alto rendimiento, multi-propósito, grasa para rodamientos de calidad alimentaria que promete la máxima vida útil del rodamiento.</div><div>Una grasa de extrema presión verdaderamente universal diseñado para la lubricación mejorada de todos los tipos de bolas, de rodillos y planos.</div><div>*Espesada con complejo de aluminio y fortificada con PTFE/HLWS, no tóxico. </div><div>*Grado NLGI 2 </div><div>*FDA grupo 21, CFR 178.3570 NSF H1 </div><div>*Temperaturas de trabajo: -50ºC a 160ºC.</div><div>*Excelente rendimiento a presiones extremas (fuerza de soldadura de 620 kg).</div><div>*Su vida útil en rodamientos SKF  es de 11000 horas. </div><div>*Muy resistente a la eliminación por agua. </div><div>*Apta para uso en motores y ventiladores eléctricos.</div><div>*Excelente protección contra la corrosión.</div><div><br/></div><div>Lubricación: </div><div>*En entornos alimentarios o higiénicos. </div><div>*Rodamientos de bolas, de rodillos y planos.</div><div><br/></div><div>La caja con 10 cartuchos tiene un precio de $ 5,140.00</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-04-30 18:04:48', 'Querétaro', '1', '100', 'cartuchos', '1', '1523-1', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('370', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Desengrasante Multiusos Marvil 18 L', 'Marvil Industrial', '491.00', '<div>Desengrasantes industriales </div><div><br/></div><div>Producto:</div><div>Desengrasante Multiusos Marvil 18 L</div><div><br/></div><div>Descripción:</div><div>Desengrasantes y limpiador multi-usos para gran variedad de superficies como: Cromo, metal, acero inoxidable, vinil, plástico, pisos de cemento, granito y terrazo.</div><div>*Remueve de forma eficaz suciedad, grasa y mugre.</div><div>*No daña superficies metálicas incluyendo el aluminio si se usa diluido y de acuerdo a indicaciones de etiqueta.</div><div>*No flamable</div><div>*Biodegradable.</div><div><br/></div><div>En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-01 19:05:17', 'Puebla', '1', '100', 'porrónes', '1', '208311', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('319', '87', 'Maquinaria y equipo industrial', 'Otros', '', 'Scrubs cubeta Toallitas Limpiadoras para Manos Limpia y Desengrasa', 'DYKEM', '1818.00', '<p class=\"MsoNormal\"><div>Cada cubeta contiene 72 toallas.</div><div>La caja con tiene 6 piezas.</div><ul><li>Limpia y\r\ndesengrasa las manos sin utilizar agua.</li><li>Remueve\r\naceite, grasa, pastas, adhesivos, pinturas, tintas y más.</li><li>Base Cítrico\r\nfórmula patentada que remueve, disuelva y encapsula la suciedad.</li><li>Atrapa la\r\nmugre, no se regresara nuevamente las manos.</li><li>Deja las\r\nmanos limpias sin necesidad de enjuagar.</li></ul><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p></o:p></p>', '2014-04-30 18:04:42', 'Baja California', '1', '80', 'cajas', '1', '42272', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('320', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Cruces de Cerámica de alta temperatura decoradas a mano. ', 'La Vajilla Mexicana ', '104.00', 'Cruces en cerámica de alta temperatura diseños únicos y originales.<div>Pieza artesanal 100% Mexicana. Gran variedad de colores, con un acabado mate fino de gran calidad. </div><div>Especialmente diseñada para decoración, y recuerdos de fiesta.</div><div><br/></div><div>Medidas: </div><div>18cm x 10cm Aprox.</div><div><br/></div><div>Peso: </div><div>200gramos Aprox.</div>', '2014-05-01 02:05:28', 'Distrito Federal', '1', '10', 'Piezas', '1', 'CRU011', '$', '91.00', '13', '24', '70.20', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('321', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Juego de taza y plato de cerámica de alta temperatura diseños ornamentales. ', 'La Vajilla Mexicana ', '133.90', 'Juego de taza elaborado en cerámica de alta temperatura decorado a mano. Diseños únicos y originales. <div>Acabado rustico ideal para utilizar en horno de microondas, resiste bajas temperaturas. </div><div><br/></div><div>Medidas: </div><div>Taza 11 cm aprox. </div><div>Plato 15 cm diametro aprox. </div><div>Peso: </div><div>450 gramos aprox. Ambas piezas. </div>', '2014-05-01 03:05:27', 'Distrito Federal', '1', '15', 'Piezas', '1', 'JT0000', '$', '119.60', '13', '24', '85.80', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('322', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Florero Mediano de cerámica de alta temperatura decorado a mano diseño ornamenta', 'La Vajilla Mexicana ', '234.00', 'Florero Boliche de punto elaborado en cerámica de alta temperatura. Diseños únicos y originales. Acabado rustico en diferentes colores y diseños. <div><br/></div><div>Medidas: </div><div>Altura 30cm aprox. Diametro 11cm</div><div><br/></div><div>Peso:</div><div>1kg  aprox. </div>', '2014-05-01 03:05:39', 'Distrito Federal', '1', '6', 'Piezas', '1', 'FM0003', '$', '208.00', '13', '24', '175.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('323', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Taza y plato Michoacano elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '133.90', 'Taza y plato Michoacano elaborado en cerámica de alta temperatura. Acabado rustico. Soporta temperaturas del horno convencional y microondas. También puede ser expuesto a bajas temperaturas como las del refrigerador. <div>Piezas se pueden vender por separado. </div><div><br/></div><div>Medidas: </div><div>Tarro 10cm Aprox. </div><div>Plato 15cm Aprox. Diametro. </div><div><br/></div><div>Peso: </div><div>450gramos Ambas piezas.</div>', '2014-05-01 03:05:47', 'Distrito Federal', '1', '15', 'Piezas', '1', 'TP0001', '$', '115.70', '13', '24', '84.60', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('324', '83', 'Fiestas y eventos', 'Decoración', '', 'Taza con cuchara elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '97.50', 'Taza con cuchara incluida elaborados en cerámica de alta temperatura acabado rustico disponible en diferente colores y diseños se puede meter al horno de microondas y resiste bajas temperateuras. <div>No se desgasta el acabado con el tiempo. El acabado de las piezas es horneado.</div><div><br/></div><div>Medidas: </div><div>Taza: 11cm x 8cm diametro. </div><div>Cuchara: 10 cm aprox. </div><div><br/></div><div>Peso: </div><div>350gramos ambas piezas. </div>', '2014-05-01 03:05:29', 'Distrito Federal', '1', '12', 'Piezas', '1', 'TC0020', '$', '84.50', '13', '24', '64.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('325', '83', 'Todo para el hogar y oficina', 'Baños', '', 'Jabonera Liquida elaborada en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '104.00', 'Jabonera Liquida en cerámica de alta temperatura elaborada a mano diferentes diseños y colores. <div>Precio varia dependiendo del decorado.</div><div><br/></div><div>Medidas: </div><div>12cm altura </div><div><br/></div><div>Contenido para 200ml.</div>', '2014-05-01 03:05:30', 'Distrito Federal', '1', '8', 'Piezas ', '1', 'JA0030', '$', '91.00', '13', '24', '64.35', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('326', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Especieros de cerámica elaborados en alta temperatura.Contenedor de especias. ', 'La Vajilla Mexicana ', '260.00', 'Juego de especieros de 6 piezas para contener especias: Comino, pimienta, canela, etc. <div>Cerámica de alta temperatura acabado rustico. </div><div><br/></div><div>Medidas: </div><div>9cm altura. </div><div>Peso: </div><div>Pieza 150 gramos.</div>', '2014-05-01 03:05:59', 'Distrito Federal', '1', '3', 'Juegos ', '1', 'ES0020', '$', '234.00', '13', '24', '175.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('327', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Canasta Ondulada Chica elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '143.00', 'Canasta Ondulada Chica elaborada en cerámica de alta temperatura ideal para contener dulces, o usar como arreglos florales o recuerdos de fiesta. Diferentes decorados, acabado brillante o rustico. <div><br/></div><div>Medidas:</div><div>Diametro de 15cm. Aprox.</div><div>Altura de 9cm. Aprox.</div><div><br/></div><div>Peso:</div><div>1kg.</div>', '2014-05-01 03:05:39', 'Distrito Federal', '1', '4', 'Piezas', '1', 'CAON40', '$', '123.50', '13', '24', '87.75', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('328', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Alhajero Corazón realizado en cerámica de alta temperatura. Dulcero. ', 'La Vajilla Mexicana ', '97.50', 'Alhajero Corazón de cerámica de alta temperatura elaborado a mano. Diseño artesanal rustico. Pieza 100% Mexicana de alta calidad. Ideal para regalo, o recuerdo de Fiestas. <div><br/></div><div>Medidas: </div><div>10cm de diametro. Aprox. </div><div>Peso: </div><div>400gramos. <br/><div><br/></div></div>', '2014-05-01 03:05:22', 'Distrito Federal', '1', '6', 'Piezas', '1', 'ALHC50', '$', '84.50', '13', '24', '64.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('329', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Porta-caliente elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '110.50', 'Porta-Caliente elaborado cerámica de alta temperatura acabado brillante diferentes diseños y colores ideal para transportar sartenes u ollas calientes. Soporte de peso alto. <div><br/></div><div>Medidas: </div><div>17cm de diametro.</div><div>Peso: 1kg. Aprox.</div>', '2014-05-01 03:05:13', 'Distrito Federal', '1', '6', 'Piezas', '1', 'PO6000', '$', '78.00', '13', '24', '58.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('330', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Jarra de Aceite elaborada en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '208.00', 'Jarra Portadora de Botella del  Aceite en la cocina y cerillos. Acabado rustico. Diferentes diseños y colores. Hecha en cerámica de alta temperatura. <div><br/></div><div>Medidas:</div><div>15cm aprox.</div><div><br/></div><div>Peso:</div><div>600gramos.</div>', '2014-05-01 03:05:23', 'Distrito Federal', '1', '10', 'Piezas ', '1', 'JAAC70', '$', '182.00', '13', '24', '146.25', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('331', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Juego de Azúcar y Café decorado Sol cerámica de alta temperatura.', 'La Vajilla Mexicana ', '260.00', 'Juego de Azúcar y Café de 4 piezas elaborado en cerámica de alta temperatura decorado Sol acabado brillante. <div>Las piezas se pueden utilizar por separado. Cualquier pieza soporta altas temperaturas. </div><div><br/></div><div>Medidas:</div><div>Charola: 27cm de largo </div><div><br/></div><div>Peso: 800 gramos todo el juego. </div>', '2014-05-01 03:05:40', 'Distrito Federal', '1', '4', 'Juegos ', '1', 'JUE0010', '$', '221.00', '13', '24', '182.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('332', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Aceitera Pirámide en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '143.00', 'Aceitera Pirámide elaborada en cerámica de alta temperatura acabado rustico. Diferentes diseños y colores. <div>No ocupa mucho espacio en la cocina.</div><div><br/></div><div>Medidas: </div><div>10 cm de diametro.</div><div>17cm de altura.</div><div><br/></div><div>Peso: </div><div>500gramos.</div>', '2014-05-01 03:05:58', 'Distrito Federal', '1', '10', 'Piezas', '1', 'ACPI130', '$', '123.50', '13', '24', '91.60', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('333', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Jabonera chica decorado punto.Elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '78.00', 'Jabonera elaborada en cerámica de alta temperatura diseños únicos y originales. <div><div>Recipiente destinado a sostener la pastilla de jabón.</div><div><br/></div><div>Medidas: 10cm x 5cm </div><div>Peso: 200 gramos aproximadamente.</div></div>', '2014-05-01 03:05:20', 'Distrito Federal', '1', '10', 'Piezas', '1', 'JA0050', '$', '65.00', '13', '24', '45.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('334', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Servilletero Pato/FLor elaborados en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '84.50', 'Servilletero de Pato/ flor elaborado en cerámica de alta temperatura. <div>Decorado a mano 100% artesanal. </div><div>Utensilio utilizado para contener servilletas. </div><div>Puede ser utilizado para la cocina, decoración y fiestas o eventos. </div><div><br/></div><div>Medidas: 15cm x 7cm Aproximadamente.</div><div>Peso: 200 gramos Aproximadamente.</div>', '2014-05-01 04:05:56', 'Distrito Federal', '1', '5', 'Piezas', '1', 'SE0090', '$', '71.50', '13', '24', '56.55', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('335', '83', 'Fiestas y eventos', 'Decoración', '', 'Salero Grande Decorado Rana/Punto elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '45.50', '<div><br/></div><div>Salero Grande decorado de Rana/ Punto a mano elaborado en cerámica de alta temperatura.</div><div>Recipiente contenedor de sal, para decoración en cocinas o para uso en fiestas y eventos. </div><div><br/></div><div>Medidas: 7cm x 5cm Aprox. </div><div>Peso: 100 gramos. Aprox.</div><div><br/></div>', '2014-05-01 04:05:58', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0081', '$', '39.00', '13', '24', '27.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('336', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Salero Chico  Decorado Flor/punto elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '39.00', 'Salero Chico decorado a mano elaborado en cerámica de alta temperatura. <div>Recipiente contenedor de sal. Para decoracón, cocinas, fiestas o eventos.</div><div><br/></div><div><br/></div><div>Medidas: 5cm x 5cm Aprox.</div><div>Peso: 50 gramos. Aprox.</div>', '2014-05-01 04:05:26', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0082', '$', '32.50', '13', '24', '24.05', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('337', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Jarra de Aceite de Oliva elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '84.50', 'Jarra de aceite de olivia elaborada en cerámica de alta temperatura. <div>100% artesanal diseños únicos y colores variados. </div><div><br/></div><div>Contenedor para 1lt. Aprox. </div><div>Medidas: 15cm x 8cm Aprox.</div><div>Medidas: 500 gramos Aprox. </div>', '2014-05-01 04:05:15', 'Distrito Federal', '1', '10', 'Piezas ', '1', 'JAO003', '$', '71.50', '13', '24', '52.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('338', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Juego de Azúcar y Café decorado Rana elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '260.00', '<div>Juego de Azúcar y Café de 4 piezas elaborado en cerámica de alta temperatura decorado Sol acabado brillante. </div><div>Las piezas se pueden utilizar por separado. Cualquier pieza soporta altas temperaturas. </div><div><br/></div><div>Medidas:</div><div>Charola: 27cm de largo </div><div><br/></div><div>Peso: 800 gramos todo el juego. </div>', '2014-05-01 04:05:09', 'Distrito Federal', '1', '10', 'Juegos ', '1', 'JUE0011', '$', '221.00', '13', '24', '182.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('339', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Porta-cepillo de rana elaborado en cerámica de alta temperatura.  ', 'La Vajilla Mexicana ', '84.50', 'Portacepillo de cerámica en alta temperatura. <div>Pieza 100% Artesanal decorado de Rana </div><div>Espacio suficiente para contener 3 cepillos dentales y  Pasta dental. </div><div><br/></div><div>Medidas: 10cm x 5cm Aproximadamente. </div><div>Peso: 150 gramos. </div><div><br/></div>', '2014-05-01 04:05:03', 'Distrito Federal', '1', '10', 'Piezas', '1', 'PC0080', '$', '67.50', '13', '24', '48.75', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('340', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Juego de Salseras con Herrereria elaboradas en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '221.00', 'Juego de Salsera elaborada en cerámica de alta temperatura. <div>3 recipientes para contener salsa. <br/><div>100% artesanal diseños únicos y originales. </div><div>Incluye Herreria de metal.</div></div><div><br/></div><div>Medidas: </div><div>Cada salsera mide 15cm aproximadamente. </div><div>Peso: </div><div>1kg Juego. </div>', '2014-05-01 04:05:51', 'Distrito Federal', '1', '10', 'Piezas', '1', 'JSAL01', '$', '195.00', '13', '24', '156.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('341', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Porta-cucharas sol elaboradas en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '130.00', 'Portacucharas elaborado en cerámica de alta temperatura. <div>Indispensable para decoración, para utilizarlo en la cocina y fiestas o eventos. </div><div>Piezas 100% artesanales y decorados a mano. </div><div>Los colores y diseños pueden variar. </div><div><br/></div><div>Medidas: Altura 3 cm x Ancho 11 cm x Profundidad 21 cm.</div><div>Peso: 300 gramos c/u.</div>', '2014-05-01 04:05:31', 'Distrito Federal', '1', '10', 'Piezas', '1', 'PCU300', '$', '104.00', '13', '24', '52.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('342', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Juego Tequilero de Flores elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '1105.00', 'Juego tequilero de Flores para 6 personas elaborado en cerámica de alta temperatura. <div>Incluye 9 Piezas:</div><div>6 caballitos tequileros. </div><div>1 salero</div><div>1 Charola botanera</div><div>1Botella tequilera Contenido: 1lt. </div><div>Juego 100% artesanal </div><div><br/></div><div>Medidas: Vasos 8cm altura, Salero 5cm altura, Charola 30cm largo, Botella 25cm aprox.</div><div>Peso: ,1,500 gramos. </div>', '2014-05-01 04:05:53', 'Distrito Federal', '1', '10', 'Juegos ', '1', 'JUTE30', '$', '910.00', '13', '24', '682.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('343', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Vajilla Talavera Analia elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '16900.00', 'Vajilla Talavera Analia elaborada en cerámica de alta temperatura. <div>Esta formada por 56 piezas: 12 platos para la sopa, 24 platos llanos, 12 platos por postre, 12 tazas de consomé con plato, 2 salseras con platillo, una fuente redonda honda, una o 2 fuentes redondas planas, una legumbrera, una sopera, una para la ensalada y dos fuentes pequeñas. También hay otros elementos que son opcionales: 6 platillos por aperitivos, 12 platillos por el pan, 12 platos de presentación, 12 copas por helado o macedonia, 2 fuentes pequeñas para la mantequilla, una canastilla por el pan, un recogedor de migas y una vinagrera de cristal, dos saleros, un molinillo para pimienta en grano, un cuenco para la mostaza, un pie por los dulces y un frutero.</div><div><br/></div><div>Piezas 100&amp; Artesanales. </div><div><br/></div>', '2014-05-01 04:05:16', 'Distrito Federal', '1', '10', 'Juegos ', '1', 'VATA00', '$', '14950.00', '13', '24', '12675.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('347', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Sopero Analia elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '312.00', 'Plato Sopero elaborado en cerámica de alta temperatura.<div>Pieza 100% artesanal </div><div>Diseños unicos y originales. </div><div><br/></div><div>Medidas: 22cm </div><div>Peso: 500gramos Aprox.</div>', '2014-05-01 04:05:22', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SOA102', '$', '286.00', '13', '24', '234.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('348', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Servilletero Pirámide elaborados en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '84.50', '<div><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Servilletero Pirámide  elaborado en cerámica de alta temperatura. </span><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Decorado a mano 100% artesanal. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Utensilio utilizado para contener servilletas. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Puede ser utilizado para la cocina, decoración y fiestas o eventos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Medidas: 15cm x 7cm Aproximadamente.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Peso: 200 gramos Aproximadamente.</div></div>', '2014-05-01 04:05:12', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SE0091', '$', '71.50', '13', '24', '56.55', '24', 'pe');
INSERT INTO `productos_empresas` VALUES ('349', '83', 'Fiestas y eventos', 'Decoración', '', 'Salsera Molcajete chico elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '71.50', 'Salsera elaborada en cerámica de alta temperatura. <div>Contenedor para 200ml de salsa aproximadamente. </div><div>Pieza 100% Artesanal diseños únicos y originales. </div><div><br/></div><div>Medidas:  15cm Aprox.</div><div>Peso: 500 gramos Aprox.</div>', '2014-05-01 04:05:45', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0083', '$', '65.00', '13', '24', '49.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('350', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Plato Cuadrado Grande Analia elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana', '572.00', 'Juego de Platos Analia elaborado en cerámica de alta temperatura. <div>Decorado a mano 100% original y único.</div><div>Juego de 3 Piezas. </div><div><br/></div><div>Peso: 1,500 kg Aprox. Juego </div>', '2014-05-01 15:05:08', 'Distrito Federal', '1', '10', 'Juegos ', '1', 'PCG001', '$', '481.00', '13', '24', '429.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('351', '83', 'Fiestas y eventos', 'Decoración', '', 'Tarro Capuchino Punto/Flor elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '71.50', 'Tarro Capuchino elaborado en cerámica de alta temperatura. <div>Pieza 100% Original elaborad a mano diseño único e irrepetible. </div><div><br/></div><div>Contenedor para 500ml de Café, Capuchino, o té. </div><div>Resiste altas temperaturas. </div><div><br/></div><div>Medidas:8cm Aprox.</div><div>Peso: 350 gramos Aprox. </div>', '2014-05-01 15:05:53', 'Distrito Federal', '1', '10', 'Piezas', '1', 'TAC001', '$', '62.40', '13', '24', '42.90', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('352', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Taza Cerealera Decorado Punto elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '117.00', '<div>Taza Cerealera  elaborada en cerámica de alta temperatura. </div><div>Pieza 100% Original elaborad a mano diseño único e irrepetible. </div><div><br/></div><div>Contenedor para 500ml.</div><div>Resiste altas temperaturas. </div><div><br/></div><div>Medidas:8cm Aprox.</div><div>Peso: 350 gramos Aprox. </div><div><br/></div>', '2014-05-01 15:05:23', 'Distrito Federal', '1', '10', 'Piezas', '1', 'TCE002', '$', '97.50', '13', '24', '78.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('353', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Juego de Café para 6 personas  elaborado en cerámica de alta temperatatura.', 'La Vajilla Mexicana ', '1950.00', 'Juego de Café para 6 personas elaborado en cerámica de alta temperatura.<div>Contiene: </div><div>6 tazas: altura 6 cm y diámetro 5.5 cm</div><div>6 platos para tazas: diámetro 12 cm</div><div>1 azucarera: altura 13 cm</div><div>1 lechera: altura 11 cm</div><div>1 cafetera: altura 17 cm</div><div>Peso: 7,500 kg Juego. </div><div><br/></div>', '2014-05-01 15:05:28', 'Distrito Federal', '1', '10', 'Juegos ', '1', 'JUTE31', '$', '1690.00', '13', '24', '1365.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('354', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Tenaz, spray Rocol lubricante biodegradable de grado alimenticio cadenas Foodlub', 'Rocol', '659.00', '<div>Lubricante no toxico de grado alimenticio para cadenas</div><div><br/></div><div>Producto:</div><div>Foodlube Chain Spray 400 ml</div><div><br/></div><div>Descripción:</div><div>Tenaz, spray lubricante de cadena de calidad alimentaria para una</div><div>máxima vida de la cadena.</div><div>*Conveniente lubricante de cadena de aerosol</div><div>*Ideal para la lubricación de todos los tipos de cadenas de</div><div>transmisión y cintas transportadoras</div><div>*Diseñando para la lubricación  eficaz de todo tipo  de cadenas y cintas transportadoras en entornos</div><div>higiénicos o de proceso de alimentos. Intervalos de temperaturas: -20ºC a 150ºC.</div><div>*Muy resistente a la eliminación por agua para prolongar la vida de las cadenas.</div><div>*Película tenaz que no gotea.</div><div>*Excelente capacidad de penetración. </div><div>*Buenas propiedades de transferencia de esfuerzo. </div><div>*Excelente protección contra la corrosión. </div><div>*FDA grupo 21, CFR 178, 3570 </div><div>*Certificación NSF H1- 122878</div><div><br/></div><div>La caja contiene 12 piezas y el costo es de $ 7,908.00</div><div>En caso de requerir más producto del anunciado contáctate con nosotros.</div>', '2014-05-01 15:05:43', 'Querétaro', '1', '120', 'aerosoles', '1', '15610', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('355', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Florero Extragrande de cerámica de alta temperatura decorado a mano diseño ornam', 'La Vajilla Mexicana ', '650.00', '<div>Florero Extragrande elaborado en cerámica de alta temperatura. Diseños únicos y originales. Acabado rustico en diferentes colores y diseños. </div><div><br/></div><div>Medidas: </div><div>Altura 30cm aprox. Diametro 11cm</div><div><br/></div><div>Peso:</div><div>1kg  aprox. </div><div><br/></div>', '2014-05-01 15:05:31', 'Distrito Federal', '1', '10', 'Piezas', '1', 'FEG006', '$', '585.00', '13', '24', '487.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('356', '83', 'Fiestas y eventos', 'Decoración', '', 'Salsera con mango color vino elaborada en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '182.00', 'Salsera con mango color vino elaborada en cerámica de alta temperatura. <div>Diseño 100% Original </div><div>Colores únicos e irrepetibles. </div><div><br/></div><div>Medidas: 30cm Aprox.</div><div>Peso: 950 gramos. Aprox.</div><div><br/></div>', '2014-05-01 15:05:22', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SAV003', '$', '156.00', '13', '24', '136.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('357', '84', 'Maquinaria y equipo industrial', 'Alimentaria', '', 'Duradero aerosol Rocol industrial Desmoldante con silicón Aerosol 255 g', 'Rocol', '93.00', '<div>Especialidades para mantenimiento</div><div><br/></div><div>Producto:</div><div>Desmoldante con silicón Aerosol 255 g</div><div><br/></div><div>Descripción:</div><div>molde rociado de liberación de larga duración.</div><div>*Desmoldante con silicón en aerosol</div><div>*lubricante, desmoldante y abrillantador de superficies base silicón. </div><div>*Fórmula rica en silicón que lubrica y protege goma, plásticos y partes de metal.</div><div>*Rango de temperatura de -40ºC a 260ºC.</div><div>*Seguro en la mayoría de las superficies.</div><div>*Provee una excelente lubricación. </div><div>*Protección de superficies de las condiciones climatológicas y rayos UV.</div><div>*Sn olor ni color.</div><div>*Insoluble al agua.</div><div>*Elimina adherencias, atascamientos y rechinidos.</div><div>*Ideal para usarse, como desmoldante para partes de plástico, hule y goma. </div><div><br/></div><div>Lubrica transportadoras plásticas.</div><div><br/></div><div>la caja contiene 12 piezas y el costo es de $ 1,116.00</div><div><br/></div><div>En caso de requerir más producto del anunciado contáctate con nosotros</div>', '2014-05-01 15:05:48', 'Querétaro', '1', '100', 'aerosoles', '1', '72020', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('358', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Florero Boliche color rosa de cerámica de alta temperatura decorado a mano.', 'La Vajilla Mexicana ', '325.00', '<div>Florero Boliche Color rosa elaborado en cerámica de alta temperatura. Diseños únicos y originales. Acabado rustico en diferentes colores y diseños. </div><div><br/></div><div>Medidas: </div><div>Altura 30cm aprox. Diametro 11cm</div><div><br/></div><div>Peso:</div><div>1kg  aprox. </div><div><br/></div>', '2014-05-01 15:05:15', 'Distrito Federal', '1', '10', 'Piezas', '1', 'FB0004', '$', '299.00', '13', '24', '253.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('359', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Florero Globo de cerámica de alta temperatura decorado a mano diseño ornamental.', 'La Vajilla Mexicana ', '156.00', '<div>Florero Globo elaborado en cerámica de alta temperatura. Diseños únicos y originales. Acabado rustico en diferentes colores y diseños. </div><div><br/></div><div>Medidas: </div><div>Altura 30cm aprox. Diametro 11cm</div><div><br/></div><div>Peso:</div><div>1kg  aprox. </div><div><br/></div>', '2014-05-01 15:05:02', 'Distrito Federal', '1', '10', 'Piezas', '1', 'FG0006', '$', '130.00', '13', '24', '117.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('360', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Jarro Ponchero Colores Varios elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '97.50', 'Jarro Ponchero elaborado en cerámica de alta temperatura. <div>Pieza 100% Artesanal.</div><div>Capacidad: 1lt. </div><div><br/></div><div>Medidas: 18cm Aprox.</div><div>Peso: 650 gramos Aprox. </div>', '2014-05-01 15:05:39', 'Distrito Federal', '1', '10', 'Piezas', '1', 'JPO003', '$', '84.50', '13', '24', '68.25', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('361', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Maceta No. 4 Flor Verde elaborada en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '195.00', 'Maceta No. 4 Flor Verde elaborada en cerámica de alta temperatura.<div>Diseños originales 100% únicos. </div><div>Una maceta, matera o tiesto contenedor, normalmente con forma de cipo (cono truncado) con un agujero en el fondo para el drenaje, utilizado para cultivar plantas tanto de exterior como de interior.</div><div>Utilizado como decoración, casa fiestas o eventos. </div><div><br/></div><div>Medidas:30cm de diametro. </div><div>Peso: 950gramos aprox.</div>', '2014-05-01 15:05:11', 'Distrito Federal', '1', '10', 'Piezas', '1', 'MA0095', '$', '162.50', '13', '24', '126.75', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('362', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Florero Ondulado de cerámica de alta temperatura elaborado a mano.', 'La Vajilla Mexicana ', '97.50', '<div>Florero Ondulado  elaborado en cerámica de alta temperatura. Diseños únicos y originales. Acabado rustico en diferentes colores y diseños. </div><div><br/></div><div>Medidas: </div><div>Altura 30cm aprox. Diametro 11cm</div><div><br/></div><div>Peso:</div><div>1kg  aprox. </div><div><br/></div>', '2014-05-01 15:05:47', 'Distrito Federal', '1', '10', 'Piezas', '1', 'FO0005', '$', '78.00', '13', '24', '58.50', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('363', '83', 'Fiestas y eventos', 'Decoración', '', 'Cruz  de Cerámica de alta temperatura decoradas a mano. ', 'La Vajilla Mexicana ', '1.00', '<br style=\"color: rgb(66, 66, 66); text-align: justify;\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" size=\"3\" color=\"#424242\" face=\"arial\">Cruz en cerámica de alta temperatura diseños únicos y originales.<div>Pieza artesanal 100% Mexicana. Gran variedad de colores, con un acabado mate fino de gran calidad. </div><div>Especialmente diseñada para decoración, y recuerdos de fiesta.</div><div><br/></div><div>Medidas: </div><div>18cm x 10cm Aprox.</div><div><br/></div><div>Peso: </div><div>200gramos Aprox.</div></font>', '2014-05-01 15:05:27', 'Distrito Federal', '1', '104', '1', '1', 'CRU012', '$', '93.60', '13', '24', '70.20', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('364', '83', 'Ropa, calzado y accesorios', 'Moda actual y accesorios', 'Damas', 'Aretes Flor elaborados en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '97.50', 'Aretes elaborados en cerámica de alta temperatura. <div>Decorados a mano únicos y originales.</div><div>Pieza 100%  Artesanal. </div><br style=\"color: rgb(66, 66, 66); text-align: justify;\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" size=\"3\" color=\"#424242\" face=\"arial\"><br/><div><br/></div><div>Medidas: </div><div>3cm x 1cm Aprox</div><div><br/></div><div>Peso: </div><div>20gramos Aprox.</div></font>', '2014-05-01 15:05:20', 'Distrito Federal', '1', '10', 'Pares', '1', 'ARE003', '$', '70.20', '13', '24', '58.20', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('365', '83', 'Ropa, calzado y accesorios', 'Moda actual y accesorios', 'Damas', 'Aretes Flor elaborados en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '97.50', 'Aretes elaborados en cerámica de alta temperatura. <div>Decorados a mano únicos y originales.</div><div>Pieza 100%  Artesanal. </div><br style=\"color: rgb(66, 66, 66); text-align: justify;\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" size=\"3\" color=\"#424242\" face=\"arial\"><br/><div><br/></div><div>Medidas: </div><div>3cm x 1cm Aprox</div><div><br/></div><div>Peso: </div><div>20gramos Aprox.</div></font>', '2014-05-01 15:05:01', 'Distrito Federal', '1', '10', 'Pares', '1', 'ARE002', '$', '70.20', '13', '24', '58.20', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('366', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Salero Grande Decorado Flor elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '45.50', '<div><br/></div><div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Salero Grande decorado de Flor a mano elaborado en cerámica de alta temperatura.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Recipiente contenedor de sal, para decoración en cocinas o para uso en fiestas y eventos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Medidas: 7cm x 5cm Aprox. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Peso: 100 gramos. Aprox.</div></div><div><br/></div>', '2014-05-01 15:05:13', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0080', '$', '39.00', '13', '24', '27.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('367', '83', 'Ropa, calzado y accesorios', 'Moda actual y accesorios', 'Damas', 'Aretes Flor elaborados en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '97.50', 'Aretes elaborados en cerámica de alta temperatura. <div>Decorados a mano únicos y originales.</div><div>Pieza 100%  Artesanal. </div><br style=\"color: rgb(66, 66, 66); text-align: justify;\"/><font style=\"color: rgb(66, 66, 66); text-align: justify;\" size=\"3\" color=\"#424242\" face=\"arial\"><br/><div><br/></div><div>Medidas: </div><div>3cm x 1cm Aprox</div><div><br/></div><div>Peso: </div><div>20gramos Aprox.</div></font>', '2014-05-01 15:05:56', 'Distrito Federal', '1', '10', 'Pares', '1', 'ARE001', '$', '70.20', '13', '24', '58.20', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('368', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Rosario elaborado en cerámica  de alta temperatura. ', 'La Vajilla Mexicana ', '468.00', 'Rosario elaborado en cerámica de alta temperatura. <div>Pieza 100% artesanal.</div><div><br/></div><div>Medidas: 30cm x 15cm. </div><div>Peso: 300 gramos. </div><div><br/></div>', '2014-05-01 16:05:52', 'Distrito Federal', '1', '10', 'Piezas', '1', 'R00253', '$', '421.20', '13', '24', '351.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('369', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Misterio elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '195.00', 'Misterio elaborado en cerámica de alta temperatura. <div>Pieza 100% artesanal.</div><div><br/></div><div>Medidas: 30cm x 15cm. </div><div>Peso: 300 gramos. </div><div><br/></div>', '2014-05-01 16:05:40', 'Distrito Federal', '1', '10', 'Piezas', '1', 'M00301', '$', '175.50', '13', '24', '136.00', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('440', '102', 'Maquinaria y equipo industrial', 'Manufacturas', '', 'sdf', 'xxx', '100.00', 'asdasdsadfsdfdafd', '2014-06-03 21:06:16', 'Estado de México', '1', '100', 'pza', '0', '1012', '$', '80.00', '10', '30', '70.00', '50', 'pe');
INSERT INTO `productos_empresas` VALUES ('439', '101', 'Ropa, calzado y accesorios', 'Otros', 'Caballeros', 'SOMBRERO TIPO ALCATRAZ', 'EL GRAN SOMBRERO', '800.00', 'BONITO SOMBRERO DE FIELTRO', '2014-05-31 23:05:28', 'Coahuila', '1', '1', 'PZA', '0', '11', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('385', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Desengrasante Multiusos Marvil 200 L', 'Marvil Industrial', '3683.00', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Desengrasantes industriales </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Producto:</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Desengrasante Multiusos Marvil 200 L</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Descripción:</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Desengrasantes y limpiador multi-usos para gran variedad de superficies como: Cromo, metal, acero inoxidable, vinil, plástico, pisos de cemento, granito y terrazo.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*Remueve de forma eficaz suciedad, grasa y mugre.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*No daña superficies metálicas incluyendo el aluminio si se usa diluido y de acuerdo a indicaciones de etiqueta.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*No flamable</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">*Biodegradable.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-06 15:05:37', 'Puebla', '1', '100', 'tambos', '1', '208314', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('386', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Desengrasante MLG-500 18 L', 'Marvil Industrial', '922.00', '<div>Desengrasantes industriales </div><div><br/></div><div>Nombre del producto:</div><div>MLG-500 18 L</div><div><br/></div><div>Descripción:</div><div>Desengrasante Multi-usos base agua, remueve rápidamente, suciedad grasa y mugre de diversas superficies y equipo.</div><div>•Puede ser usado sobre la mayoría de las superficies que no son afectada por el agua.</div><div>•Puede ser usado en una amplia variedad de aplicaciones de limpieza.</div><div>•Soporta amplios rangos de dilución. Biodegradable.</div><div><br/></div><div><span style=\"text-align: justify;\">En caso de requerir mas producto de lo anunciado contactenos.</span></div>', '2014-05-06 15:05:49', 'Puebla', '1', '100', 'porrónes', '1', '252511', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('387', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador Desinfectante para Pisos y Baños Lemonator 18 L', 'Marvil Industrial', '728.00', '<div>Limpiador industrial Desinfectante para Pisos y Baños</div><div><br/></div><div>Nombre del producto:</div><div>Lemonator 18 L</div><div><br/></div><div>Descripción:</div><div>*Limpiador germicida y desodorizante para todo tipo de superficies lavables, como pisos y muebles de baño. </div><div>*Excelente limpiador Tolerante al agua dura. </div><div>*Acción germicida. </div><div>*Elimina los malos olores. </div><div>*Soporta altas diluciones.</div><div><br/></div><div><span style=\"text-align: justify;\">En caso de requerir mas producto de lo anunciado contactenos.</span></div>', '2014-05-06 15:05:28', 'Puebla', '1', '100', 'porrónes', '1', '241111', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('388', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador Sarricida y Desinfectante para Baños Marvin Toilet 20 L', 'Marvil Industrial', '1439.00', '<div>Limpiador Sarricida y Desinfectante para Baños</div><div><br/></div><div>Nombre del Producto:</div><div>Marvin Toilet 20 L</div><div><br/></div><div>Descripción:</div><div>Limpiador desinfectante y sarricida para baños. </div><div>•Formulado  con ácidos minerales que no despiden vapores. </div><div>•Su alta viscosidad aumenta el tiempo de contacto, garantizando una acción profunda. </div><div>•Agradable aroma. </div><div>•Color indicador.</div><div><br/></div><div>En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-06 15:05:33', 'Puebla', '1', '100', 'porrónes', '1', '249612', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('389', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Limpiador para Manos Uso Institucional Marvin MJM-203 GREEN 4 L', 'Marvil Industrial', '302.00', '<p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Limpiador para Manos Uso Institucional</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\"><br/></p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Nombre del producto</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Marvin MJM-203 GREEN 4L.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\"><br/></p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Descripción:</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">Jabón líquido limpiador para manos.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•pH neutro.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•Efectivo.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•Suave a la piel.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•Completamente sintético.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•Biodegradable.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">•Ideal para usarse en todo el cuerpo.</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\"><br/></p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">La caja contiene 4 garrafas y tiene un costo de $ 1,028.00</p><p style=\"margin-bottom: 0.0001pt;\" class=\"MsoNormal\">En caso de requerir mas producto de lo anunciado contactenos.</p><ul type=\"disc\" style=\"margin-top:0cm\">\r\n</ul>', '2014-05-06 16:05:04', 'Puebla', '1', '100', 'garrafas', '1', '240410', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('390', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Cera Abrillantadora Súper Bril-piso 18L', 'Marvil Industrial', '1288.00', '<div>Ceras Abrillantadoras Tratamiento para pisos</div><div><br/></div><div>Nombre del producto</div><div>Súper Bril-piso 18L</div><div><br/></div><div>Descripción:</div><div>Cera liquida para proteger y abrillantar pisos de loseta vinílica, asfáltica etc…</div><div>•Versátil.</div><div>•Brillan sin pulir.</div><div>•Alto rendimiento 50 m2 por litro</div><div>•Bajo mantenimiento</div><div><br/></div><div>En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-06 16:05:42', 'Puebla', '1', '100', 'porrónes', '1', '291011', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('391', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Hojalatería y Pintura Cera Liquida Auto con Silicón 18L', 'Marvil Industrial', '1680.00', '<div>Estética automotriz Productos para Hojalatería y Pintura</div><div><br/></div><div>Nombre del producto:</div><div>Cera Liquida Auto con Silicón 18L</div><div><br/></div><div>Descripción:</div><div>Cera protectora, abrillantadora y limpiadora para pintura de autos.</div><div>•Limpia y pule efectivamente tosas las pinturas automotrices. Produce un alto y duradero brillo cuando se pule.</div><div>•Diseñado con acción limpiadora combinada con ceras naturales.</div><div>•Se aplica con estopa o máquina y una vez seca se elimina fácil y rápidamente.</div><div><br/></div><div>En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-06 16:05:03', 'Puebla', '1', '100', 'porrónes', '1', '206511', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('392', '90', 'Maquinaria y equipo industrial', 'Otros', '', 'Cera en pasta para proteger y embellecer objetos de madera  Cera en pasta Marvil', 'Marvil Industrial', '1095.00', '<div>Cera en pasta para proteger y embellecer objetos de madera</div><div><br/></div><div>Nombre del producto:</div><div>Cera en pasta Marvil New 15Kg</div><div><br/></div><div>Descripción:</div><div>Cera en pasta para proteger y embellecer pisos, muebles y objetos de madera.</div><div>•Por su forma de presentación, la cera en pasta Marvil new es muy fácil de aplicar.</div><div>•Se puede pulir usando un paño o con máquina para realzar aún mas el brillo.</div><div>•La capa protectora que deja la cera en pasta Marvil new proporciona brillo protección altamente resistentes al tráfico.</div><div>•No deja olores penetrantes y desagradables en la superficie sobre la que se aplica.</div><div><br/></div><div><br/></div><div>En caso de requerir mas producto de lo anunciado contactenos.</div>', '2014-05-06 16:05:49', 'Puebla', '1', '100', 'cubetas', '1', '206728', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('393', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Salero Grande decorado de Flor elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '45.50', '<div>Salero Grande decorado de Flor a mano elaborado en cerámica de alta temperatura.</div><div>Recipiente contenedor de sal, para decoración en cocinas o para uso en fiestas y eventos. </div><div><br/></div><div>Medidas: 7cm x 5cm Aprox. </div><div>Peso: 100 gramos. Aprox.</div>', '2014-05-12 23:05:08', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0083', '$', '39.00', '13', '24', '27.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('394', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Salero Grande \"Jarra\" elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '45.50', '<div>Salero Grande decorado de Rana/ Punto a mano elaborado en cerámica de alta temperatura.</div><div>Recipiente contenedor de sal, para decoración en cocinas o para uso en fiestas y eventos. </div><div><br/></div><div>Medidas: 7cm x 5cm Aprox. </div><div>Peso: 100 gramos. Aprox.</div>', '2014-05-12 23:05:08', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0084', '$', '39.00', '13', '24', '27.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('395', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Salero Grande Decorado Punto/Pirámide elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '45.50', '<div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Salero Grande decorado de Punto/ Pirámide a mano elaborado en cerámica de alta temperatura.</div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Recipiente contenedor de sal, para decoración en cocinas o para uso en fiestas y eventos. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\"><br/></div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Medidas: 7cm x 5cm Aprox. </div><div style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Peso: 100 gramos. Aprox.</div>', '2014-05-12 23:05:44', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0085', '$', '39.00', '14', '24', '27.30', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('396', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Salero Chico Decorado Flor elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '39.00', '<div><br/></div><div>Salero Chico decorado Flor a mano elaborado en cerámica de alta temperatura. </div><div>Recipiente contenedor de sal. Para decoracón, cocinas, fiestas o eventos.</div><div><br/></div><div><br/></div><div>Medidas: 3cm x 3.5cm Aprox.</div><div>Peso: 20 gramos. Aprox.</div>', '2014-05-12 23:05:33', 'Distrito Federal', '1', '10', 'Piezas', '1', 'SA0086', '$', '32.50', '13', '24', '24.05', '25', 'pe');
INSERT INTO `productos_empresas` VALUES ('397', '83', 'Fiestas y eventos', 'Decoración', '', 'Cenicero Pantufla elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '55.00', 'Cenicero en forma de pantufla elaborado en hornos de altas temperaturas, pintado a mano, diseño ornamental. <div>Pieza 100% Mexicana </div><div>Diseño original y único. </div><div>Puede ser utilizada en eventos y fiestas . </div><div><br/><div>Medidas:</div><div>11cm largo por 5cm de ancho.</div></div><div>Peso: </div><div>100gramos Aprox. </div>', '2014-05-12 23:05:43', 'Distrito Federal', '1', '10', 'Piezas', '1', 'CEP103', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('398', '83', 'Todo para el hogar y oficina', 'Cocinas', '', 'Tazón Cuadrado decorado a mano en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '100.00', 'Tazón Cuadrado elaborado en cerámica en hornos de altas temperaturas. Diseño ornamental con flores. <div>Ideal para la cocina y decoración en eventos y fiestas. </div><div><br/></div><div>Medidas:</div><div> 13cm largo por 13 cm ancho, profundidad de 5cm.</div><div><br/></div><div>Peso: </div><div>300 gramos Aprox. </div>', '2014-05-12 23:05:22', 'Distrito Federal', '1', '10', 'Piezas', '1', 'TAC109', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('399', '83', 'Todo para el hogar y oficina', 'Decoración', '', 'Plato cuadrado Talavera elaborado en cerámica de alta temperatura.', 'La Vajilla Mexicana ', '65.00', 'Plato cuadrado Talavera cocido en hornos de alta temperatura pintado a mano, diseño ornamental, color azul. <div>Pieza 100% Artesanal </div><div>Ideal para decoración en casa, eventos o fiestas. </div><div><br/></div><div>Medidas:</div><div>15cm alto por 15 cm de ancho.</div><div>Peso: </div><div>500gramos Aprox. </div>', '2014-05-12 23:05:44', 'Distrito Federal', '1', '10', 'Piezas', '1', 'PCT100', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('400', '83', 'Fiestas y eventos', 'Decoración', '', 'Vaso Tequilero Flor/guía-  elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '46.00', 'Vaso tequilero flor guia elaborado en cerámica en hornos de altas temperaturas pintado a mano, decorado ornamental con flores. <div>Contenedor de tequila Aprox. 20ml. </div><div><br/></div><div>Medidas:</div><div>Largo 7cm y ancho 3cm.</div><div>Peso: 20 gramos. </div><div><br/></div><div><br/></div>', '2014-05-12 23:05:32', 'Distrito Federal', '1', '10', 'Piezas', '1', 'VT0010', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('401', '83', 'Fiestas y eventos', 'Decoración', '', 'Vaso Tequilero Largo elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '45.00', '<div><br/></div><div>Vasos tequileros largos de cerámica elaborados en hornos de altas de temperaturas pintados a mano, diseños propios ornamentales. </div><div>Ideal para decoración en casa, eventos o fiestas.</div><div>Contenedor para 50ml. </div><div><br/></div><div>Medidas:</div><div>10 cm de largo por 4 cm de ancho.</div><div>Peso: </div><div>75gramos Aprox. </div><div><br/></div>', '2014-05-12 23:05:07', 'Distrito Federal', '1', '10', 'Piezas', '1', 'VT0011', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('402', '83', 'Fiestas y eventos', 'Decoración', '', 'Vaso Tequilero Chico  elaborado en cerámica de alta temperatura. ', 'La Vajilla Mexicana ', '40.00', '<div><br/></div><div><br/></div><div>Vasos tequileros Chicos de cerámica elaborados en hornos de altas de temperaturas pintados a mano, diseños propios ornamentales. </div><div>Ideal para decoración en casa, eventos o fiestas.</div><div>Contenedor para 35ml. </div><div><br/></div><div>Medidas:</div><div>7cm de largo por 4 cm de ancho.</div><div>Peso: </div><div>55gramos Aprox. </div><div><br/></div>', '2014-05-12 23:05:00', 'Distrito Federal', '1', '10', 'Piezas', '1', 'VT0012', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('405', '95', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Body Remodelight ', 'Sculptural', '970.00', '<div style=\"text-align: center;\"><u>Body Remodelight </u></div><div style=\"text-align: center;\"><u><br/></u></div><div style=\"text-align: center;\">Tallas 26-38</div><div style=\"text-align: center;\">Colores Nude y Blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper sin tirantes que </div><div style=\"text-align: center;\">moldea la cadera y la cintura </div><div style=\"text-align: center;\">levanta los glúteos y controla </div><div style=\"text-align: center;\">el abdomen, además de </div><div style=\"text-align: center;\">estilizar la entrepierna . Ideal </div><div style=\"text-align: center;\">para cuerpos con talle afinado. </div>', '2014-05-22 21:05:27', 'Estado de México', '1', '150', 'Piezas ', '1', 'BORL10', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('406', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Brassiere Remodelador', 'Sculptural', '360.00', '<div style=\"text-align: center;\"><u>Brassier Remodelador </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Colores: Nude, Negro y Blanco.</div><div style=\"text-align: center;\">Tallas: 23-38. Copas A-J </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Sostén anatómico a la medida</div><div style=\"text-align: center;\"> que reafirma el busto, lo </div><div style=\"text-align: center;\">iguala, lo aumenta o lo</div><div style=\"text-align: center;\"> duisminuye, estiliza el tórax y </div><div style=\"text-align: center;\">fortalece la columna. </div>', '2014-05-22 22:05:53', 'Estado de México', '1', '120', 'Piezas ', '1', 'BRRE10', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('407', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Night ', 'Sculptural', '630.00', '<div style=\"text-align: center;\"><u> Body Night </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 26-38</div><div style=\"text-align: center;\">Colores: Negro y Blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Prenda ultra ligera con encaje </div><div style=\"text-align: center;\">de lycra que ayuda a mantener </div><div style=\"text-align: center;\">el busto en su lugar y lo</div><div style=\"text-align: center;\">estiliza durante las jornadas</div><div style=\"text-align: center;\"> de descanso. Ideal para todo tipo </div><div style=\"text-align: center;\">de cuerpos. </div>', '2014-05-22 22:05:02', 'Estado de México', '1', '150', 'Piezas ', '1', 'BONI10', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('408', '95', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Body Panty ', 'Sculptural', '690.00', '<div style=\"text-align: center;\"><u>Body Panty</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 24-36</div><div style=\"text-align: center;\">Colores: Nude, Negro y Blanco. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Disminuye la cintura, ejerce un </div><div style=\"text-align: center;\">ligero control de abdomen.</div><div style=\"text-align: center;\">Ideal para cuerpos con piernas</div><div style=\"text-align: center;\">delgadas y cintura un poco marcada. </div>', '2014-05-22 22:05:31', 'Estado de México', '1', '135', 'Piezas ', '1', 'BOPA10', 'â‚¬', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('409', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Figure ', 'Sculptural', '1090.00', '<div style=\"text-align: center;\"><u>Body figure </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 26-38</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Colores: Nude, Negro y Blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper integral que moldea la</div><div style=\"text-align: center;\">cadera y la cintura, levanta los </div><div style=\"text-align: center;\">glúteos y controla el </div><div style=\"text-align: center;\">abdomen, además de estilizar</div><div style=\"text-align: center;\">la entrepierna. Ejerce un </div><div style=\"text-align: center;\">control moderado sobre el </div><div style=\"text-align: center;\">talle gracias a sus varillas</div><div style=\"text-align: center;\">flexibles. Ideales para cuerpos</div><div style=\"text-align: center;\">con cintura poco marcada y/o </div><div style=\"text-align: center;\">cadera amplia. </div>', '2014-05-22 22:05:45', 'Estado de México', '1', '120', 'Piezas ', '1', 'BOFI20', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('410', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Complete', 'Sculptural', '1250.00', '<div style=\"color: rgb(66, 66, 66); text-align: center;\"><u>Body Complete </u></div><div style=\"color: rgb(66, 66, 66); text-align: center;\"><u><br/></u></div><div style=\"color: rgb(66, 66, 66); text-align: center;\">Tallas: 28-38</div><div style=\"color: rgb(66, 66, 66); text-align: center;\">Colores: Nude y Negro.</div><div style=\"color: rgb(66, 66, 66); text-align: center;\"><br/></div><div style=\"color: rgb(66, 66, 66); text-align: center;\">Shaper completo forrado </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">de algodón que moldea la </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">cadera, controla el </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">abdomen, disminuye la </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">cintura, levanta los </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">glúteos y tornea los </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">muslos. Ideal para todo </div><div style=\"color: rgb(66, 66, 66); text-align: center;\">tipo de cuerpos. </div><div><br/></div>', '2014-05-22 22:05:22', 'Estado de México', '1', '150', 'Piezas ', '1', 'BOCM20', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('411', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Up', 'Sculptural', '970.00', '<div style=\"text-align: center;\"><u>Body Up </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 26-38</div><div style=\"text-align: center;\">Colores: Nude, negro y blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper que delinea la </div><div style=\"text-align: center;\">cintura y la entrepierna. Realza </div><div style=\"text-align: center;\">moldea y forma el glúteo. ideal para </div><div style=\"text-align: center;\">cuerpos con poco </div><div style=\"text-align: center;\">glúteo. </div>', '2014-05-22 22:05:44', 'Estado de México', '1', '200', 'Piezas ', '1', 'BOUP20', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('412', '95', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Lady- Tee ', 'Sculptural', '500.00', '<div style=\"text-align: center;\"><u>Lady- Tee</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 24-38</div><div style=\"text-align: center;\">Colores: Nude, Negro y blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Clásica en su diseño con </div><div style=\"text-align: center;\">doble refuerzo de cruz en </div><div style=\"text-align: center;\">espalda que fortalece y </div><div style=\"text-align: center;\">doble refuerzo lineal en el </div><div style=\"text-align: center;\">abdomen que lo controla. </div><div style=\"text-align: center;\">Ideal para cuerpos con </div><div style=\"text-align: center;\">cintura poco marcada y/o </div><div style=\"text-align: center;\">cadera angosta. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-22 22:05:35', 'Estado de México', '1', '100', 'Piezas ', '1', 'LATE30', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('413', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Elegance ', 'Sculptural', '950.00', '<div style=\"text-align: center;\"><u>Elegance</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 26-38</div><div style=\"text-align: center;\">Colores: Nude, Negro y blanco.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper que ejerce</div><div style=\"text-align: center;\">control moderado </div><div style=\"text-align: center;\">sobre todo el talle.</div><div style=\"text-align: center;\">Tipo de Corsé con </div><div style=\"text-align: center;\">varillas flexibles. Ideal </div><div style=\"text-align: center;\">para todo tipo de cuerpos. </div>', '2014-05-22 23:05:28', 'Estado de México', '1', '250', 'Piezas ', '1', 'ELCE30', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('414', '95', 'Ropa, calzado y accesorios', 'Ropa', 'Caballeros', 'Men-Tee ', 'Sculptural', '490.00', '<div style=\"text-align: center;\"><u>Men - Tee</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas:28-40</div><div style=\"text-align: center;\">Colores: Negro y Blanco.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Camiseta remodeladora </div><div style=\"text-align: center;\">que brinda un gran </div><div style=\"text-align: center;\">soporte a la espalda y</div><div style=\"text-align: center;\">ejerce un control</div><div style=\"text-align: center;\">moderado sobre el </div><div style=\"text-align: center;\">abdomen. </div>', '2014-05-22 23:05:57', 'Estado de México', '1', '120', 'Piezas ', '1', 'MTEE40', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('415', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Tanga ', 'Sculptural', '690.00', '<div style=\"text-align: center;\"><u>Body Tanga </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 24-36<span style=\"white-space:pre\">	</span></div><div style=\"text-align: center;\">Colores: Nude, negro y blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper que disminuye</div><div style=\"text-align: center;\">la cintura ejerce un </div><div style=\"text-align: center;\">ligero control de </div><div style=\"text-align: center;\">abdomen y resalta </div><div style=\"text-align: center;\">glúteo y cadera. Ideal </div><div style=\"text-align: center;\">para cuerpos con poco </div><div style=\"text-align: center;\">cadera y cintura poco</div><div style=\"text-align: center;\"> marcada. </div>', '2014-05-22 23:05:10', 'Estado de México', '9', '150', 'Piezas ', '1', 'BTGA40', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('416', '95', 'Salud y belleza', 'Cuidado del cuerpo', '', 'Body Sculptural ', 'Sculptural', '1390.00', '<div style=\"text-align: center;\"><u>Body Sculptural </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 26-38</div><div style=\"text-align: center;\">Colores: Nude, Negro y Blanco.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper que moldea desde el </div><div style=\"text-align: center;\">tobillo hasta la parte superior</div><div style=\"text-align: center;\">del tórax, da forma a la cadera, </div><div style=\"text-align: center;\">levanta los glúteos y controla el </div><div style=\"text-align: center;\">abdomen, además de estilizar</div><div style=\"text-align: center;\">la entrepierna. Ideal para todo </div><div style=\"text-align: center;\">tipo de cuerpos. </div>', '2014-05-22 23:05:07', 'Estado de México', '2', '200', 'Piezas ', '1', 'BOSC50', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('417', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Body Light ', 'Sculptural', '1050.00', '<div style=\"text-align: center;\"><u>Body Light </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 24-38</div><div style=\"text-align: center;\">Colores: Nude, Negro y Blanco.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Shaper que estiliza la </div><div style=\"text-align: center;\">entrepierna, moldea la cadera</div><div style=\"text-align: center;\">y la cintura, levanta los glúteos</div><div style=\"text-align: center;\">y controla el abdomen. Ideal </div><div style=\"text-align: center;\">para todo tipo de  cuerpos. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-22 23:05:04', 'Estado de México', '1', '120', 'Piezas ', '1', 'BLIG50', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('418', '95', 'Ropa, calzado y accesorios', 'Lencería y corsetería', 'Damas', 'Brassiere Talle Largo ', 'Sculptural', '530.00', '<div style=\"text-align: center;\"><u>Brassiere Talle Largo</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 28-38 Copa: A-F</div><div style=\"text-align: center;\">Colores: Nude y blanco.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Todos nuestros shapers, estilizan el talle y dan soporte a la columna, </div><div style=\"text-align: center;\">En Sculptural fabricamos tu shaper y/o brassier a la medida </div><div style=\"text-align: center;\">gracias al diagnostico que te realizamos. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-22 23:05:01', 'Estado de México', '1', '200', 'Piezas ', '1', 'BRTL60', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('419', '95', 'Ropa, calzado y accesorios', 'Ropa', 'Caballeros', 'Chaleco Ejecutivo ', 'Sculptural', '650.00', '<div style=\"text-align: center;\"><u>Chaleco Ejecutivo </u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Colores: Negro y Blanco </div><div style=\"text-align: center;\">Tallas: 28-40</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Chaleco remodelador que </div><div style=\"text-align: center;\">gracias a sus varillas</div><div style=\"text-align: center;\">flexibles en la espalda y a </div><div style=\"text-align: center;\">su broche de tricorchet  en </div><div style=\"text-align: center;\">la parte frontal brindan </div><div style=\"text-align: center;\">un control moderado </div><div style=\"text-align: center;\">sobre el abdomen y la </div><div style=\"text-align: center;\">espalda. </div>', '2014-05-22 23:05:10', 'Estado de México', '2', '100', 'Piezas ', '1', 'CEJE70', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('420', '95', 'Ropa, calzado y accesorios', 'Ropa', 'Caballeros', 'Camiseta ejecutiva', 'Sculptural', '950.00', '<div style=\"text-align: center;\"><u>Camiseta ejecutiva</u></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tallas: 28-40</div><div style=\"text-align: center;\">Colores: Negro y Blanco </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Camiseta remodeleadora</div><div style=\"text-align: center;\">con 4 fuerzos de </div><div style=\"text-align: center;\">powernet que envuelve el </div><div style=\"text-align: center;\">abdómen ejerciendo un </div><div style=\"text-align: center;\">control fuerte sobre el </div><div style=\"text-align: center;\">mismo.</div><div style=\"text-align: center;\"><br/></div>', '2014-05-22 23:05:01', 'Estado de México', '1', '130', 'Piezas ', '1', 'CAEJ70', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('421', '98', 'Música, libros y películas', 'Películas', '', 'DVD Cocina Gourmet Francia- Documental ', 'Titanio Records ', '99.90', '<div style=\"text-align: center;\">Francia </div><div style=\"text-align: center;\">Cocina Gourmet <span style=\"white-space:pre\">	</span></div><div style=\"text-align: center;\">Contiene un DVD </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Buen pan, buen vino...magníficos quesos, una gran variedad de sabores y una gran tradición culinaria hacen de la gastrinomía francesa una de las más reconocidas y exquisitas del mundo. </div><div style=\"text-align: center;\">Bienvenidos al viaje Gourmet, como probablemente sepan, Francia es la cuna del Gourmet. Así que comencemos nuestro viaje para conocer lo que hace tan especial la comida francesa, y lo que nosotros como turistas podemos esperar durante nuestro viaje por Francia. Pasemos todo un día de Gourmet en Francia. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 2.0</div><div style=\"text-align: center;\">Duración: 30 min. Aprox. </div><div style=\"text-align: center;\">Lenguaje: Español e Inglés.</div><div style=\"text-align: center;\">Región: Multiregión. </div><div style=\"text-align: center;\">Género: Documental.</div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div>', '2014-05-23 00:05:30', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410784', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('422', '98', 'Música, libros y películas', 'Películas', '', 'CD+DVD Reflejos Impresiones del Infinito-Espectacular unión del cine /música.', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">REFLECTIONS </div><div style=\"text-align: center;\">\"Reflejos\" </div><div style=\"text-align: center;\">Contiene un CD+DV Clásica (Soundtrack) </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Un verdadero genio de la cinematografía y una gloriosa galería móvil de fotografías; son presentadas por David Fortnay. Una espectacular e impresionante conjunción entre música e imágenes. Simplemente no existe otro ser humano sobre la tierra capaz de capturar de esta forma la belleza de la naturaleza. \"Reflejos! es un maravilloso viaje visual a través del continente americano. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 5.1</div><div style=\"text-align: center;\">Duración:0:37:58 </div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Genero: Relajación </div><div style=\"text-align: center;\">Índice de escenas y mení interactivo. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"><br/></div>', '2014-05-23 22:05:07', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410500', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('423', '98', 'Música, libros y películas', 'Películas', '', 'DVD- RichArt Celebración- Sonidos Relajantes y paisajes placenteros. ', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\">RichArt </div><div style=\"text-align: center;\">Celebration </div><div style=\"text-align: center;\">\"Celebración\" </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Sonidos relajantes y paisajes placenteros son un meditativo encuentro con la naturaleza. Recuéstate, respira profunda,mente y relájate. Este DVD podrá activar tu energía natural para así fomentar la salud, la sanación, el balance y la integridad.</div><div style=\"text-align: center;\">La vida es unba celebración, la vida es hermosa, la vida es el tiempo de ser. Todos corremos cada minuto, maximizando, haciendo múltiples tareas a la vez, tratando de ser eficientes. Mientras logramos medir el tiempo en cada vez más pequeñas escalas, la tecnología nos hace movernos más rápido. Este DVD es para estar aquí y ahora, viviendo un día de  triunfante dicha, buscando el presnete  y experimentando la vida. Hazlo con alegría y celebración. La vida es la culminación de la creación y una experiencia espiritual.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Música por Richar Hiebinger </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 5.1<span style=\"white-space:pre\">	</span></div><div style=\"text-align: center;\">Duración: 0:46:02<span style=\"white-space:pre\">	</span></div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Relajación New Age </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div>', '2014-05-23 22:05:23', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410395', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('424', '98', 'Música, libros y películas', 'Películas', '', 'DVD-RichArt Relajación Profunda- Sonidos Relajantes y paisajes placenteros. ', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">RichArt</div><div style=\"text-align: center;\">DEEP RELAXATION </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Relajación Profunda. </div><div style=\"text-align: center;\"> </div><div><div style=\"text-align: center;\">Este DVD fue creado para darte relajación simple, un buen descanso y liberarte de las presiones cotidianas. \"Relajación Profunda\" trabajará en cada parte de tu cuerpo para que gradualmente se relaje y libere tensiones. La música acelera el proceso de relajación significativamente. De esta forma la música de apoyo del maestro Richart te ayudará a relajarte profundamente y te auxiliará en el proceso de auto-sanación donde te liberarás de tus tensiones y entrarás en contacto y abrirás tus recursos internos. </div></div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 5.1</div><div style=\"text-align: center;\">Duración: 0:46:00</div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región : Multiregión</div><div style=\"text-align: center;\">Género: Relajación New Age</div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div>', '2014-05-23 22:05:08', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410333', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('425', '98', 'Música, libros y películas', 'Películas', '', 'DVD- RichArt Paz- Sonidos relajantes y paisajes placenteros. ', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">RichArt </div><div style=\"text-align: center;\">PEACE</div><div style=\"text-align: center;\">\"Paz\"</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">La paz es la sonrisa del mundo, deja a tu espíritu ascender como suaves oleadas musicales mientras infinitos horizontes emergen matices en azul. Escucha el susurrar del viento y siente la abrasadora paz. La música es calmada y suave, ideal para escaparse por un largo rato, sólo paz y tranquilidad. La excelente música electrónica ambiental con  un toque de clásica Hindú compuesta por el maestro RichAr, está hecha para la relajación y reflexión de una meditación audio visual. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 5.1</div><div style=\"text-align: center;\">Duración: 0:47:07</div><div style=\"text-align: center;\">Lenguaje: Español</div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Relajación New Age </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-23 23:05:12', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410326', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('426', '98', 'Música, libros y películas', 'Películas', '', 'DVD-RichArt Sueño Marino- Sonidos Relajantes y placenteros.  ', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">RichArt </div><div style=\"text-align: center;\">SEA DREAM </div><div style=\"text-align: center;\">Sueño Marino </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Sueño Marino es un suave y meditativo encuentro con la naturaleza. Deja a tu espíritu elevarse mientras las gentiles olas chocan con las atemporales rocas y los infinitos horizontes emergen en matices de azul. Escucha el susurrar del viento y déjate acoger por el mar.</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 5.1</div><div style=\"text-align: center;\">Duración: 0:45:36</div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Relajación New Age </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo.  </div>', '2014-05-23 23:05:42', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410364', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('427', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Escuela de Magia de Cecile y Pepo- Trucos de magia.', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">Escuela de Magia de Cecile y Pepo </div><div style=\"text-align: center;\">Aprende fantásticos trucos de magia y sorprende a tus amigos </div><div style=\"text-align: center;\">¡Conviértete en un gran Mago! </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Para niños de 6 años en adelante</div><div style=\"text-align: center;\">*** Recomendado por expertos. </div><div style=\"text-align: center;\">VOL. 1</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">En este DVD podrás ver los actos de magia presentados en la forma en la que los espectadores los verán cuando seas tú el que los realice, además también te enumera todo el material que necesitas y que seguramente tienes en casa, y te muestra paso a paso la forma en que hace cada truco. </div><div style=\"text-align: center;\">Contiene 14 trucos con explicacióm para realizarlos. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 16:9</div><div style=\"text-align: center;\">Audio: 2.0</div><div style=\"text-align: center;\">Duración: 60 minutos</div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Infantil/Educativo </div><div style=\"text-align: center;\">Menú Interactivo.  </div>', '2014-05-23 23:05:44', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410760', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('428', '98', 'Música, libros y películas', 'Películas', '', 'DVD- Familia y valores- La obediencia y el esfuerzo-Basado en cuentos clásicos. ', 'Productora Titanio Records ', '99.90', '<div style=\"text-align: center;\">DVD- Familia y valores- La obediencia y el esfuerzo-Basado en cuentos clásicos. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">La mejor colección en DVD sobre Familia y Valores. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">*Las aventuras de Lupo </div><div style=\"text-align: center;\">*El príncipe enfermo </div><div style=\"text-align: center;\">*Robinson Tuboe</div><div style=\"text-align: center;\">*Un regalo para mamá </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 4:3</div><div style=\"text-align: center;\">Audio: 2.0</div><div style=\"text-align: center;\">Duración: 0:31:32</div><div style=\"text-align: center;\">Lenguaje: Español. </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Infantil </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-23 23:05:34', 'Estado de México', '1', '1', 'Pieza', '1', '7509768163505', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('429', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Health & fitness Bodyforming-Rutinas y  ejercicios ', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\">Health & fitness </div><div style=\"text-align: center;\">Bodyforming </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Es una disciplina que no tiene nombre en español y su propósito es fortalecer el cuerpo, es una forma moderna de ejercicios de fortalecimiento los cuales es posible usar pesos ligeros (pesas, ligas para estiramientos, etc.) El objetivo principal de los ejercicios es fortalecer y moldear los grupos de músculos de todo el cuerpo. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Tu cuerpo y tus músculos fortalecidos se verán mejor y tu te sentirás más atractivo(a), más interesante,  más satisfecho(a) contigo mismo(a). </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Estos ejercicios brindadn un sentimiento placentero. El origen de dichos sentimientos y estados de ánimo se lográ cuando el cuerpo secreta endorfinas (hormonas positivas), esto ocurre durante largos periodos de ejercicio. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 16:9</div><div style=\"text-align: center;\">Audio 2.0 </div><div style=\"text-align: center;\">Duración 0:48:20</div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región : Multiregión. </div><div style=\"text-align: center;\">Género Bienestar </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\"><br/></div>', '2014-05-26 21:05:54', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410654', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('430', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Health & fitness/ Fit Yoga 1 -Rutinas y  ejercicios ', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\"><span style=\"color: rgb(66, 66, 66); font-family: arial; text-align: justify;\">Health &amp; fitness </span></div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Fit Yoga 1 </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\"><br/></div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\"><br/></div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">No es filosofía, es solo una forma de ejercitarse. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">El objetivo de estos ejercicios es fortalecer la flexibilidad y firmeza de todo el cuerpo. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Los ejercicios también están diseñados para que los órganos internos del cuerpo funcionen correctamente, para relajarse y descansar. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Mejora la concentración, reduce el estrés, la tensión y la fatiga. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Extiende la respiración y armoniza el sistema vascular. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Yoga en forma de esta diseñado para personas sanas, si tienes alguna duda al respecto consulta a tu médico. </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\"><br/></div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Formato: 16:9 </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Audio:2.0</div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Duración: 0:48:23</div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Lenguaje: Español </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Región: Multiregión</div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Género: Bienestar </div><div style=\"text-align: center; color: rgb(66, 66, 66); font-family: arial;\">Índice de escenas y menú interactivo. </div>', '2014-05-26 22:05:42', 'Estado de México', '1', '1', 'Pieza', '1', '7509768410647', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('431', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Health & fitness/Belly dance(danza árabe) ', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\">Health & fitness</div><div style=\"text-align: center;\">Belly Dance </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Haz ejercicios de calentamientos apropiados antes de cada sesión. También es importante realizar una sesión de estiramiento al finalizar. </div><div style=\"text-align: center;\">Si tienes algún problema serio de salud consulta a tu médico. </div><div style=\"text-align: center;\">No te recomendamos practicar este baile si estas embarazada. También debes consultar a tu médico y puedes omitir los movimientos bruscos. </div><div style=\"text-align: center;\">Puedes bailar frente al espejo para que tengas mayor control de tu cuerpo y para que te des cuenta si estas realizando correctamente los movimientos. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 16:9</div><div style=\"text-align: center;\">Audio: 2.0</div><div style=\"text-align: center;\">Duración: 01:07:32 </div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Bienestar </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo.  </div>', '2014-05-26 22:05:24', 'Estado de México', '1', '2', 'Piezas', '1', '7509768410739', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('432', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Health & Fitness-Espalda sin dolor- Rutinas y ejercios ', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\">Health & fitness </div><div style=\"text-align: center;\">Espalda sin dolor</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Déjanos presentarte una serie de ejercicios que te brindarán alivio cada vez que te duela la espalda. El objetivo de estos ejercicios es crear balance entre músculos y la región de la espina. Necesitas seguir unas cuantas reglas para lograr la efectividad en estos ejercicios: </div><div style=\"text-align: center;\">-Ejercitate regularmente; seguido, e incluso varias veces al día; lo mejor es hacerlo siempre a la misma hora.</div><div style=\"text-align: center;\">-El tiempo ideal para dedicarle al ejercicio es de 15 a 20 minutos diarios. </div><div style=\"text-align: center;\">-No te ejercites si tienes hambre, si has comido demasiado o con poca antelación; lo ideal es realizar los ejercicios por hora y media después de haber comido. </div><div style=\"text-align: center;\">-Utiliza ropa deportiva y holgada. </div><div style=\"text-align: center;\">-Crea un ambiente propicio, una atmósfera placentera, temperatura adecuada, etc. </div><div style=\"text-align: center;\">-Realiza los ejercicios tratando de mover todos tus músculos; evita los movimientos rápidos o abruptos.</div><div style=\"text-align: center;\">-Si algún ejercicio te causa dolor, no lo hagas. </div><div style=\"text-align: center;\">-Repite cada ejercicio de 5 a 10 veces. </div><div style=\"text-align: center;\">-Pon atención a la respiración constante tal y como lo indica cada ejercicio. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato:16:9</div><div style=\"text-align: center;\">Audio: 2.0</div><div style=\"text-align: center;\">Duración: 0:57:45</div><div style=\"text-align: center;\">Lenguaje: Español </div><div style=\"text-align: center;\">Región:Multiregión </div><div style=\"text-align: center;\">Género: Bienestar </div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div><div style=\"text-align: center;\"><br/></div>', '2014-05-26 22:05:08', 'Estado de México', '1', '2', 'Piezas', '1', '7509768410661', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('433', '98', 'Música, libros y películas', 'Películas', '', 'DVD-Health & fitness-Pilates 1-Guía para principiantes e intermedios- Ejercicios', 'Productora Titanio Records', '99.90', '<div style=\"text-align: center;\">Healt & Fitness</div><div style=\"text-align: center;\">Pilates 1</div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Observa cuidadosamente todo el programa de ejercicios antes de empezar. Lee completamente cada uno de los capítulos de este DVD. Solo hasta que lo hayas hecho empieza con la rutina. Este DVD esta  diseñado para personas que gocen de buena salud. Recuerda que si decides ejercitarte con este DVD lo harás bajo tu propio riesgo. </div><div style=\"text-align: center;\">Si tienes algún problema consulta a tu médico. </div><div style=\"text-align: center;\">Pilates es un método para ejercitarse. Difiere de los programas comunes de ejercicio porque se necesita de una máxima concentración realizar cada uno de los movimientos.Está concentración significa conectar el cuerpo y la mente.  Pilates es similar al bailde y al Yoga, en el sentido que se necesita un entrenamiento diario para mejorar. El método Pilates es un programa de ejercicios, que te ayudará a que tu cuerpo se vea delgado y alargado. Reafirma las partes delicadas del cuerpo y mejora el control, del mismo. </div><div style=\"text-align: center;\">El método Pilates ayuda a mejorar la flexibilidad, fortaleza, persistencia, balance, coordinación y respiración. </div><div style=\"text-align: center;\"><br/></div><div style=\"text-align: center;\">Formato: 16:9</div><div style=\"text-align: center;\">Audio:2.0</div><div style=\"text-align: center;\">Duración: 0:56:27</div><div style=\"text-align: center;\">Lenguaje:Español</div><div style=\"text-align: center;\">Región: Multiregión </div><div style=\"text-align: center;\">Género: Bienestar</div><div style=\"text-align: center;\">Índice de escenas y menú interactivo. </div>', '2014-05-26 22:05:42', 'Estado de México', '1', '2', 'Piezas', '1', '750976841610', '$', '0.00', '0', '0', '0.00', '0', 'pe');
INSERT INTO `productos_empresas` VALUES ('438', '101', 'Ropa, calzado y accesorios', 'Otros', 'Caballeros', 'SOMBRERO TIPO INDIANA JONES', 'EL GRAN SOMBRERO', '300.00', 'ELEGANTISIMO SOMBRERO FEDORA HECHO EN PIEL DE MOSCA FINISIMA', '2014-05-31 22:05:42', 'Coahuila', '1', '100', 'PZA', '0', '10', '$', '280.00', '11', '30', '260.00', '31', 'pe');

-- ----------------------------
-- Table structure for `propietarios`
-- ----------------------------
DROP TABLE IF EXISTS `propietarios`;
CREATE TABLE `propietarios` (
  `id_empresa` int(11) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of propietarios
-- ----------------------------
INSERT INTO `propietarios` VALUES ('4', '‰ÌíÕ¿Fÿå (\"¡5£');
INSERT INTO `propietarios` VALUES ('5', '-\ndxµßÙjîàŒáÖ¿');
INSERT INTO `propietarios` VALUES ('8', 'Û:IWåR]a€ÜRR˜4Æ');
INSERT INTO `propietarios` VALUES ('19', '›OZý5\r³hè‘¿5ˆ!£ä');
INSERT INTO `propietarios` VALUES ('25', '&]v£·À°3–\\¬LÌ¬ø');
INSERT INTO `propietarios` VALUES ('27', 'K¡@µ“<*>GS	h‚)z');
INSERT INTO `propietarios` VALUES ('28', 'Š2B¼ 6–7Ÿ³vž-');
INSERT INTO `propietarios` VALUES ('41', '¼Ñ%„§ÃüsÜÎéý³');
INSERT INTO `propietarios` VALUES ('43', 'Iû‰ê¨·iý¯kù…Ps');
INSERT INTO `propietarios` VALUES ('55', 'M³²‡Þfæ.­AáßUC½');
INSERT INTO `propietarios` VALUES ('56', 'îí9¶ƒp€E³BÓŸhyî');
INSERT INTO `propietarios` VALUES ('65', '3Ì…’ÿ˜öx{ebFí{');
INSERT INTO `propietarios` VALUES ('67', 'Ÿ.j¤ÒŽEuÈî¶«•NÍ');
INSERT INTO `propietarios` VALUES ('68', '! \rnQ]ø.ÇBöè	^Ø');
INSERT INTO `propietarios` VALUES ('71', 'å\r¼ç˜¥öu{ÌE¢-Ù@¤');
INSERT INTO `propietarios` VALUES ('80', 'a?›-¦<=$¹ÏÎ9‰£?');
INSERT INTO `propietarios` VALUES ('81', 'Bò5R‡¯“	í‡');
INSERT INTO `propietarios` VALUES ('82', '}’:¹ä¯\0&­w¹¦');
INSERT INTO `propietarios` VALUES ('83', '#Òð8/džóœ-ÖÎB`4');
INSERT INTO `propietarios` VALUES ('84', '	[—WK¡.ûž©wvä');
INSERT INTO `propietarios` VALUES ('92', '=!­ñõ\\\\Eª~æœœ8');
INSERT INTO `propietarios` VALUES ('93', '®5TÕº›ÅÒÉ¢ì{ôWD');
INSERT INTO `propietarios` VALUES ('95', 'š£’`ë\"æi»M\'»UK©');
INSERT INTO `propietarios` VALUES ('96', '6·Â‘H	£¡ßß6ð¶—œ');
INSERT INTO `propietarios` VALUES ('98', '±¢J},8ÂÒÎU2Äb:');
INSERT INTO `propietarios` VALUES ('101', 'Š\\uXÙÅ]ÕØF^ƒ ');

-- ----------------------------
-- Table structure for `publicidad_lateral`
-- ----------------------------
DROP TABLE IF EXISTS `publicidad_lateral`;
CREATE TABLE `publicidad_lateral` (
  `id_publicidad` int(4) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` int(1) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `folio_banner` int(10) NOT NULL,
  `tipo_publicidad` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `url_foto1` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `fecha_peticion` date NOT NULL,
  `tiempo` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL,
  `fecha_autorizacion` datetime NOT NULL,
  `fecha_caducidad` datetime NOT NULL,
  `tiempo_restante` datetime NOT NULL,
  PRIMARY KEY (`id_publicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of publicidad_lateral
-- ----------------------------
INSERT INTO `publicidad_lateral` VALUES ('78', '1', '5', 'REGEN 7', '15', 'banner lateral', '3', '../ImagenesAnuncios/5/151.jpg', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=15', '2013-10-04', '14', '260', '0', '260', '2013-10-04 13:10:59', '2013-10-18 13:10:59', '2008-03-31 13:03:59');
INSERT INTO `publicidad_lateral` VALUES ('82', '1', '5', 'REGEN 7', '41', 'banner lateral', '3', '../ImagenesAnuncios/5/411.JPG', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=41', '2013-10-04', '21', '390', '0', '390', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('83', '1', '5', 'REGEN 7', '42', 'banner lateral', '3', '../ImagenesAnuncios/5/421.JPG', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=42', '2013-10-04', '7', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('88', '1', '4', 'B-Perfect', '13', 'banner lateral', '3', '../ImagenesAnuncios/4/131.png', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=13', '2013-10-04', '14', '260', '0', '260', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('89', '1', '4', 'B-Perfect', '14', 'banner lateral', '3', '../ImagenesAnuncios/4/141.png', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?folio=14', '2013-10-04', '28', '520', '0', '520', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('96', '1', '19', 'MUSCH', '57', 'banner lateral', '3', '../ImagenesAnuncios/19/571.png', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=19&Marca=MUSCH', '2013-11-12', '28', '520', '0', '520', '2013-11-13 09:11:35', '2013-12-11 09:12:35', '2008-05-10 10:05:35');
INSERT INTO `publicidad_lateral` VALUES ('97', '1', '19', 'MUSCH', '61', 'banner lateral', '3', '../ImagenesAnuncios/19/611.png', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=19&Marca=MUSCH', '2013-11-12', '28', '0', '0', '0', '2013-11-13 09:11:43', '2013-12-11 09:12:43', '2008-05-10 10:05:43');
INSERT INTO `publicidad_lateral` VALUES ('99', '2', '87', 'Martín Gutiérrez ', '30', 'banner lateral', '3', '../ImagenesAnuncios/impressdigytal@hotmail.com/301.png', 'http://www.e-perfect.com.mx/buscador/detalle_producto.php?folio=30', '2014-01-16', '28', '520', '0', '520', '2014-01-16 11:01:39', '2014-02-13 11:02:39', '2008-07-12 12:07:39');
INSERT INTO `publicidad_lateral` VALUES ('100', '1', '43', 'Distribuidora Mosquito', '116', 'banner lateral', '0', '../ImagenesAnuncios/43/1161.jpg', '', '2014-02-04', '14', '260', '41.6', '301.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('101', '1', '43', 'Distribuidora Mosquito', '116', 'banner lateral', '0', '../ImagenesAnuncios/43/1161.jpg', '', '2014-02-04', '21', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('102', '1', '55', 'Cuore Gifts & Arte ', '131', 'banner lateral', '0', '../ImagenesAnuncios/55/1311.jpg', '', '2014-03-04', '28', '520', '0', '520', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('103', '1', '55', 'Cuore Gifts & Arte ', '131', 'banner lateral', '0', '../ImagenesAnuncios/55/1311.jpg', '', '2014-03-04', '28', '520', '0', '520', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('104', '1', '68', 'Design ', '249', 'banner lateral', '0', '../ImagenesAnuncios/68/2491.jpg', '', '2014-03-19', '7', '130', '0', '130', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('105', '1', '72', 'DIsGraf', '262', 'banner lateral', '0', '../ImagenesAnuncios/72/2621.png', '', '2014-04-04', '28', '520', '83.2', '603.2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_lateral` VALUES ('106', '1', '72', 'DIsGraf', '262', 'banner lateral', '0', '../ImagenesAnuncios/72/2621.png', '', '2014-04-15', '28', '520', '83.2', '603.2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `publicidad_superior`
-- ----------------------------
DROP TABLE IF EXISTS `publicidad_superior`;
CREATE TABLE `publicidad_superior` (
  `id_publicidad` int(4) NOT NULL AUTO_INCREMENT,
  `tipo_usuario` int(1) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `folio_banner` int(10) NOT NULL,
  `tipo_publicidad` varchar(15) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `url_foto1` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `fecha_peticion` date NOT NULL,
  `tiempo` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL,
  `fecha_autorizacion` datetime NOT NULL,
  `fecha_caducidad` datetime NOT NULL,
  `tiempo_restante` datetime NOT NULL,
  PRIMARY KEY (`id_publicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of publicidad_superior
-- ----------------------------
INSERT INTO `publicidad_superior` VALUES ('171', '1', '5', 'REGEN 7', '15', 'banner superior', '3', '../ImagenesAnuncios/5/151.jpg', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=5&Marca=REGEN%207', '2013-10-04', '7', '150', '0', '150', '2013-10-04 13:10:35', '2013-10-11 13:10:35', '2008-03-31 13:03:35');
INSERT INTO `publicidad_superior` VALUES ('174', '1', '5', 'REGEN 7', '43', 'banner superior', '3', '../ImagenesAnuncios/5/431.png', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=5&Marca=REGEN%207', '2013-10-04', '28', '0', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('176', '1', '4', 'B-Perfect', '44', 'banner superior', '3', '../ImagenesAnuncios/4/441.jpg', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=4&Marca=B-Perfect', '2013-10-04', '14', '0', '0', '0', '2013-10-04 16:10:55', '2013-10-18 16:10:55', '2008-03-31 16:03:55');
INSERT INTO `publicidad_superior` VALUES ('186', '1', '19', 'MUSCH', '56', 'banner superior', '3', '../ImagenesAnuncios/19/561.png', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=19&Marca=MUSCH', '2013-11-12', '28', '600', '0', '600', '2013-11-13 09:11:56', '2013-12-11 09:12:56', '2008-05-10 10:05:56');
INSERT INTO `publicidad_superior` VALUES ('187', '1', '19', 'MUSCH', '60', 'banner superior', '3', '../ImagenesAnuncios/19/601.png', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=19&Marca=MUSCH', '2013-11-12', '28', '600', '0', '600', '2013-11-13 09:11:06', '2013-12-11 09:12:06', '2008-05-10 10:05:06');
INSERT INTO `publicidad_superior` VALUES ('188', '1', '31', 'Centro Incubador de Empresas A', '77', 'banner superior', '3', '../ImagenesAnuncios/31/771.jpg', 'http://www.e-perfect.com.mx/buscador/detalle_producto_empresa.php?busqueda=&folio=77', '2013-12-19', '28', '0', '0', '0', '2013-12-19 16:12:43', '2014-01-16 16:01:43', '2008-06-14 17:06:43');
INSERT INTO `publicidad_superior` VALUES ('190', '1', '28', 'Carretos Publicidad y Serigraf', '80', 'banner superior', '3', '../ImagenesAnuncios/28/Carreto (1).jpg', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=28&Marca=Carretos%20Publicidad%20y%20Ser', '2014-01-15', '28', '0', '0', '0', '2014-01-15 13:01:53', '2014-02-12 13:02:53', '2008-07-11 14:07:53');
INSERT INTO `publicidad_superior` VALUES ('191', '1', '27', 'Arte y Diseño Promocional Féni', '66', 'banner superior', '3', '../ImagenesAnuncios/27/logo de fenix.jpg', 'http://www.e-perfect.com.mx/Shops/ver_tienda.php?Id_empresa=27&Marca=Arte%20y%20Dise%C3%B1o%20Promoc', '2014-01-15', '28', '0', '0', '0', '2014-01-15 13:01:39', '2014-02-12 13:02:39', '2008-07-11 14:07:39');
INSERT INTO `publicidad_superior` VALUES ('194', '2', '87', 'Martín Gutiérrez ', '30', 'banner superior', '3', '../ImagenesAnuncios/impressdigytal@hotmail.com/301.png', 'http://www.e-perfect.com.mx/buscador/detalle_producto.php?folio=30', '2014-01-16', '28', '600', '0', '600', '2014-01-16 11:01:35', '2014-02-13 11:02:35', '2008-07-12 12:07:35');
INSERT INTO `publicidad_superior` VALUES ('195', '1', '43', 'Distribuidora Mosquito', '115', 'banner superior', '0', '../ImagenesAnuncios/43/1151.jpg', '', '2014-02-04', '14', '300', '48', '348', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('196', '1', '55', 'Cuore Gifts & Arte ', '141', 'banner superior', '0', '../ImagenesAnuncios/55/1411.png', '', '2014-03-04', '28', '600', '0', '600', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('198', '1', '68', 'Design ', '249', 'banner superior', '0', '../ImagenesAnuncios/68/2491.jpg', '', '2014-03-25', '14', '300', '48', '348', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('199', '1', '68', 'Design ', '249', 'banner superior', '0', '../ImagenesAnuncios/68/2491.jpg', '', '2014-03-25', '14', '300', '48', '348', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('200', '1', '68', 'Design ', '249', 'banner superior', '0', '../ImagenesAnuncios/68/2491.jpg', '', '2014-03-25', '14', '300', '48', '348', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('201', '1', '68', 'Design ', '249', 'banner superior', '0', '../ImagenesAnuncios/68/2491.jpg', '', '2014-03-25', '14', '300', '48', '348', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('202', '1', '72', 'DIsGraf', '262', 'banner superior', '0', '../ImagenesAnuncios/72/2621.png', '', '2014-04-04', '28', '600', '96', '696', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('203', '1', '72', 'DIsGraf', '262', 'banner superior', '0', '../ImagenesAnuncios/72/2621.png', '', '2014-04-04', '28', '600', '96', '696', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('204', '1', '72', 'DIsGraf', '262', 'banner superior', '0', '../ImagenesAnuncios/72/2621.png', '', '2014-04-04', '28', '600', '96', '696', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('205', '1', '79', 'EVAMOR', '266', 'banner superior', '0', '../ImagenesAnuncios/79/2661.jpg', '', '2014-04-29', '14', '300', '0', '300', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `publicidad_superior` VALUES ('206', '1', '80', 'x', '267', 'banner superior', '0', '../ImagenesAnuncios/80/2671.jpg', '', '2014-04-29', '28', '600', '0', '600', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `resultado`
-- ----------------------------
DROP TABLE IF EXISTS `resultado`;
CREATE TABLE `resultado` (
  `id_Resultado` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `comentario` varchar(1500) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `clvPregunta` int(11) DEFAULT NULL,
  `clvEmpresa` int(11) DEFAULT NULL,
  `clvUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_Resultado`),
  KEY `fk_clvP` (`clvPregunta`),
  KEY `fk_clvEm` (`clvEmpresa`),
  KEY `fk_clvUsua` (`clvUsuario`),
  CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`clvPregunta`) REFERENCES `pregunta` (`id_pregunta`),
  CONSTRAINT `resultado_ibfk_2` FOREIGN KEY (`clvEmpresa`) REFERENCES `empresas` (`id_empresa`),
  CONSTRAINT `resultado_ibfk_3` FOREIGN KEY (`clvUsuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of resultado
-- ----------------------------
INSERT INTO `resultado` VALUES ('1', '2015-03-30', 'zj', '10', '1', '56', '3');
INSERT INTO `resultado` VALUES ('2', '2015-03-30', 'm jd', '10', '2', '56', '3');
INSERT INTO `resultado` VALUES ('3', '2015-03-30', 'ksnkd', '10', '3', '56', '3');
INSERT INTO `resultado` VALUES ('4', '2015-04-08', 'KZNCDNV', '8', '1', '95', '4');
INSERT INTO `resultado` VALUES ('5', '2015-04-08', 'KZVJDSB', '8', '2', '95', '4');
INSERT INTO `resultado` VALUES ('6', '2015-04-08', 'KISSNVISB', '10', '3', '95', '4');
INSERT INTO `resultado` VALUES ('7', '2015-04-08', 'KANCDJ', '8', '1', '95', '5');
INSERT INTO `resultado` VALUES ('8', '2015-04-08', 'KSAVK', '8', '2', '95', '5');
INSERT INTO `resultado` VALUES ('9', '2015-04-08', 'LSMKF', '6', '3', '95', '5');
INSERT INTO `resultado` VALUES ('10', '2015-04-08', 'ksackd', '8', '1', '55', '6');
INSERT INTO `resultado` VALUES ('11', '2015-04-08', 'dfff', '8', '2', '55', '6');
INSERT INTO `resultado` VALUES ('12', '2015-04-08', 'dcd', '10', '3', '55', '6');
INSERT INTO `resultado` VALUES ('13', '2015-04-08', 'SFD', '8', '1', '56', '7');
INSERT INTO `resultado` VALUES ('14', '2015-04-08', 'AWSFD', '10', '2', '56', '7');
INSERT INTO `resultado` VALUES ('15', '2015-04-08', 'SCDSVF', '10', '3', '56', '7');
INSERT INTO `resultado` VALUES ('16', '2015-04-08', 'KSNCDV', '8', '1', '56', '8');
INSERT INTO `resultado` VALUES ('17', '2015-04-08', 'DFG', '8', '2', '56', '8');
INSERT INTO `resultado` VALUES ('18', '2015-04-08', 'KSDNFDJV', '8', '3', '56', '8');
INSERT INTO `resultado` VALUES ('19', '2015-04-09', 'FERG', '8', '1', '37', '9');
INSERT INTO `resultado` VALUES ('20', '2015-04-09', 'VFBFB', '6', '2', '37', '9');
INSERT INTO `resultado` VALUES ('21', '2015-04-09', 'DNVKFB', '8', '3', '37', '9');

-- ----------------------------
-- Table structure for `subcategorias`
-- ----------------------------
DROP TABLE IF EXISTS `subcategorias`;
CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT,
  `subcategoria` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoria` int(10) NOT NULL COMMENT 'id tabla categorias',
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subcategorias
-- ----------------------------
INSERT INTO `subcategorias` VALUES ('1', 'Accesorios para autos', '1');
INSERT INTO `subcategorias` VALUES ('2', 'Accesorios para camiones y camionetas', '1');
INSERT INTO `subcategorias` VALUES ('3', 'Accesorios para motos y cuatrimotos', '1');
INSERT INTO `subcategorias` VALUES ('4', 'Accesorios para barcos y aviación', '1');
INSERT INTO `subcategorias` VALUES ('5', 'Audio y video para autos', '1');
INSERT INTO `subcategorias` VALUES ('6', 'Herramientas', '1');
INSERT INTO `subcategorias` VALUES ('7', 'Seguridad', '1');
INSERT INTO `subcategorias` VALUES ('8', 'Otros', '1');
INSERT INTO `subcategorias` VALUES ('9', 'Autos', '2');
INSERT INTO `subcategorias` VALUES ('10', 'Barcos y aviación', '2');
INSERT INTO `subcategorias` VALUES ('11', 'Camiones y camionetas', '2');
INSERT INTO `subcategorias` VALUES ('12', 'Colectivos', '2');
INSERT INTO `subcategorias` VALUES ('13', 'Motos', '2');
INSERT INTO `subcategorias` VALUES ('14', 'Vehículos', '2');
INSERT INTO `subcategorias` VALUES ('15', 'Otros', '2');
INSERT INTO `subcategorias` VALUES ('16', 'Anfibios y reptiles', '3');
INSERT INTO `subcategorias` VALUES ('17', 'Equinos', '3');
INSERT INTO `subcategorias` VALUES ('18', 'Gatos', '3');
INSERT INTO `subcategorias` VALUES ('19', 'Mascotas en adopción', '3');
INSERT INTO `subcategorias` VALUES ('20', 'Peces y peceras', '3');
INSERT INTO `subcategorias` VALUES ('21', 'Perros', '3');
INSERT INTO `subcategorias` VALUES ('22', 'Roedores', '3');
INSERT INTO `subcategorias` VALUES ('23', 'Otros', '3');
INSERT INTO `subcategorias` VALUES ('24', 'Binoculares y telescopios', '4');
INSERT INTO `subcategorias` VALUES ('25', 'Cámaras', '4');
INSERT INTO `subcategorias` VALUES ('26', 'Cámaras de seguridad', '4');
INSERT INTO `subcategorias` VALUES ('27', 'Celulares', '4');
INSERT INTO `subcategorias` VALUES ('28', 'Teléfonos fijos', '4');
INSERT INTO `subcategorias` VALUES ('29', 'Otros', '4');
INSERT INTO `subcategorias` VALUES ('30', 'Accesorios para computadoras', '5');
INSERT INTO `subcategorias` VALUES ('31', 'Audio, tv y video', '5');
INSERT INTO `subcategorias` VALUES ('32', 'Computadoras y consolas', '5');
INSERT INTO `subcategorias` VALUES ('33', 'Impresoras', '5');
INSERT INTO `subcategorias` VALUES ('34', 'iPads y Tablets', '5');
INSERT INTO `subcategorias` VALUES ('35', 'Laptops', '5');
INSERT INTO `subcategorias` VALUES ('36', 'Palms y pockets pc', '5');
INSERT INTO `subcategorias` VALUES ('37', 'Software y juegos para pc o consola', '5');
INSERT INTO `subcategorias` VALUES ('38', 'USB', '5');
INSERT INTO `subcategorias` VALUES ('41', 'Automovilísmo', '6');
INSERT INTO `subcategorias` VALUES ('42', 'Baseball', '6');
INSERT INTO `subcategorias` VALUES ('43', 'Billar', '6');
INSERT INTO `subcategorias` VALUES ('44', 'Buceo', '6');
INSERT INTO `subcategorias` VALUES ('45', 'Ciclísmo', '6');
INSERT INTO `subcategorias` VALUES ('46', 'Deportes Extremos', '6');
INSERT INTO `subcategorias` VALUES ('47', 'Futbol', '6');
INSERT INTO `subcategorias` VALUES ('48', 'Futbol americano', '6');
INSERT INTO `subcategorias` VALUES ('49', 'Golf', '6');
INSERT INTO `subcategorias` VALUES ('50', 'Pilates y Yoga', '6');
INSERT INTO `subcategorias` VALUES ('51', 'Natación', '6');
INSERT INTO `subcategorias` VALUES ('52', 'Tenis paddle y squash', '6');
INSERT INTO `subcategorias` VALUES ('53', 'Otros', '6');
INSERT INTO `subcategorias` VALUES ('54', 'Entradas y boletos para eventos', '7');
INSERT INTO `subcategorias` VALUES ('55', 'Decoración', '8');
INSERT INTO `subcategorias` VALUES ('56', 'Inflables y brincolines', '8');
INSERT INTO `subcategorias` VALUES ('57', 'Invitaciones', '8');
INSERT INTO `subcategorias` VALUES ('58', 'Renta de sillas y mesas', '8');
INSERT INTO `subcategorias` VALUES ('59', 'Salones y jardínes', '8');
INSERT INTO `subcategorias` VALUES ('60', 'Servicio de banquetes', '8');
INSERT INTO `subcategorias` VALUES ('61', 'Servicios para eventos', '8');
INSERT INTO `subcategorias` VALUES ('62', 'Otros', '8');
INSERT INTO `subcategorias` VALUES ('63', 'Venta', '9');
INSERT INTO `subcategorias` VALUES ('64', 'Renta', '9');
INSERT INTO `subcategorias` VALUES ('65', 'Renta Vacacional', '9');
INSERT INTO `subcategorias` VALUES ('66', 'Traspasos', '9');
INSERT INTO `subcategorias` VALUES ('67', 'Accesorios Musicales', '10');
INSERT INTO `subcategorias` VALUES ('68', 'Baterías, percusión y accesorios', '10');
INSERT INTO `subcategorias` VALUES ('69', 'Guitarras y accesorios', '10');
INSERT INTO `subcategorias` VALUES ('70', 'Instrumentos de Viento y accesorios', '10');
INSERT INTO `subcategorias` VALUES ('71', 'Teclados, Pianos y accesorios', '10');
INSERT INTO `subcategorias` VALUES ('72', 'Violínes y accesorios', '10');
INSERT INTO `subcategorias` VALUES ('73', 'Otros', '10');
INSERT INTO `subcategorias` VALUES ('74', 'Antigüedades', '11');
INSERT INTO `subcategorias` VALUES ('75', 'Arte', '11');
INSERT INTO `subcategorias` VALUES ('76', 'Artesanías', '11');
INSERT INTO `subcategorias` VALUES ('77', 'Bordados', '11');
INSERT INTO `subcategorias` VALUES ('78', 'Colecciones', '11');
INSERT INTO `subcategorias` VALUES ('79', 'Filatelísmo', '11');
INSERT INTO `subcategorias` VALUES ('80', 'Manualidades', '11');
INSERT INTO `subcategorias` VALUES ('81', 'Numismática', '11');
INSERT INTO `subcategorias` VALUES ('82', 'Otros', '11');
INSERT INTO `subcategorias` VALUES ('83', 'Alimentaria', '12');
INSERT INTO `subcategorias` VALUES ('84', 'Automotríz', '12');
INSERT INTO `subcategorias` VALUES ('85', 'Construcción', '12');
INSERT INTO `subcategorias` VALUES ('86', 'Empaques', '12');
INSERT INTO `subcategorias` VALUES ('87', 'Manufacturas', '12');
INSERT INTO `subcategorias` VALUES ('88', 'Maquinaria y equipos agrícolas', '12');
INSERT INTO `subcategorias` VALUES ('89', 'Química', '12');
INSERT INTO `subcategorias` VALUES ('90', 'Textíles', '12');
INSERT INTO `subcategorias` VALUES ('91', 'Otros', '12');
INSERT INTO `subcategorias` VALUES ('92', 'Música', '13');
INSERT INTO `subcategorias` VALUES ('93', 'Libros', '13');
INSERT INTO `subcategorias` VALUES ('94', 'Películas', '13');
INSERT INTO `subcategorias` VALUES ('95', 'Animales del campo', '14');
INSERT INTO `subcategorias` VALUES ('96', 'Cereales', '14');
INSERT INTO `subcategorias` VALUES ('97', 'Frutas', '14');
INSERT INTO `subcategorias` VALUES ('98', 'Hortalizas', '14');
INSERT INTO `subcategorias` VALUES ('99', 'Insumos agropecuarios', '14');
INSERT INTO `subcategorias` VALUES ('100', 'Lácteos', '14');
INSERT INTO `subcategorias` VALUES ('101', 'Servicios agropecuarios', '14');
INSERT INTO `subcategorias` VALUES ('102', 'Otros', '14');
INSERT INTO `subcategorias` VALUES ('103', 'Restaurantes', '15');
INSERT INTO `subcategorias` VALUES ('104', 'Hoteles', '15');
INSERT INTO `subcategorias` VALUES ('105', 'Bares', '15');
INSERT INTO `subcategorias` VALUES ('106', 'Restaurante-bar', '15');
INSERT INTO `subcategorias` VALUES ('107', 'Cafés', '15');
INSERT INTO `subcategorias` VALUES ('108', 'Otros', '15');
INSERT INTO `subcategorias` VALUES ('109', 'Calzado', '16');
INSERT INTO `subcategorias` VALUES ('110', 'Lencería y corsetería', '16');
INSERT INTO `subcategorias` VALUES ('111', 'Moda actual y accesorios', '16');
INSERT INTO `subcategorias` VALUES ('112', 'Ropa', '16');
INSERT INTO `subcategorias` VALUES ('113', 'Otros', '16');
INSERT INTO `subcategorias` VALUES ('114', 'Cuidado de la piel', '17');
INSERT INTO `subcategorias` VALUES ('115', 'Cuidado del cabello', '17');
INSERT INTO `subcategorias` VALUES ('116', 'Cuidado del cuerpo', '17');
INSERT INTO `subcategorias` VALUES ('117', 'Cuidado de la salud', '17');
INSERT INTO `subcategorias` VALUES ('118', 'Cuidado de las manos', '17');
INSERT INTO `subcategorias` VALUES ('119', 'Maquillaje y cosméticos', '17');
INSERT INTO `subcategorias` VALUES ('120', 'Perfumes y fragancias', '17');
INSERT INTO `subcategorias` VALUES ('121', 'Vitaminas y suplementos', '17');
INSERT INTO `subcategorias` VALUES ('122', 'Terapias alternativas', '17');
INSERT INTO `subcategorias` VALUES ('123', 'Otros', '17');
INSERT INTO `subcategorias` VALUES ('124', 'Agencias de viajes', '18');
INSERT INTO `subcategorias` VALUES ('125', 'Hogar y oficina', '18');
INSERT INTO `subcategorias` VALUES ('126', 'Imprentas', '18');
INSERT INTO `subcategorias` VALUES ('127', 'Mantenimiento de vehículos', '18');
INSERT INTO `subcategorias` VALUES ('128', 'Mudanzas y fletes', '18');
INSERT INTO `subcategorias` VALUES ('129', 'Profesionales', '18');
INSERT INTO `subcategorias` VALUES ('130', 'Salud y belleza', '18');
INSERT INTO `subcategorias` VALUES ('131', 'Otros', '18');
INSERT INTO `subcategorias` VALUES ('132', 'Aire Acondicionado', '19');
INSERT INTO `subcategorias` VALUES ('133', 'Baños', '19');
INSERT INTO `subcategorias` VALUES ('134', 'Muebles para el hogar', '19');
INSERT INTO `subcategorias` VALUES ('135', 'Muebles para oficina', '19');
INSERT INTO `subcategorias` VALUES ('136', 'Equipos para oficina', '19');
INSERT INTO `subcategorias` VALUES ('137', 'Electrodomésticos', '19');
INSERT INTO `subcategorias` VALUES ('138', 'Cocinas', '19');
INSERT INTO `subcategorias` VALUES ('139', 'Decoración', '19');
INSERT INTO `subcategorias` VALUES ('140', 'Iluminación', '19');
INSERT INTO `subcategorias` VALUES ('141', 'Jardín y exteriores', '19');
INSERT INTO `subcategorias` VALUES ('142', 'Otros', '19');
INSERT INTO `subcategorias` VALUES ('143', 'Otras secciones en general', '20');
INSERT INTO `subcategorias` VALUES ('144', 'Plotters', '5');
INSERT INTO `subcategorias` VALUES ('145', 'Puertas y ventanas', '19');

-- ----------------------------
-- Table structure for `sugerencias`
-- ----------------------------
DROP TABLE IF EXISTS `sugerencias`;
CREATE TABLE `sugerencias` (
  `id_sugerencia` int(2) NOT NULL AUTO_INCREMENT,
  `id` int(5) NOT NULL,
  `folio` varchar(8) NOT NULL,
  PRIMARY KEY (`id_sugerencia`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sugerencias
-- ----------------------------
INSERT INTO `sugerencias` VALUES ('22', '83', '323');
INSERT INTO `sugerencias` VALUES ('23', '83', '326');
INSERT INTO `sugerencias` VALUES ('24', '83', '331');
INSERT INTO `sugerencias` VALUES ('25', '83', '328');
INSERT INTO `sugerencias` VALUES ('26', '56', '162');
INSERT INTO `sugerencias` VALUES ('27', '65', '263');
INSERT INTO `sugerencias` VALUES ('28', '65', '285');
INSERT INTO `sugerencias` VALUES ('29', '0', '192');
INSERT INTO `sugerencias` VALUES ('30', '0', '299');
INSERT INTO `sugerencias` VALUES ('31', '0', '274');

-- ----------------------------
-- Table structure for `tc_banco`
-- ----------------------------
DROP TABLE IF EXISTS `tc_banco`;
CREATE TABLE `tc_banco` (
  `id_banco` int(6) NOT NULL,
  `sucursal` varchar(15) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tc_banco
-- ----------------------------
INSERT INTO `tc_banco` VALUES ('1', 'afirme', 'http://www.afirme.com.mx/Portal/Portal.do');
INSERT INTO `tc_banco` VALUES ('2', 'banamex', 'http://www.banamex.com/');
INSERT INTO `tc_banco` VALUES ('3', 'banorte', 'http://www.banorte.com/portal/personas/home.web');
INSERT INTO `tc_banco` VALUES ('4', 'bancomer', 'http://www.bancomer.com.mx/');
INSERT INTO `tc_banco` VALUES ('5', 'santander', 'http://www.santander.com.mx/NuevaVersion/index.html');
INSERT INTO `tc_banco` VALUES ('6', 'scotiabank', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx');
INSERT INTO `tc_banco` VALUES ('7', 'mifel', 'http://www.mifel.com.mx/Portal/?id_category=1');
INSERT INTO `tc_banco` VALUES ('8', 'hsbc', 'http://www.hsbc.com.mx/1/2/');

-- ----------------------------
-- Table structure for `tc_envios`
-- ----------------------------
DROP TABLE IF EXISTS `tc_envios`;
CREATE TABLE `tc_envios` (
  `id_envio` int(10) NOT NULL,
  `compania` varchar(30) CHARACTER SET latin1 NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tc_envios
-- ----------------------------
INSERT INTO `tc_envios` VALUES ('1', 'aeroflash', 'http://www.aeroflash.com.mx/');
INSERT INTO `tc_envios` VALUES ('2', 'dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `tc_envios` VALUES ('3', 'estafeta', 'http://www.estafeta.com/');
INSERT INTO `tc_envios` VALUES ('4', 'fedex', 'http://www.fedex.com/mx/');
INSERT INTO `tc_envios` VALUES ('5', 'multipack', 'http://www.multipack.com.mx/');
INSERT INTO `tc_envios` VALUES ('6', 'redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `tc_envios` VALUES ('7', 'ups', 'http://www.ups.com/content/mx/es/index.jsx');
INSERT INTO `tc_envios` VALUES ('8', 'pakmail', 'http://www.pakmail.com.mx/');

-- ----------------------------
-- Table structure for `tiendas`
-- ----------------------------
DROP TABLE IF EXISTS `tiendas`;
CREATE TABLE `tiendas` (
  `id_tiendas` varchar(10) CHARACTER SET latin1 NOT NULL,
  `tiendas` varchar(15) CHARACTER SET latin1 NOT NULL,
  `portada` int(11) NOT NULL,
  `video` int(11) NOT NULL,
  `url_img_enc` varchar(100) NOT NULL,
  `url_img_barra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiendas
-- ----------------------------
INSERT INTO `tiendas` VALUES ('01-NG', 'Negocio', '0', '0', '../Imagenes_e_perfect/img_shop/negocio_.png', '../Imagenes_e_perfect/img_shop/horizAzul.png');
INSERT INTO `tiendas` VALUES ('02-MC', 'Micro', '1', '0', '../Imagenes_e_perfect/img_shop/micro_.png', '../Imagenes_e_perfect/img_shop/horizMorado.png');
INSERT INTO `tiendas` VALUES ('03-PYM', 'Pyme', '1', '1', '../Imagenes_e_perfect/img_shop/pyme_.png', '../Imagenes_e_perfect/img_shop/horizVerde.png');
INSERT INTO `tiendas` VALUES ('04-PLS', 'Plus', '1', '1', '../Imagenes_e_perfect/img_shop/plus_.png', '../Imagenes_e_perfect/img_shop/horizAmarillo.png');
INSERT INTO `tiendas` VALUES ('05-MSTR', 'Master', '1', '1', '../Imagenes_e_perfect/img_shop/master_.png', '../Imagenes_e_perfect/img_shop/horizNaranja.png');

-- ----------------------------
-- Table structure for `usuario`
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(500) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', '9b4939aee8192fcdd1a1adcf99bf61c8', 'Grace', 'cuadros', 'gabinocuadros@hotmail.com');
INSERT INTO `usuario` VALUES ('2', '88a8e4fc61041f21ab0feca0aeca17b1', 'hfghd', 'hgfdh', 'gracobr@hotmail.com');
INSERT INTO `usuario` VALUES ('3', 'f884e39f7b8505acdf6e41d9385adb23', 'jdbvjdbvj', 'kvdnv', 'grace@hotmail.com');
INSERT INTO `usuario` VALUES ('4', '3233e37da604299a16a1d25b8132d06c', 'graco', 'cuadros', 'gacu@hotmail.com');
INSERT INTO `usuario` VALUES ('5', 'b6b450bdd8db24557b34d34de181421e', 'CUADROS', 'OTRAVEZ', 'cuadros@hotmail.com');
INSERT INTO `usuario` VALUES ('6', '5e4a05b736ae3e66c13f3a9c6adbd7e5', 'cuadros', 'cuadros', 'public@hotmail.com');
INSERT INTO `usuario` VALUES ('7', '45b12125d6db6df40a541d7e396b99aa', 'lola', 'lula', 'lola@hotmail.com');
INSERT INTO `usuario` VALUES ('8', 'd2c86ee61ab013e6ca8bc33fa09fcd16', 'LUPE', 'LUPE', 'lupe@hotmail.com');
INSERT INTO `usuario` VALUES ('9', 'a5b730ff6429882e2d05987708f5ca22', 'CUADROS', 'CUADROS', 'lili@hotmail.com');
INSERT INTO `usuario` VALUES ('10', '55e9285737a837c9093b80ddb066ce45', 'luna', 'luna', 'lul@hotmail.com');
INSERT INTO `usuario` VALUES ('11', 'b8789a03a57102afef97cc7022e1565f', 'cuadros', 'cuadros', 'lolo@hotmail.com');

-- ----------------------------
-- Table structure for `usuario_admi`
-- ----------------------------
DROP TABLE IF EXISTS `usuario_admi`;
CREATE TABLE `usuario_admi` (
  `numero_referencia` varchar(20) NOT NULL,
  `nombre_apellido` varchar(70) NOT NULL,
  `password` varchar(300) NOT NULL,
  `estado` int(3) NOT NULL,
  `region` int(3) NOT NULL,
  `correo` varchar(70) NOT NULL,
  `tel_fijo` varchar(20) NOT NULL,
  `tel_movil` varchar(20) NOT NULL,
  `domicilio` varchar(110) NOT NULL,
  `codigo_postal` int(10) NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `url_foto` varchar(200) NOT NULL,
  `tipo_usuario` varchar(30) NOT NULL,
  `nuevo_user` tinyint(1) NOT NULL,
  PRIMARY KEY (`numero_referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario_admi
-- ----------------------------
INSERT INTO `usuario_admi` VALUES ('0107159', 'ghsgf', '474a8bea163b6603bd6db909eec0d032', '1', '1', 'gabinocuadros@hotmail.com', '55650851', '55650851', 'jahd', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/ZUlemma copia.png', 'usuario_mkt', '1');
INSERT INTO `usuario_admi` VALUES ('0107234', 'Calculadoras HP y SMS Audio ', 'eead785e5f7dda04c9c9dd22ee77d064', '2', '12', 'gabinocuadros@hotmail.com', '55650851', '55650851', 'gafdg', '55719', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/ZUlemma copia.png', 'contador', '1');
INSERT INTO `usuario_admi` VALUES ('0107307', 'hgh', 'f68c4ec4cf32831268752f745593f23c', '2', '12', 'gabinocuadros@hotmail.com', '55650851', '5517669041', 'hg', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/3701.jpg', 'contador', '1');
INSERT INTO `usuario_admi` VALUES ('0107345', 'jahd', '8dc04ce5d121b9db8abbc2bf5ff51872', '1', '1', 'gabinocuadros@hotmail.com', '55650851', '55650851', 'ah', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/M_infant_mix01 (35).png', 'admi_de_edo', '1');
INSERT INTO `usuario_admi` VALUES ('0107646', 'cleo', '258d30b54e0ea94c2c52f4158e0e8e41', '1', '1', 'gabinocuadros@hotmail.com', '55650851', '55176694041', 'fef', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/arbol_navidad_rojo.jpg', 'admi_de_edo', '1');
INSERT INTO `usuario_admi` VALUES ('0107814', 'greca', 'a4e03e7eb73b36d73d2d6f091d0e0aa3', '1', '1', 'gabinocuadros@hotmail.com', '55650851', '55650851', 'gagag', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/arbol_navidad_rojo.jpg', 'admi_de_edo', '1');
INSERT INTO `usuario_admi` VALUES ('0107841', 'jshfj', 'f5715e7d881b06a6d25101ccdaf4da65', '2', '12', 'gabinocuadros@hotmail.com', '5517669041', '55650851', 'hj', '54080', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/A_CELEBRAR.jpg', 'usuario_bd', '1');
INSERT INTO `usuario_admi` VALUES ('0107846', 'hfg', '28b5b50f593ecd7bb9b62c877f589b5e', '2', '12', 'gabinocuadros@hotmail.com', '55650851', '55650851', 'ghg', '54060', 'GACG800910ID5', 'siaep/ModuloUsuarios/modelo/Alta/paisaje2.jpg', 'admi_de_edo', '1');
INSERT INTO `usuario_admi` VALUES ('E-P54060BAGJLM', 'E-PERFECT', '7d1178e26727cdb575774cff66ca8022', '15', '12', 'e-perfect@e-perfect.com.mx', '55650851', '0445519145511', 'Mario Colí­n 3 Edif. J1-303', '54060', 'BAGJ610723462', '../../fotos_admins/E-P54060BAGJLM.png', 'superusuario', '0');

-- ----------------------------
-- Table structure for `usuarios_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_empresas`;
CREATE TABLE `usuarios_empresas` (
  `id_us_empresa` int(6) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `contrasena` varchar(70) NOT NULL,
  PRIMARY KEY (`id_us_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=781 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios_empresas
-- ----------------------------
INSERT INTO `usuarios_empresas` VALUES ('481', '3', 'cosmetical@live.com.mx', 'usuario1', 's|–!Dµe‰(KZÜ');
INSERT INTO `usuarios_empresas` VALUES ('482', '3', 'cosmetical@live.com.mx', 'usuario2', ' ËÀ9%JÒ\r…êœ˜ADÙ');
INSERT INTO `usuarios_empresas` VALUES ('483', '3', 'cosmetical@live.com.mx', 'usuario3', '#·‰aÇO‰W2\\òþV¨‘');
INSERT INTO `usuarios_empresas` VALUES ('484', '4', 'bperfect@live.com', 'usuario1', 's|–!Dµe‰(KZÜ');
INSERT INTO `usuarios_empresas` VALUES ('485', '4', 'bperfect@live.com', 'usuario2', ' ËÀ9%JÒ\r…êœ˜ADÙ');
INSERT INTO `usuarios_empresas` VALUES ('486', '4', 'bperfect@live.com', 'usuario3', '#·‰aÇO‰W2\\òþV¨‘');
INSERT INTO `usuarios_empresas` VALUES ('487', '5', 'regensiete@live.com', 'usuario1', 's|–!Dµe‰(KZÜ');
INSERT INTO `usuarios_empresas` VALUES ('488', '5', 'regensiete@live.com', 'usuario2', ' ËÀ9%JÒ\r…êœ˜ADÙ');
INSERT INTO `usuarios_empresas` VALUES ('489', '5', 'regensiete@live.com', 'usuario3', '#·‰aÇO‰W2\\òþV¨‘');
INSERT INTO `usuarios_empresas` VALUES ('490', '6', 'bodynat@live.com', 'usuario1', 's|–!Dµe‰(KZÜ');
INSERT INTO `usuarios_empresas` VALUES ('491', '6', 'bodynat@live.com', 'usuario2', ' ËÀ9%JÒ\r…êœ˜ADÙ');
INSERT INTO `usuarios_empresas` VALUES ('492', '6', 'bodynat@live.com', 'usuario3', '#·‰aÇO‰W2\\òþV¨‘');
INSERT INTO `usuarios_empresas` VALUES ('535', '9', 'bnunez@grupoxtra.com', 'usuario1', '²ýñö™µôÖ“¹=?µ');
INSERT INTO `usuarios_empresas` VALUES ('536', '9', 'bnunez@grupoxtra.com', 'usuario2', '²ýñö™µôÖ“¹=?µ');
INSERT INTO `usuarios_empresas` VALUES ('537', '9', 'bnunez@grupoxtra.com', 'usuario3', '²ýñö™µôÖ“¹=?µ');
INSERT INTO `usuarios_empresas` VALUES ('577', '19', 'innovesa2013@yahoo.com.mx', 'eduardo', 'àònòH^=C–•SìQ');
INSERT INTO `usuarios_empresas` VALUES ('578', '19', 'innovesa2013@yahoo.com.mx', 'usuario2', 'šq¾7÷³ÄöÖ1bÐ?9\n');
INSERT INTO `usuarios_empresas` VALUES ('579', '19', 'innovesa2013@yahoo.com.mx', 'usuario3', 'üïšnÄ7»”Þ‰‡åÚ	¸');
INSERT INTO `usuarios_empresas` VALUES ('610', '26', 'ventas@piccossa.com.mx', 'Mireya', '|iÎ¬G]i\0*A·Bb,');
INSERT INTO `usuarios_empresas` VALUES ('611', '26', 'ventas@piccossa.com.mx', 'usuario2', 'Ê[ÑÕËgØ´œ¾XüQ—');
INSERT INTO `usuarios_empresas` VALUES ('612', '26', 'ventas@piccossa.com.mx', 'Mireya', '(žÚ	ÃÁJùý4î-“q');
INSERT INTO `usuarios_empresas` VALUES ('613', '27', 'fenixcompras@gmail.com', 'Javier Valero', '4ÛÛ\\aŠt>ªá&	_');
INSERT INTO `usuarios_empresas` VALUES ('614', '27', 'fenixcompras@gmail.com', 'usuario2', '§rK\\«{ç|Ë®áØ*ù÷');
INSERT INTO `usuarios_empresas` VALUES ('615', '27', 'fenixcompras@gmail.com', 'usuario3', 'Ôh_ÊÄM4ÐHœ?Wý¹g');
INSERT INTO `usuarios_empresas` VALUES ('616', '28', 'carretos_publicidad@yahoo.com.mx', 'Octavio', 'ôù´¸ú´º£)	M¥ââ');
INSERT INTO `usuarios_empresas` VALUES ('617', '28', 'carretos_publicidad@yahoo.com.mx', 'victor', 'é\"´Õ\0r=ƒ´~1l²2Œ');
INSERT INTO `usuarios_empresas` VALUES ('618', '28', 'carretos_publicidad@yahoo.com.mx', 'usuario3', 'ßeïÈ÷	*íd³_èƒ');
INSERT INTO `usuarios_empresas` VALUES ('625', '31', 'decalvilloreyes@hotmail.com', 'usuario1', '<J\Zò¡_kÏ®Ÿñ…¦');
INSERT INTO `usuarios_empresas` VALUES ('626', '31', 'decalvilloreyes@hotmail.com', 'usuario2', 'ÀÇc[¥1²­ÖS…¨ßþ');
INSERT INTO `usuarios_empresas` VALUES ('627', '31', 'decalvilloreyes@hotmail.com', 'usuario3', '÷DcºDÌð!Œ*•3');
INSERT INTO `usuarios_empresas` VALUES ('641', '37', 'commerce2014@live.com', 'Pedro', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('646', '42', 'commerce2014@live.com', 'Fernando', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('654', '50', 'lyanez29@hotmail.com', 'Lourdes', '$ãy÷òußo|*Ùu’A');
INSERT INTO `usuarios_empresas` VALUES ('659', '55', 'commerce2014@live.com', 'Isabel', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('660', '56', 'commerce2014@live.com', 'Rodrigo', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('669', '65', 'angelesdm@gmail.com', 'Angeles', '¢¨ECê…¦¹?˜7»]’ê');
INSERT INTO `usuarios_empresas` VALUES ('678', '74', 'paulany27@hotmail.com', 'Paula', 'PîCë+¨}¾í¾ ã¿ïÂ');
INSERT INTO `usuarios_empresas` VALUES ('685', '81', 'commerce2014@live.com', 'LPS', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('686', '82', 'commerce2014@live.com', 'Devcon Industrial', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('687', '83', 'commerce2014@live.com', 'Alma', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('691', '84', 'commerce2014@live.com', 'ITW', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('692', '85', 'commerce2014@live.com', 'ITW', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('695', '87', 'commerce2014@live.com', 'ITW', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('698', '90', 'commerce2014@live.com', 'ITW', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('699', '91', 'gracobr@hotmail.com', 'gracobr', 'ŽT9sáe_K¯Sø=');
INSERT INTO `usuarios_empresas` VALUES ('700', '92', 'yair_gervacio@hotmail.com', 'yeimi', ' §I–æYx¹Åùq¯v–O');
INSERT INTO `usuarios_empresas` VALUES ('703', '95', 'commerce2014@live.com', 'cultural ', '=òûŸÜUŸª÷÷©Ò‹(š');
INSERT INTO `usuarios_empresas` VALUES ('708', '98', 'commerce2014@live.com', 'Titanio ', 'ø	(Q‘a=Hë«m');
INSERT INTO `usuarios_empresas` VALUES ('712', '101', 'carloscabralv@hotmail.com', 'carlos.cabral', ' §I–æYx¹Åùq¯v–O');
INSERT INTO `usuarios_empresas` VALUES ('713', '102', 'jorgewin07@gmail.com', 'jorgewin2010', 'ˆÓõÊÜ	\r®àk´y`C¿o3i+‡ãÏÉY©²\"');
INSERT INTO `usuarios_empresas` VALUES ('714', '103', 'gabinocuadros@hotmail.com', 'gracenn', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('715', '104', 'gracobr@hotmail.com', 'grace1', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('716', '105', 'gracobr@hotmail.com', 'grace2', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('717', '106', 'gracobr@hotmail.com', 'grac1', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('718', '107', 'mcnv@h', 'k cj ', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('720', '109', 'gracobr@hotmail.com', 'graco', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('721', '110', 'gabinocuadros@hotmail.com', 'pol', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('722', '111', 'gracobr@hotmail.com', 'grace', 'Ž}@õ/ÏÃ2¡sŒ–\ZÝˆ');
INSERT INTO `usuarios_empresas` VALUES ('723', '112', 'gracobr@hotmail.com', 'gracobr', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('724', '113', 'gabinocuadros@hotmail.com', 'gracobr', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('725', '114', 'gabinocuadros@hotmail.com', 'usuario11', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('726', '115', 'gabinocuadros@hotmail.com', 'cuadros', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('727', '116', 'gabinocuadros@hotmail.com', 'grac', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('728', '117', 'gabinocuadros@hotmail.com', 'f', '±Ð-Øqù˜T5ûð3_ðš');
INSERT INTO `usuarios_empresas` VALUES ('729', '118', 'gabinocuadros@hotmail.com', 'tres', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('730', '119', 'gabinocuadros@hotmail.com', 'hu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('731', '120', 'gracobr@hotmail.com', 'gracobr', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('732', '121', 'gabinocuadros@hotmail.com', 'luna', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('733', '122', 'gabinocuadros@hotmail.com', 'luno', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('734', '123', 'gabinocuadros@hotmail.com', 'olo', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('735', '124', 'gabinocuadros@hotmail.com', 'ilo', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('736', '125', 'gabinocuadros@hotmail.com', 'lim', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('737', '126', 'gabinocuadros@hotmail.com', 'idmun', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('738', '127', 'gabinocuadros@hotmail.com', 'uno', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('739', '128', 'gabinocuadros@hotmail.com', 'lol', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('740', '129', 'gabinocuadros@hotmail.com', 'pol', '²BÝ÷~`ˆbÃºÈ‚ãgr');
INSERT INTO `usuarios_empresas` VALUES ('741', '130', 'gabinocuadros@hotmail.com', 'yu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('742', '131', 'gabinocuadros@hotmail.com', 'vcvyd', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('743', '132', 'gabinocuadros@hotmail.com', 'ojoj', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('744', '133', 'gabinocuadros@hotmail.com', 'jini', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('745', '134', 'gabinocuadros@hotmail.com', 'juhuh', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('746', '135', 'gabinocuadros@hotmail.com', 'patu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('747', '136', 'gabinocuadros@hotmail.com', 'jbcjdbv', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('748', '137', 'gabinocuadros@hotmail.com', 'huhu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('749', '138', 'gabinocuadros@hotmail.com', 'hola', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('750', '139', 'gracobr@hotmail.com', 'lun', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('751', '140', 'gracobr@hotmail.com', 'ola', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('752', '141', 'gracobr@hotmail.com', 'usu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('753', '142', 'gracobr@hotmail.com', 'usu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('754', '143', 'gracobr@hotmail.com', 'usua', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('755', '144', 'gracobr@hotmail.com', 'lsfjk', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('756', '145', 'gracobr@hotmail.com', 'tres', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('757', '146', 'gracobr@hotmail.com', 'iu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('758', '147', 'gracobr@hotmail.com', 'tres', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('759', '148', 'gracobr@hotmail.com', 'sih', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('760', '149', 'gracobr@hotmail.com', 'cndjv', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('761', '150', 'gracobr@hotmail.com', 'usu', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('762', '151', 'gracobr@hotmail.com', 'ZNX HBVH', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('763', '152', 'gracobr@hotmail.com', 'MIR', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('764', '153', 'gracobr@hotmail.com', 'trres', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('765', '154', 'gracobr@hotmail.com', 'gy', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('766', '155', 'gracobr@hotmail.com', 'cuadros', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('767', '156', 'gracobr@hotmail.com', 'usuario1', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('768', '157', 'gracobr@hotmail', 'usuario1', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('769', '158', 'gracobr@hot', 'gracobr', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('770', '159', 'gracobr@gmail.com', 'local', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('771', '160', 'gabinocuadros@hotmail.com', 'yyy', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('772', '161', 'gabinocuadros@hotmail.com', 'seis', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('773', '162', 'gabinocuadros@hotmail.com', 'PPPRKROKT', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('774', '163', 'gabinocuadros@hotmail.com', 'ihihe', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('775', '164', 'gabinocuadros@hotmail.com', 'DIGHFGJ', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('776', '165', 'gabinocuadros@hotmail.com', 'B FMBKN', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('777', '166', 'gabinocuadros@hotmail.com', 'INVJBV', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('778', '167', 'gabinocuadros@hotmail.com', 'graco', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('779', '168', 'gracobr@hotmail.com', '123', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');
INSERT INTO `usuarios_empresas` VALUES ('780', '169', 'lili@hotmail.com', 'gracobrrrrrr', 'ˆQ»™*ºÉ2\'\r¦êŒ 2');

-- ----------------------------
-- Table structure for `usuarios_particulares`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_particulares`;
CREATE TABLE `usuarios_particulares` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `celular` int(14) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `municipio_region` varchar(50) NOT NULL,
  `cp` int(5) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `contrasena` varchar(65) NOT NULL,
  `no_anuncios` int(1) NOT NULL DEFAULT '0',
  `fecha_creacion` datetime NOT NULL,
  `ultimo_acceso` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='La tabla contiene los datos relacionados al Usuario PArticul';

-- ----------------------------
-- Records of usuarios_particulares
-- ----------------------------
INSERT INTO `usuarios_particulares` VALUES ('73', 'Graciela Cuadros', 'Cuadros', '  -  ', '0', 'Distrito Federal', 'Alvaro Obregón', '54060', 'gabinocuadros@hotmail.com', 'ˆQ»™*ºÉ2\'\r¦êŒ 2', '1', '2013-10-04 00:00:00', '2015-01-29 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('87', 'Martín Gutiérrez', '', ' 0155 - 53655', '0', 'Estado de México', 'Tlalnepantla de Baz', '0', 'impressdigytal@hotmail.com', 'Ž‹÷Éë!o™Äœu', '1', '2014-01-16 10:01:02', '2014-01-16 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('90', 'ARISTIDES PEREZ JIMENEZ', '', ' 55 - 5347481', '44', 'Distrito Federal', 'Azcapotzalco', '0', 'ari_peja18@hotmail.com', 'ÒgªLFžHÙpLA™‡', '1', '2014-02-21 19:02:23', '2014-04-04 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('94', 'LUZ MARIA RAMOS', '', '', '0', '', '', '0', 'luf209@yahoo.com.mx', 'mñðéìê.|³mÒ<!$', '0', '2014-04-02 19:04:23', '2014-04-02 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('96', 'sergio1', '', '', '0', '', '', '0', 'piuref@gmail.com', '\'‹\rù{\rÝZãÁå†Ä4', '0', '2014-04-29 17:04:46', '2014-04-29 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('97', 'Gardenia1', '', '', '0', '', '', '0', 'almodovardesigner@hotmail.com', 'Åæxˆˆdú¤\nÖt*Rr€', '0', '2014-04-29 17:04:56', '2014-04-29 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('98', 'BLANCA ESTHELA NIETO', '', '', '0', '', '', '0', 'blanca_enieto@hotmail.com', '˜;I„6MNou¸šC!5', '0', '2014-05-23 18:05:58', '2014-05-23 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('99', 'Mónica Franco ', '', '', '0', '', '', '0', 'moni20design@hotmail.com', 'Äñ6½äs4ÚŽDÐ?‹', '0', '2014-05-24 00:05:53', '2014-05-24 00:00:00');
INSERT INTO `usuarios_particulares` VALUES ('100', 'Carlos', '', '', '0', '', '', '0', 'carloscabralv@gmail.com', 'ˆQ»™*ºÉ2\'\r¦êŒ 2', '0', '2014-05-31 23:05:11', '2014-05-31 00:00:00');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '31', 'http://www.youtube.com/watch?v=U0g0u0drxDs');
INSERT INTO `video` VALUES ('3', '109', '');
INSERT INTO `video` VALUES ('4', '110', '');
INSERT INTO `video` VALUES ('5', '111', '');
INSERT INTO `video` VALUES ('6', '112', '');
INSERT INTO `video` VALUES ('7', '113', '');
INSERT INTO `video` VALUES ('8', '114', '');
INSERT INTO `video` VALUES ('9', '115', '');
INSERT INTO `video` VALUES ('10', '116', '');
INSERT INTO `video` VALUES ('11', '117', '');
INSERT INTO `video` VALUES ('12', '118', '');
INSERT INTO `video` VALUES ('13', '119', '');
INSERT INTO `video` VALUES ('14', '120', '');
INSERT INTO `video` VALUES ('15', '121', '');
INSERT INTO `video` VALUES ('16', '122', '');
INSERT INTO `video` VALUES ('17', '123', '');
INSERT INTO `video` VALUES ('18', '124', '');
INSERT INTO `video` VALUES ('19', '125', '');
INSERT INTO `video` VALUES ('20', '126', '');
INSERT INTO `video` VALUES ('21', '127', '');
INSERT INTO `video` VALUES ('22', '128', '');
INSERT INTO `video` VALUES ('23', '129', '');
INSERT INTO `video` VALUES ('24', '130', '');
INSERT INTO `video` VALUES ('25', '131', '');
INSERT INTO `video` VALUES ('26', '132', '');
INSERT INTO `video` VALUES ('27', '133', '');
INSERT INTO `video` VALUES ('28', '134', '');
INSERT INTO `video` VALUES ('29', '135', '');
INSERT INTO `video` VALUES ('30', '136', '');
INSERT INTO `video` VALUES ('31', '137', '');
INSERT INTO `video` VALUES ('32', '138', '');
INSERT INTO `video` VALUES ('33', '139', '');
INSERT INTO `video` VALUES ('34', '140', '');
INSERT INTO `video` VALUES ('35', '141', '');
INSERT INTO `video` VALUES ('36', '142', '');
INSERT INTO `video` VALUES ('37', '143', '');
INSERT INTO `video` VALUES ('38', '144', '');
INSERT INTO `video` VALUES ('39', '145', '');
INSERT INTO `video` VALUES ('40', '146', '');
INSERT INTO `video` VALUES ('41', '147', '');
INSERT INTO `video` VALUES ('42', '148', '');
INSERT INTO `video` VALUES ('43', '149', '');
INSERT INTO `video` VALUES ('44', '150', '');
INSERT INTO `video` VALUES ('45', '151', '');
INSERT INTO `video` VALUES ('46', '152', '');
INSERT INTO `video` VALUES ('47', '153', '');
INSERT INTO `video` VALUES ('48', '154', '');
INSERT INTO `video` VALUES ('49', '155', '');
INSERT INTO `video` VALUES ('50', '156', '');
INSERT INTO `video` VALUES ('51', '157', '');
INSERT INTO `video` VALUES ('52', '158', '');
INSERT INTO `video` VALUES ('53', '159', '');
INSERT INTO `video` VALUES ('54', '160', '');
INSERT INTO `video` VALUES ('55', '161', '');
INSERT INTO `video` VALUES ('56', '162', '');
INSERT INTO `video` VALUES ('57', '163', '');
INSERT INTO `video` VALUES ('58', '164', '');
INSERT INTO `video` VALUES ('59', '165', '');
INSERT INTO `video` VALUES ('60', '166', '');
INSERT INTO `video` VALUES ('61', '167', '');
INSERT INTO `video` VALUES ('62', '168', '');
INSERT INTO `video` VALUES ('63', '169', 'jjjjjjffrvideo');

-- ----------------------------
-- View structure for `acceso`
-- ----------------------------
DROP VIEW IF EXISTS `acceso`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `acceso` AS select `u`.`id_usuario` AS `id_usuario`,`u`.`usuario` AS `usuario`,max(`r`.`fecha`) AS `max(r.fecha)`,(curdate() - max(`r`.`fecha`)) AS `DIAS` from (`usuario` `u` left join `resultado` `r` on((`u`.`id_usuario` = `r`.`clvUsuario`))) group by `u`.`id_usuario`,`u`.`usuario`,`r`.`fecha`;

-- ----------------------------
-- View structure for `promedioparcial`
-- ----------------------------
DROP VIEW IF EXISTS `promedioparcial`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `promedioparcial` AS select `resultado`.`clvEmpresa` AS `clvEmpresa`,`resultado`.`clvPregunta` AS `clvPregunta`,avg(`resultado`.`calificacion`) AS `AVG(calificacion)` from `resultado` group by `resultado`.`clvEmpresa`,`resultado`.`clvPregunta` order by `resultado`.`clvEmpresa`,`resultado`.`clvPregunta`;
