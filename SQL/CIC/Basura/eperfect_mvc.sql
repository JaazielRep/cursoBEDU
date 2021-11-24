/*
Navicat MySQL Data Transfer

Source Server         : PROYECTO
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : eperfect_mvc

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-05-26 18:23:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `acercade_empresa`
-- ----------------------------
DROP TABLE IF EXISTS `acercade_empresa`;
CREATE TABLE `acercade_empresa` (
  `id_acercade` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_login',
  `acercade` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_acercade`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  CONSTRAINT `acercade_empresa_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acercade_empresa
-- ----------------------------

-- ----------------------------
-- Table structure for `bancos`
-- ----------------------------
DROP TABLE IF EXISTS `bancos`;
CREATE TABLE `bancos` (
  `id_banco` int(3) NOT NULL AUTO_INCREMENT,
  `banco` varchar(15) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id_banco`),
  KEY `id_banco` (`id_banco`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bancos
-- ----------------------------
INSERT INTO `bancos` VALUES ('1', 'afirme', '', 'http://www.afirme.com.mx/Portal/Portal.do');
INSERT INTO `bancos` VALUES ('2', 'banamex', '', 'http://www.banamex.com/');
INSERT INTO `bancos` VALUES ('3', 'banorte', '', 'http://www.banorte.com/portal/personas/home.web');
INSERT INTO `bancos` VALUES ('4', 'bancomer', '', 'http://www.bancomer.com.mx/');
INSERT INTO `bancos` VALUES ('5', 'santander', '', 'http://www.santander.com.mx/NuevaVersion/index.html');
INSERT INTO `bancos` VALUES ('6', 'scotiabank', '', 'http://www.scotiabank.com.mx/ES/Paginas/default.aspx');
INSERT INTO `bancos` VALUES ('7', 'mifel', '', 'http://www.mifel.com.mx/Portal/?id_category=1');
INSERT INTO `bancos` VALUES ('8', 'hsbc', '', 'http://www.hsbc.com.mx/1/2/');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id_banner` int(3) NOT NULL,
  `img_directorio` varchar(200) NOT NULL,
  `url_link` varchar(200) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_cafin` date NOT NULL,
  `status` int(1) NOT NULL,
  `id_publicidad` int(1) NOT NULL COMMENT 'clv foranea publicidad',
  `id_empresa` int(3) NOT NULL,
  PRIMARY KEY (`id_banner`),
  UNIQUE KEY `id_banner` (`id_banner`),
  KEY `id_publicidad` (`id_publicidad`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`id_publicidad`) REFERENCES `publicidad` (`id_publicidad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for `carrusel`
-- ----------------------------
DROP TABLE IF EXISTS `carrusel`;
CREATE TABLE `carrusel` (
  `id_carrusel` int(2) NOT NULL,
  `folio_producto` int(11) NOT NULL COMMENT 'clv FK a tb productos',
  `id_publicidad` int(1) NOT NULL COMMENT 'cv FK a tb publicidad',
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_clip',
  PRIMARY KEY (`id_carrusel`),
  KEY `id_publicidad` (`id_publicidad`),
  KEY `id_publicidad_2` (`id_publicidad`),
  KEY `folio_producto` (`folio_producto`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  KEY `idCli_Proveedor_2` (`idCli_Proveedor`),
  KEY `folio_producto_2` (`folio_producto`),
  KEY `folio_producto_3` (`folio_producto`),
  KEY `id_publicidad_3` (`id_publicidad`),
  KEY `idCli_Proveedor_3` (`idCli_Proveedor`),
  CONSTRAINT `carrusel_ibfk_2` FOREIGN KEY (`folio_producto`) REFERENCES `productos` (`folio_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carrusel_ibfk_3` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carrusel
-- ----------------------------

-- ----------------------------
-- Table structure for `categorias`
-- ----------------------------
DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `id_categoria` int(3) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(60) NOT NULL,
  `url_foto` varchar(120) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
-- Table structure for `datos_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `datos_empresas`;
CREATE TABLE `datos_empresas` (
  `idem` int(11) NOT NULL AUTO_INCREMENT,
  `marca_comercial` varchar(35) NOT NULL,
  `nombre_razonsocial` varchar(60) NOT NULL,
  `autorizado` int(1) NOT NULL,
  `limite_anuncios` int(11) NOT NULL,
  `numero_anuncios` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `num_visitas` int(11) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `idCli_Proveedor` int(11) NOT NULL,
  `idtipo_tienda` varchar(5) NOT NULL COMMENT 'clv FK a tb tiendas',
  `url_link` varchar(100) NOT NULL,
  PRIMARY KEY (`idem`),
  UNIQUE KEY `idtipo_tienda_2` (`idtipo_tienda`),
  KEY `idtipo_tienda` (`idtipo_tienda`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  CONSTRAINT `datos_empresas_ibfk_1` FOREIGN KEY (`idtipo_tienda`) REFERENCES `tiendas` (`idtipo_tienda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datos_empresas_ibfk_2` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datos_empresas
-- ----------------------------

-- ----------------------------
-- Table structure for `descripcion_prod`
-- ----------------------------
DROP TABLE IF EXISTS `descripcion_prod`;
CREATE TABLE `descripcion_prod` (
  `id_desc` int(11) NOT NULL AUTO_INCREMENT,
  `folio_producto` int(8) NOT NULL COMMENT 'clv FK a tb productos',
  `descripcion` varchar(5000) NOT NULL,
  PRIMARY KEY (`id_desc`),
  KEY `folio_producto` (`folio_producto`),
  CONSTRAINT `descripcion_prod_ibfk_1` FOREIGN KEY (`folio_producto`) REFERENCES `productos` (`folio_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of descripcion_prod
-- ----------------------------

-- ----------------------------
-- Table structure for `detallecompratiendas`
-- ----------------------------
DROP TABLE IF EXISTS `detallecompratiendas`;
CREATE TABLE `detallecompratiendas` (
  `id_dct` int(11) NOT NULL AUTO_INCREMENT,
  `tiempo_meses` int(5) NOT NULL,
  `num_dias` int(3) NOT NULL,
  `subtotal` double(11,2) NOT NULL,
  `IVA` double(11,2) NOT NULL,
  `total` double(11,2) NOT NULL,
  `fecha_activacion` date NOT NULL,
  `fecha_vence` date NOT NULL,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `idtipo_tienda` varchar(5) NOT NULL COMMENT 'clv FK a tb tiendas',
  `id_plantienda` varchar(30) NOT NULL COMMENT 'clv FK a tb planes_tienda',
  PRIMARY KEY (`id_dct`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`,`idtipo_tienda`),
  KEY `idCli_Proveedor_2` (`idCli_Proveedor`),
  KEY `idtipo_tienda` (`idtipo_tienda`),
  KEY `id_plantienda` (`id_plantienda`),
  CONSTRAINT `detallecompratiendas_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detallecompratiendas_ibfk_2` FOREIGN KEY (`idtipo_tienda`) REFERENCES `tiendas` (`idtipo_tienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detallecompratiendas
-- ----------------------------

-- ----------------------------
-- Table structure for `estados`
-- ----------------------------
DROP TABLE IF EXISTS `estados`;
CREATE TABLE `estados` (
  `id_estado` int(2) NOT NULL AUTO_INCREMENT,
  `estado` varchar(70) DEFAULT NULL,
  `imagen_estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estado`),
  UNIQUE KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
-- Table structure for `faq`
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `idfaq` int(11) NOT NULL AUTO_INCREMENT,
  `folio_producto` int(11) NOT NULL COMMENT 'clv FK a tb productos',
  `autor_preg` varchar(40) NOT NULL,
  `email_preg` varchar(40) NOT NULL,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `id_tipousuario` int(1) NOT NULL COMMENT 'clv FK a tb tipo_usuario',
  `pregunta` varchar(1000) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `respuesta` varchar(1000) NOT NULL,
  `autor_respuesta` varchar(30) NOT NULL,
  `fecha_resp` date NOT NULL,
  `autorizado` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idfaq`),
  KEY `folio_producto` (`folio_producto`,`idCli_Proveedor`,`id_tipousuario`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  KEY `id_tipousuario` (`id_tipousuario`),
  CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`folio_producto`) REFERENCES `productos` (`folio_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `faq_ibfk_2` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of faq
-- ----------------------------

-- ----------------------------
-- Table structure for `fletes`
-- ----------------------------
DROP TABLE IF EXISTS `fletes`;
CREATE TABLE `fletes` (
  `id_envio` int(3) NOT NULL AUTO_INCREMENT,
  `fletera` varchar(30) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id_envio`),
  KEY `id_envio` (`id_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fletes
-- ----------------------------
INSERT INTO `fletes` VALUES ('1', 'Aeroflash', 'img_aeroflash', 'http://www.aeroflash.com.mx/');
INSERT INTO `fletes` VALUES ('2', 'DHL', 'img_dhl', 'http://www.dhl.com.mx/es.html');
INSERT INTO `fletes` VALUES ('3', 'Estafeta', 'img_estafeta', 'http://www.estafeta.com/');
INSERT INTO `fletes` VALUES ('4', 'Fedex', 'fedex_img', 'http://www.fedex.com/mx/');
INSERT INTO `fletes` VALUES ('5', 'Multipack', 'multipack_img', 'http://www.multipack.com.mx/');
INSERT INTO `fletes` VALUES ('6', 'Redpack', 'img_redpack', 'http://www.redpack.com.mx/RpkWeb/Index');
INSERT INTO `fletes` VALUES ('7', 'UPS', 'img_ups', 'http://www.ups.com/content/mx/es/index.jsx');
INSERT INTO `fletes` VALUES ('8', 'Pakmail', 'img_packmail', 'http://www.pakmail.com.mx/');

-- ----------------------------
-- Table structure for `fletes_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `fletes_empresas`;
CREATE TABLE `fletes_empresas` (
  `idf` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_login',
  `id_envio` int(3) NOT NULL COMMENT 'clv FK a tb fletes',
  PRIMARY KEY (`idf`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`,`id_envio`),
  KEY `id_envio` (`id_envio`),
  CONSTRAINT `fletes_empresas_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fletes_empresas_ibfk_2` FOREIGN KEY (`id_envio`) REFERENCES `fletes` (`id_envio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fletes_empresas
-- ----------------------------

-- ----------------------------
-- Table structure for `fotos_productos`
-- ----------------------------
DROP TABLE IF EXISTS `fotos_productos`;
CREATE TABLE `fotos_productos` (
  `folio_producto` int(8) NOT NULL COMMENT 'clv FK a tb productos',
  `url_foto1` varchar(100) NOT NULL,
  `url_foto2` varchar(100) NOT NULL,
  `url_foto3` varchar(100) NOT NULL,
  `url_foto4` varchar(100) NOT NULL,
  `url_foto5` varchar(100) NOT NULL,
  `url_foto6` varchar(100) NOT NULL,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `id_tipousuario` int(1) NOT NULL COMMENT 'Clave FK a tb tipo_usuarios',
  `id_fp` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_fp`),
  UNIQUE KEY `id_fp` (`id_fp`),
  KEY `id_tipousuario` (`id_tipousuario`),
  KEY `folio_producto` (`folio_producto`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  KEY `folio_producto_2` (`folio_producto`),
  KEY `folio_producto_3` (`folio_producto`),
  KEY `idCli_Proveedor_2` (`idCli_Proveedor`),
  KEY `idCli_Proveedor_3` (`idCli_Proveedor`),
  KEY `idCli_Proveedor_4` (`idCli_Proveedor`),
  KEY `folio_producto_4` (`folio_producto`),
  KEY `folio_producto_5` (`folio_producto`),
  KEY `folio_producto_6` (`folio_producto`),
  CONSTRAINT `fotos_productos_ibfk_1` FOREIGN KEY (`folio_producto`) REFERENCES `productos` (`folio_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fotos_productos_ibfk_2` FOREIGN KEY (`id_tipousuario`) REFERENCES `tipo_usuarios` (`id_tipousuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fotos_productos_ibfk_3` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fotos_productos
-- ----------------------------

-- ----------------------------
-- Table structure for `logo_empresa`
-- ----------------------------
DROP TABLE IF EXISTS `logo_empresa`;
CREATE TABLE `logo_empresa` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_logo`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  CONSTRAINT `logo_empresa_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logo_empresa
-- ----------------------------

-- ----------------------------
-- Table structure for `moneda`
-- ----------------------------
DROP TABLE IF EXISTS `moneda`;
CREATE TABLE `moneda` (
  `id_moneda` int(11) NOT NULL,
  `tipo_moneda` varchar(3) NOT NULL,
  UNIQUE KEY `id_moneda_2` (`id_moneda`),
  KEY `id_moneda` (`id_moneda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneda
-- ----------------------------
INSERT INTO `moneda` VALUES ('1', '$');
INSERT INTO `moneda` VALUES ('2', 'USD');
INSERT INTO `moneda` VALUES ('3', '€');

-- ----------------------------
-- Table structure for `municipios`
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_municipio` varchar(100) NOT NULL,
  `id_estado` int(11) NOT NULL COMMENT 'clave foranea id_estado',
  PRIMARY KEY (`id_municipio`),
  UNIQUE KEY `id_municipio` (`id_municipio`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2459 DEFAULT CHARSET=utf8 COMMENT='foreign key tabla estados';

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
INSERT INTO `municipios` VALUES ('2456', 'Azoyú', '13');
INSERT INTO `municipios` VALUES ('2457', 'Xalpatláhuac', '13');
INSERT INTO `municipios` VALUES ('2458', 'Cotija', '16');

-- ----------------------------
-- Table structure for `numcta_empresa`
-- ----------------------------
DROP TABLE IF EXISTS `numcta_empresa`;
CREATE TABLE `numcta_empresa` (
  `idnc` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_login',
  `id_banco` int(3) NOT NULL COMMENT 'clv FK a tb bancos',
  `num_cta` int(15) NOT NULL,
  `clabe_transferencia` int(18) NOT NULL,
  `titular_cuenta` varchar(100) NOT NULL,
  `num_sucursal` int(15) NOT NULL,
  PRIMARY KEY (`idnc`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`,`id_banco`),
  KEY `id_banco` (`id_banco`),
  CONSTRAINT `numcta_empresa_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `numcta_empresa_ibfk_2` FOREIGN KEY (`id_banco`) REFERENCES `bancos` (`id_banco`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of numcta_empresa
-- ----------------------------

-- ----------------------------
-- Table structure for `planes_tienda`
-- ----------------------------
DROP TABLE IF EXISTS `planes_tienda`;
CREATE TABLE `planes_tienda` (
  `idp` int(1) NOT NULL,
  `id_plan` varchar(25) NOT NULL,
  `meses` varchar(15) NOT NULL,
  `dias` int(10) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `admin` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `limite_anuncios` int(100) NOT NULL,
  `url_img` varchar(100) NOT NULL,
  `idtipo_tienda` varchar(5) NOT NULL COMMENT 'clv FK a tiendas',
  PRIMARY KEY (`id_plan`),
  KEY `id_plan` (`id_plan`),
  KEY `idtipo_tienda` (`idtipo_tienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planes_tienda
-- ----------------------------
INSERT INTO `planes_tienda` VALUES ('2', '01-12M-NG', '12', '365', '3700.00', '500.00', '3700.00', '20', '../Imagenes_e_perfect/img_shop/botonazul.png', '01-NG');
INSERT INTO `planes_tienda` VALUES ('1', '01-6M-NG', '6', '180', '2500.00', '500.00', '2500.00', '20', '../Imagenes_e_perfect/img_shop/botonazul.png', '01-NG');
INSERT INTO `planes_tienda` VALUES ('4', '02-12M-MC', '12', '365', '5900.00', '0.00', '5900.00', '50', '../Imagenes_e_perfect/img_shop/botonMorado.png', '02-MC');
INSERT INTO `planes_tienda` VALUES ('3', '02-6M-MC', '6', '180', '4000.00', '0.00', '4000.00', '50', '../Imagenes_e_perfect/img_shop/botonMorado.png', '02-MC');
INSERT INTO `planes_tienda` VALUES ('6', '03-12M-PYM', '12', '365', '6900.00', '0.00', '6900.00', '100', '../Imagenes_e_perfect/img_shop/botonVerde.png', '03-PY');
INSERT INTO `planes_tienda` VALUES ('5', '03-6M-PYM', '6', '180', '5000.00', '0.00', '5000.00', '100', '../Imagenes_e_perfect/img_shop/botonVerde.png', '03-PY');
INSERT INTO `planes_tienda` VALUES ('8', '04-12M-PLS', '12', '365', '7900.00', '0.00', '7900.00', '300', '../Imagenes_e_perfect/img_shop/botonAmarillo.png', '04-PL');
INSERT INTO `planes_tienda` VALUES ('7', '04-6M-PLS', '6', '180', '6500.00', '0.00', '6500.00', '300', '../Imagenes_e_perfect/img_shop/botonAmarillo.png', '04-PL');
INSERT INTO `planes_tienda` VALUES ('10', '05-12M-MSTR', '12', '365', '12900.00', '0.00', '12900.00', '5000', '../Imagenes_e_perfect/img_shop/botonNaranja.png', '05-MS');
INSERT INTO `planes_tienda` VALUES ('9', '05-6M-MSTR', '6', '180', '8000.00', '0.00', '8000.00', '5000', '../Imagenes_e_perfect/img_shop/botonNaranja.png', '05-MS');

-- ----------------------------
-- Table structure for `portada_empresa`
-- ----------------------------
DROP TABLE IF EXISTS `portada_empresa`;
CREATE TABLE `portada_empresa` (
  `id_portada` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `portada1` varchar(150) NOT NULL,
  PRIMARY KEY (`id_portada`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  CONSTRAINT `portada_empresa_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of portada_empresa
-- ----------------------------

-- ----------------------------
-- Table structure for `productos`
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `folio_producto` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_login',
  `nombre_producto` varchar(100) NOT NULL,
  `categoria` int(3) NOT NULL COMMENT 'clave FK a tb categorias',
  `subcategoria` int(10) NOT NULL,
  `codigo_prod` varchar(20) NOT NULL,
  `marca` varchar(40) DEFAULT NULL,
  `stock` int(6) NOT NULL,
  `autorizado` int(1) NOT NULL DEFAULT '0',
  `tipo_moneda` int(1) NOT NULL COMMENT 'clave FK a tb moneda',
  `precio_unit` double(11,2) NOT NULL,
  `precio_mayoreo` double(11,2) NOT NULL,
  `unidades_masde` int(4) NOT NULL,
  `unidades` varchar(30) NOT NULL,
  `visitas` int(11) NOT NULL DEFAULT '0',
  `fecha_publicacion` date NOT NULL,
  `estado` int(3) NOT NULL COMMENT 'clv FK a tb estados',
  `municipio` int(11) NOT NULL,
  `id_tipousuario` int(1) NOT NULL COMMENT 'clv FK a tb tipo_usuarios',
  PRIMARY KEY (`folio_producto`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  KEY `id_tipousuario` (`id_tipousuario`),
  KEY `idCli_Proveedor_2` (`idCli_Proveedor`),
  KEY `tipo_moneda` (`tipo_moneda`),
  KEY `id_tipousuario_2` (`id_tipousuario`),
  KEY `id_tipousuario_3` (`id_tipousuario`),
  KEY `categoria` (`categoria`),
  KEY `subcategoria` (`subcategoria`),
  KEY `estado` (`estado`),
  KEY `municipio` (`municipio`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipousuario`) REFERENCES `tipo_usuarios` (`id_tipousuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`tipo_moneda`) REFERENCES `moneda` (`id_moneda`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_6` FOREIGN KEY (`estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_7` FOREIGN KEY (`municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_8` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productos
-- ----------------------------

-- ----------------------------
-- Table structure for `publicidad`
-- ----------------------------
DROP TABLE IF EXISTS `publicidad`;
CREATE TABLE `publicidad` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `id_publicidad` int(1) NOT NULL,
  `nombre_publicidad` varchar(20) NOT NULL,
  PRIMARY KEY (`id_publicidad`),
  UNIQUE KEY `idp` (`idp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publicidad
-- ----------------------------
INSERT INTO `publicidad` VALUES ('1', '1', 'Premium');
INSERT INTO `publicidad` VALUES ('2', '2', 'Ofertas del Día');
INSERT INTO `publicidad` VALUES ('3', '3', 'Sugerencias');
INSERT INTO `publicidad` VALUES ('4', '4', 'Banner Superior');
INSERT INTO `publicidad` VALUES ('5', '5', 'Banner Lateral');

-- ----------------------------
-- Table structure for `subcategorias`
-- ----------------------------
DROP TABLE IF EXISTS `subcategorias`;
CREATE TABLE `subcategorias` (
  `id_subcategoria` int(10) NOT NULL AUTO_INCREMENT,
  `subcategoria` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(3) NOT NULL COMMENT 'id tabla categorias',
  PRIMARY KEY (`id_subcategoria`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `subcategorias_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

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
-- Table structure for `tiendas`
-- ----------------------------
DROP TABLE IF EXISTS `tiendas`;
CREATE TABLE `tiendas` (
  `idt` int(2) NOT NULL,
  `idtipo_tienda` varchar(5) NOT NULL,
  `tienda` varchar(15) NOT NULL,
  `portada` int(11) NOT NULL,
  `video` int(11) NOT NULL,
  `url_img_enc` varchar(100) NOT NULL,
  `url_img_barra` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipo_tienda`),
  KEY `idtipo_tienda` (`idtipo_tienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiendas
-- ----------------------------
INSERT INTO `tiendas` VALUES ('1', '01-NG', 'Negocio', '0', '0', '../Imagenes_e_perfect/img_shop/negocio_.png', '../Imagenes_e_perfect/img_shop/horizAzul.png');
INSERT INTO `tiendas` VALUES ('2', '02-MC', 'Micro', '1', '0', '../Imagenes_e_perfect/img_shop/micro_.png', '../Imagenes_e_perfect/img_shop/horizMorado.png');
INSERT INTO `tiendas` VALUES ('3', '03-PY', 'Pyme', '1', '1', '../Imagenes_e_perfect/img_shop/pyme_.png', '../Imagenes_e_perfect/img_shop/horizVerde.png');
INSERT INTO `tiendas` VALUES ('4', '04-PL', 'Plus', '1', '1', '../Imagenes_e_perfect/img_shop/plus_.png', '../Imagenes_e_perfect/img_shop/horizAmarillo.png');
INSERT INTO `tiendas` VALUES ('5', '05-MS', 'Master', '1', '1', '../Imagenes_e_perfect/img_shop/master_.png', '../Imagenes_e_perfect/img_shop/horizNaranja.png');

-- ----------------------------
-- Table structure for `tipo_usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_usuarios`;
CREATE TABLE `tipo_usuarios` (
  `id_tusu` int(4) NOT NULL AUTO_INCREMENT,
  `id_tipousuario` int(1) NOT NULL,
  `name_usu` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipousuario`),
  UNIQUE KEY `id_tusu` (`id_tusu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_usuarios
-- ----------------------------
INSERT INTO `tipo_usuarios` VALUES ('3', '0', 'Visitante');
INSERT INTO `tipo_usuarios` VALUES ('1', '1', 'Empresa');
INSERT INTO `tipo_usuarios` VALUES ('2', '2', 'Particular');
INSERT INTO `tipo_usuarios` VALUES ('4', '3', 'Super Usuario');
INSERT INTO `tipo_usuarios` VALUES ('5', '4', 'Administrador');

-- ----------------------------
-- Table structure for `usuario_login`
-- ----------------------------
DROP TABLE IF EXISTS `usuario_login`;
CREATE TABLE `usuario_login` (
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv Principal otras tb dependen de esta',
  `correo` varchar(80) NOT NULL,
  `nickname` varchar(15) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `id_tipousuario` int(1) NOT NULL COMMENT 'clave FK a TB tipo_usuarios',
  PRIMARY KEY (`idCli_Proveedor`),
  KEY `id_tipousuario` (`id_tipousuario`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  KEY `idCli_Proveedor_2` (`idCli_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario_login
-- ----------------------------
INSERT INTO `usuario_login` VALUES ('1', '1', '11', '111', '1');

-- ----------------------------
-- Table structure for `usuarios_clip`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios_clip`;
CREATE TABLE `usuarios_clip` (
  `idu` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuario_login',
  `nombre` int(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `no_ext` int(11) NOT NULL,
  `no_int` int(11) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL COMMENT 'clv FK a tb estados',
  `municipio` int(11) NOT NULL,
  `codigo_postal` int(5) NOT NULL,
  `movil` int(14) NOT NULL,
  `telefono1` int(13) NOT NULL,
  `telefono2` int(13) NOT NULL,
  `fecha_registro` date NOT NULL,
  `acepta_termcond` int(1) NOT NULL,
  `id_tipousuario` int(11) NOT NULL COMMENT 'clave FK a tb tipo_usuario',
  PRIMARY KEY (`idu`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`,`estado`,`id_tipousuario`),
  CONSTRAINT `usuarios_clip_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios_clip
-- ----------------------------
INSERT INTO `usuarios_clip` VALUES ('1', '1', '1', '1', '1', '1', '1', '', '13', '12', '12', '12', '12', '12', '2015-05-07', '0', '1');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `idCli_Proveedor` int(11) NOT NULL COMMENT 'clv FK a tb usuarios_clip',
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`id_video`),
  KEY `idCli_Proveedor` (`idCli_Proveedor`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idCli_Proveedor`) REFERENCES `usuario_login` (`idCli_Proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
