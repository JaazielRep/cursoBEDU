Drop database Rancho;

Create database Rancho;

use rancho;

create table P_Ganado(
	idganado int primary key identity(1, 1),
	NombreAnimal varchar(20) not null
);

create table P_Establos(
	idestablo int primary key identity(1, 1),
	NombreEstablo varchar(20) not null,
	FAnimal int,
	CantidadAnimal int, 
);

alter table p_establos
add constraint fk_est_gan
foreign key (FAnimal)
references P_Ganado(idganado);

--

Insert into p_ganado values('Vaca'), ('Toro'), ('Gallina');

insert into p_establos(NombreEstablo, FAnimal, CantidadAnimal) 
						values('DF', 1, 30), ('EDO', 1, 10), ('Nuggets', 1, 5,),
								('Nuggets', 2, 5), ('DF', 2, 10), ('EDO', 2, 3),
								('EDO', 3, 10), ('Nuggets', 3, 5), ('DF', 3, 40);

--
Select * from p_ganado