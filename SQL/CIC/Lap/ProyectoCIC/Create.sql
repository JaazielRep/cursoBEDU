create database ProyectoCIC;
Use ProyectoCIC;

create table Albergue(
	Codigo varchar(8) not null,
	Direccion varchar(20) not null,
	Encargado varchar(20) not null,
	Capacidad numeric (11) not null

	constraint PK_ALB_COD primary key (codigo)
);

create table Mascotas(
	Codigo int identity(2, 2) not null,
	Nombre_t varchar(10),
	Raza varchar(15),
	Observacion varchar(20),
	Procedencia varchar (10),
	Edad_ap numeric (2)

	constraint PK_MAS_COD primary key (codigo)
);

create table Personal(
	ID int identity(0012, 1) not null,
	Nombre varchar (20) not null,
	Direccion varchar (20) not null,
	Telefono numeric(8) not null,
	Edad numeric (2) not null,
	Contrato date not null,
	Albergue varchar (8) not null

	constraint PK_PER_CURP primary key (id)
);

create table Proovedor(
	RFC varchar (13) not null,
	nombre varchar (20) not null,
	empresa varchar (20) not null,
	telefono numeric (8) not null

	constraint PK_PRO_RFC primary key (rfc)
);

create table Recibos(
	ID_R int identity (012567, 3),
	Albergue varchar (8) not null,
	Proovedor varchar (13) not null,
	Producto varchar (20) not null,
	Cantidad numeric (2)

	constraint PK_REC_ID primary key(ID_R)
);
