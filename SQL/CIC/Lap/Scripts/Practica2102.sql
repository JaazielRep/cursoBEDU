create database practica2102;

use practica2102;

create table empleado(
	nss numeric(2) not null,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	fecha_nac date, 
	direccion varchar(30) not null,
	sexo char, salario money not null,
	iddepto numeric(3) not null,
	rol varchar(10), nss_supervisor numeric not null,
	contrasena varchar(8)

);

create table departamento(
	iddepto numeric(3) not null,
	nombredepto varchar(10) not null,
	nss numeric(2) not null,
	jefe varchar(20) not null,
	fecha_inicio date, presupuesto money,
	ubicacion varchar(30)

);

