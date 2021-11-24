create database ejemplo1402;
use ejemplo1402;

create table alumno(
	idalumno int identity(100, 1),
	nombre varchar(20),
	app varchar(20),
	apm varchar(20),
	edad numeric(2),
	tipo varchar(20),
	constraint pk_alm_idalu primary key (idalumno),
	constraint ck_alm_edad check (edad>14 and edad<60),
	constraint ck_alm_tipo
	check(tipo = 'alumno' or tipo = 'externo' or tipo = 'empleado')

);

select * from alumno;

	/*No permite el insert ya que solo se pueden registrar de tipo alumno, externo o empleado*/
	insert into alumno values ('Jaaziel', '---', '---', 24, 'x');
	
	/*No permite el insert ya que la edad no cumple con la condicion de mayor de 14 y mnor de 16*/
	insert into alumno values ('Jaaziel', '---', '---', 10, 'x');
	
	/*Aceptable*/
	insert into alumno values ('Jaaziel', '---', '---', 24, 'Alumno');
	
--Se deshabilita el identity de la tabla alumno
set identity_insert alumno on;
--Se especifica los campos y valores para poder insertar un id manualmente
insert into alumno values ('Jaaziel', '---', '---', 24, 'Alumno');

--Se Activa el identity y continua en el numero que se quedo 100+ 
set identity_insert alumno off;

