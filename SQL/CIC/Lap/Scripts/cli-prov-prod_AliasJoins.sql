use aliasjoin;

create table clientes(
	CURP varchar(18) not null,
	nombre char(20) not null,
	apellido char(20) not null,
	direccion varchar(30) not null,
	nacimiento date not null,

	constraint pk_cl_crp primary key (CURP)

);

create table productos(
	codigo int(8) not null,
	prodcuto varchar(20) not null,
	precio double not null,
	clave_c varchar(18) not null,
	clave_p varchar (13) not null,

	constraint pk_pro_cod primary key (codigo) 
);

create table proveedores(
	rfc varchar(13) not null,
	nombre char(20) not null,
	direccion varchar(30),

	constraint pk_prov_rfc primary key (rfc)

);