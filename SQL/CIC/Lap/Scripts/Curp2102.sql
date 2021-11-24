create database bcurp;
use bcurp;

create table persona(
	nombre varchar(20),
	app varchar(20),
	apm varchar(20),
	fnac date
);


insert into persona values
('Evi Jaaziel', 'Moreno', 'Meza', '11-01-1990'),
('Daniel', 'Gonzalez', 'Naranjo', '01-29-1993'),
('Areli', 'Moreno', 'Meza', '10-04-1995')
;

insert into persona values
('Nose', 'Avila', 'Ordaz', '11-01-1990')

insert into persona values
('Rosa Isela', 'Mmrquecho', 'Nuñez', '08-21-1989')

select * from persona;
select nombre from persona;

select patindex('%[a, e, i, o, u]%', nombre) from persona;

select 
SUBSTRING(app, 1, 1)+
Upper(substring(app,patindex('%[a, e, i, o, u]%',SUBSTRING(app, 2, LEN(app)-1)) + 1, 1))+
SUBSTRING(apm, 1, 1)+ 
SUBSTRING(nombre, 1, 1)+
cast(Right(DATEPART(yy,fnac ), 2) as varchar)+
cast(DATEPART(mm,fnac)as varchar)+ 
cast(DATEPART(DD, fnac)as varchar)
from persona;
 
select Upper(substring(app, patindex('%[a, e, i, o, u]%', app), 1)) from persona;

select * from persona;

select SUBSTRING(nombre, 2, LEN(nombre)-1) from persona

select SUBSTRING(app, 2, LEN(app)-1),  
patindex('%[a, e, i, o, u]%',SUBSTRING(app, 2, LEN(app)-1)) from persona

