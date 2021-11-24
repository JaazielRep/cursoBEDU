drop schema base_e_perfect;

create schema Base_e_Perfect;

use Base_e_perfect;

ALTER DATABASE Base_e_perfect 
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

#Las variables declaradas sin NOT NULL es por que llevaran llaves foraneas

#i
create table tipousuario_ep(
    cltius int not null auto_increment primary key,
    tipos_us varchar (25) not null
);
#---------------------------------------

create table usuarios_ep(
    userpkey int auto_increment not null primary key,
    nmuser varchar(25) not null,
    apeusser varchar (25) not null,
    maillep varchar (25) not null,
    ussuarioepp varchar (16) not null,
    passwepp varchar (70) not null,
    movilph varchar(20) not null,
    telfijo varchar(20) not null,
    terminos int(1) not null,
    fech_registro date not null,
    tipo_us int
);
#
alter table usuarios_ep
add constraint fk_usu_tip
foreign key (tipo_us)
references tipousuario_ep(cltius)
on delete set null;
#--------------------------------------

create table direccion_ep(
    dirid int not null auto_increment primary key,
    dtcalle varchar (60) not null,
    fkpais int,
    fkestado int,
    fkmunicipio int,
    cpostal int not null,
    razon_social varchar(60) not null,#--
    RFC varchar (13) not null,#-- a direccion
    ninte varchar(10),
    nexte varchar(10),
    colonia varchar(60),
    usuario_dir int not null
);

#--FK de Direccion a Usuarios
alter table direccion_ep
add constraint fk_dir_usu
foreign key (usuario_dir)
references usuarios_ep(userpkey)
on delete cascade
on update cascade;

#---------------------------------------

create table pais_ep(
    paisid int not null auto_increment primary key,
    nombrecnt varchar(25) not null,
  `img_pais` varchar(100)
);


#--Direccion a pais
alter table direccion_ep
add constraint fk_dir_pai
foreign key (fkpais)
references pais_ep(paisid)
on delete set null;

#---------------------------------------

#i
create table estado_ep(
    estadoid int primary key not null auto_increment,
    nombreest varchar(25) not null,
    paisfk int not null,
  `img_edo` varchar(200)
);
#-- Direccion a Estado
alter table direccion_ep
add constraint fk_dir_est
foreign key (fkestado)
references estado_ep(estadoid)
on delete set null;



#--FK de Estados a Pais
alter table estado_ep
add constraint fk_est_pai
foreign key (paisfk)
references pais_ep(paisid)
on delete cascade
on update cascade;
#---------------------------------------

create table municipio_ep(
    municipiocl int not null primary key auto_increment,
    nombremun varchar(25) not null,
    estadofk int not null
);


#--Direccion a Municipio
alter table direccion_ep
add constraint fk_dir_mun
foreign key (fkmunicipio)
references municipio_ep(municipiocl)
on delete set null;

#--FK de Municipios a Estados
alter table municipio_ep
add constraint fk_mun_est
foreign key (estadofk)
references estado_ep(estadoid)
on delete cascade
on update cascade;
#---------------------------------------


#--****************--*************--
create table empresa_ep(
    empresapk int not null auto_increment primary key,
    marca_comercial varchar(35) not null,
    linkemp varchar (100) not null,
    limite_anuncios int not null,
    numero_anuncios int not null,
    tipo_tienda varchar(5),
    visitas int not null,
    status_e varchar(30),
    autorizado bit not null,
    acerca_de varchar(1000) not null,
    logo_empresa varchar(100) not null,
    fechainicio date,
    fechafinal date,
    usuario_emp int not null
);

#--FK de Empresa a Usuario
alter table empresa_ep
add constraint fk_emp_usu
foreign key (usuario_emp)
references usuarios_ep(userpkey)
on delete cascade
on update cascade;
#--------------------------------------- -------------- ------------- ---------
create table portada_ep(
	id_portada int primary key auto_increment not null,
    empresa_portada int,
    portada_im varchar(100)
);

#--Portada a Empresa
alter table portada_ep
add constraint fk_por_emp
foreign key (empresa_portada)
references empresa_ep(empresapk)
on delete cascade;
#-----------------------------------------

#i
create table bancos_ep(
	id_banco int primary key auto_increment not null,
    banco varchar(30) not null,
    img_banco varchar(100) default 0,
    link varchar(100) not null
);
#------------------------------------------

#
create table cuentaemp_ep(
	cuentapk int primary key auto_increment not null,
    fkempresa int,
    fkbanco int,
    num_cuenta int not null,
    clabe int not null,
    titular varchar(20),
    sucursal varchar(50)
);
#-- Cta_Empresa a Empresa y Bancos
alter table cuentaemp_ep
add constraint fk_CTA_Emp
foreign key (fkempresa)
references empresa_ep(empresapk)
on delete cascade;

alter table cuentaemp_ep
add constraint fk_CTA_Ban
foreign key (fkbanco)
references bancos_ep(id_banco)
on delete set null
on update cascade;
#-------------------------------------------

#i
create table fletes_ep(
	id_flete int not null primary key auto_increment,
    nombre_flete varchar(40) not null,
    img_flete varchar(100) default 0,
    link varchar(100) not null
);

create table fletemp_ep(
	id_fletes_emp int not null primary key auto_increment,
    empresa_flete int,
    id_flete int
);
#-- Emp_Fletes a Empresa y Fletes
alter table fletemp_ep
add constraint fk_fle_emp
foreign key (empresa_flete)
references empresa_ep(empresapk)
on delete cascade;

alter table fletemp_ep
add constraint fk_fle_fle
foreign key (id_flete)
references fletes_ep(id_flete)
on delete set null
on update cascade;

#-------------------------------------------------------------------------------
#i
Create table tiendas_ep(
	id_tipo_tienda varchar(5) primary key not null,
	tienda varchar (20) not null,
	portada int not null,
	video int not null,
	url_img_enc varchar (100) default 0,
	url_img_barra varchar (100) default 0
);


#--Empresa a Tipo tienda
alter table empresa_ep
add constraint fk_emp_tip
foreign key (tipo_tienda)
references tiendas_ep(id_tipo_tienda)
on delete set null;
#-------------------   --------------------       -------------------------------

#i
create table ep_planes_tienda(
	id_plan_tienda varchar(25) not null primary key,
	meses int not null,
	dias int not null,
	costo decimal(10, 2),
	admin decimal(10, 2),
	limite_anuncios int not null,
	url_img varchar (100) default 0,
	tipo_tienda varchar (5)
);

#-- Planes Tienda a Tiendas
alter table ep_planes_tienda
add constraint fk_tip_tie
foreign key (tipo_tienda)
references tiendas_ep(id_tipo_tienda)
on delete cascade
on update cascade;

#----------- --------------- -------------------- ----------------- -----------------

Create table ep_detalle_compraTienda(
	id_detalleCT int not null auto_increment primary key,
    meses int not null,
    dias int not null,
    subtotal double(11, 2) not null,
    iva double(11, 2) not null,
    total double(11, 2) not null,
    fecha_activacion date not null,
    fecha_vencimiento date not null,
    Nombre varchar (50) not null,
    Empresa varchar(100) not null,
    tipo_tienda varchar(5),
    plan_tienda varchar(25)
);
#---------------------------------------------
create table videos_ep(
	videopk int not null primary key auto_increment,
    empresa_video int,
    url varchar(300)
);
#-- Videos a Empresa
alter table videos_ep
add constraint fk_vid_emp
foreign key (empresa_video)
references empresa_ep(empresapk)
on delete cascade
on update cascade;
#------------------------------------------------- ---------------------------------------------------

create table banner_ep(
	id_banner int not null primary key auto_increment,
    fkempresa int not null,
    fkpublicidad varchar(4),
    imagen_banner varchar(200) default 0,
    url_empresa varchar(200),
    fecha_cad date
);


#-- Banner a Empresa
alter table banner_ep
add constraint fk_ban_emp
foreign key (fkempresa)
references empresa_ep(empresapk)
on delete cascade;







#--****************--*************--

#i
create table tipopub_ep(
	id_tipo_publicidad varchar (3) not null primary key,
    nombre_publicidad varchar(50)
);

#i
create table planespub_ep(
	id_plan_publicidad varchar(4) primary key not null,
    tipo_publicidad varchar (3) not null,
    semanas int not null,
    precio float not null
);
#-- Banner a Publicidad
alter table banner_ep
add constraint fk_ban_pub
foreign key (fkpublicidad)
references planespub_ep(id_plan_publicidad)
on delete cascade;


#--Planes publicidad a Tipo publicidad
alter table planespub_ep
add constraint fk_pla_tip
foreign key (tipo_publicidad)
references tipopub_ep(id_tipo_publicidad)
on delete cascade
on update cascade;

#--------------------------------------------------------------------------

#i
create table categoria_ep(
	id_categoria int not null auto_increment primary key,
    categoria varchar(100) not null,
    url_foto varchar (200) not null
);

#i
create table subcategoria_ep(
	id_sub int not null auto_increment primary key,
    subcategoria varchar(60),
    categoriaid int
);


#-- Subcategoria a Categoria
alter table subcategoria_ep
add constraint fk_sub_cat
foreign key (categoriaid)
references categoria_ep(id_categoria)
on delete cascade;

#--------------------------------------------------------------------------
create table productos_ep(
	productopk int not null primary key auto_increment,
    empresafk int,
	nombre_producto varchar (100) not null,
	categoriafk int,
	subcategoriafk int,
	codigo_prod varchar(30) not null,
	marca varchar (50) not null,
	stock int not null,
	autorizado int not null,
	tipo_moneda int,
	precio_unit decimal(10, 2),
	precio_mayoreo decimal(10, 2),
	unidades_masde int not null,
	unidades int not null,
	visitas int not null,
	fecha_publicacion date not null,
	estadofk int,
	municipiofk int,
    paisfk int
);

#-- Productos a Empresa
alter table productos_ep
add constraint fk_pro_emp
foreign key (empresafk)
references empresa_ep(empresapk)
on delete cascade;

#-- Producto a Categoria
alter table productos_ep
add constraint fk_pro_cat
foreign key (categoriafk)
references categoria_ep(id_categoria)
on delete set null;

#-- Producto a SubCategoria
alter table productos_ep
add constraint fk_pro_sub
foreign key (subcategoriafk)
references subcategoria_ep(id_sub)
on delete set null;

#-- Producto a estado
alter table productos_ep
add constraint fk_pro_est
foreign key (estadofk)
references estado_ep(estadoid)
on delete set null;

#-- Producto a Municipio
alter table productos_ep
add constraint fk_pro_mun
foreign key (municipiofk)
references municipio_ep(municipiocl)
on delete set null;

#-- Producto a Pais
alter table productos_ep
add constraint fk_pro_pai
foreign key (paisfk)
references pais_ep(paisid)
on delete set null;

#----------------------------------------------------------

create table carrusel_ep(
	id_carrusel int not null primary key auto_increment,
    productofk int not null,
    publicidadfk varchar(4) not null,
    fecha_cad date
); 

#-- Carrusel a publicidad
alter table carrusel_ep
add constraint fk_car_pub
foreign key (publicidadfk)
references planespub_ep(id_plan_publicidad)
on delete cascade;
#-- Carrusel a Producto *******
alter table carrusel_ep
add constraint fk_car_pro
foreign key (productofk)
references productos_ep(productopk)
on delete cascade;

#-----------------------------------------------------------

create table faq_ep(
	idfaq int not null auto_increment primary key,
	productofk int,
	autor_preg varchar(30) not null,
	email_preg varchar(30) not null,
	pregunta varchar(500) not null,
	fecha_publicacion date not null,
	respuesta varchar(500) not null,
	autor_respuesta varchar(30) not null,
	fecha_resp date not null,
	autorizado int not null
);

#-- Faq a producto
alter table faq_ep
add constraint fk_faq_pro
foreign key (productofk)
references productos_ep(productopk)
on delete cascade;

#----------------------------------------------------------

create table fotos_productos_ep(
	id_foto_producto int not null primary key auto_increment,
    foto varchar(255) not null,
    productofk int
);

# Fotos a Productos
alter table fotos_productos_ep
add constraint fk_fot_pro
foreign key (productofk)
references productos_ep(productopk)
on delete cascade;

#----------------------------------------------------------

#i
create table moneda_ep(
	id_moneda int not null auto_increment primary key,
    tipo_moneda varchar(3)
);
#-- Productos a Moneda
alter table productos_ep
add constraint fk_pro_mon
foreign key (tipo_moneda)
references moneda_ep(id_moneda)
on delete set null;

#------- Compras -----------
create table comprascar_ep(
	id_tcompra bigint not null auto_increment primary key,
    vendedorpr varchar(50),
    vendedorid int,
    tiendapr varchar(50),
    compradorpr varchar(50),
    compradorid int,
    fechatr date,
    producto varchar(50),
    cantidad int,
    preciou int,
    tmoneda int,
    total int
    
);

#---------------------------------------------______----

