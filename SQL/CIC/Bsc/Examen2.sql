create database examen2;
use examen2;

create table empleado (
	NSS numeric(11) not null, 
	Nombre varchar (20) not null, 
	Apellido varchar (15) not null, 
	Fecha_Nac date not null, 
	Direccion varchar (30) not null, 
	Sexo char not null,
	Salario money not null,
	idDepto varchar(5),
	Rol varchar (10) not null,
	NSS_Supervisor numeric(11),
	Contraseña varchar (8)
	
	constraint PK_EMP_NSS primary key (NSS),
	constraint FK_EMP_NSS_NSS Foreign key (NSS_Supervisor)
	References empleado(NSS)

);

create table Departamento (
	idDepto varchar (5) not null,
	NombreDepto varchar (10) not null,
	NSS_Jefe numeric(11) not null,
	Fecha_Inicio date,
	Presupuesto money not null,
	Ubicacion varchar (30)
	
	constraint PK_DEP_idD primary key (idDepto),
	constraint CK_DEP_PRE check (Presupuesto < 10000)
);

insert into empleado values 
	(120, 'Jose', 'Perez', '10-01-2012', 'Morelos #3', 'H', 5000, 'AA111', 'Nose', 120, 'aaaa'),
	(121, 'Pancho', 'Lopez', '09-01-2010', 'Zapata #9', 'H', 2500, 'BB222', 'Nose', 120, 'bbbb'),
	(122, 'Jose', 'Martinez', '12-12-2012', 'Uxmal #8', 'H', 1800, 'CC333', 'Nose', 121, 'cccc');
	
insert into Departamento values 
	('AA111', 'Ni idea', 120, '10-01-2012', 7000, 'Morelos #3'),
	('BB222', 'Ni idea', 121, '09-01-2010', 9000, 'zapata #9'),
	('CC333', 'Ni idea', 122, '12-12-2012', 9999, 'Uxmal #3')
	;
	
alter table departamento add constraint FK_DEP_EMP_NSS foreign key (NSS_Jefe) references empleado(NSS)
alter table empleado add constraint FK_EMP_DEP_DEP foreign key (idDepto) references departamento(idDepto)

