create schema empresasql;
use empresasql;

drop table clientes;

create table clientes(
	curp varchar(18) not null,
	nombre varchar(30) not null,
	apellido varchar(50) not null,
	direccion varchar(30) not null,
	fechaN date not null,

	constraint pk_cli_curp primary key (curp)
	);

create table proveedores(
	RFC varchar(13) not null,
	nombre varchar(30) not null,
	direccion varchar(30) not null,

	constraint pk_prov_rfc primary key (RFC)
	);

create table productos(
	codigo int(11) not null,
	nombre varchar(20) not null,
	preciou int(11) not null,
	clavep varchar(13) not null,
	clavec varchar(18) not null,

	constraint pk_prod_cod primary key (codigo),
	constraint fk_prv_prd_rfc foreign key (clavep) references proveedores (rfc),
	constraint fk_cli_prd_curp foreign key (clavec) references clientes (curp)
	);
