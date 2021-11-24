Use ProyectoCIC;

insert into Albergue values
	('Na530Mor', 'Avenida Morelos #19', 'Daniel Naranjo', 20),
	('Lo532Bou', 'Boulevares #32', 'Eduardo Gonzalez', 18),
	('Pa533Tze', 'Tzenzontle #20', 'Rafael Carmona', 10),
	('Bo534Alt','Altamira #2','Rogelio Acor', 13),
	('Sa535StM', 'Santamaria #6', 'Areli Meza', 17),
	('Re536Cal', 'Calzada Remedios #13', 'Juan Monte', 30);

	
Insert into Mascotas values
	('Pancho', 'Afgano', 'Garrapatas', 'Calle', 3), ('Luli', 'Pastor A', 'Ok', 'Calle', 11), 
	('Godoy', 'Labrador', 'Sarna', 'Calle', 5), ('Negro', 'Labrador', 'Desnutrido', 'Calle', 10),
	('Chuleton', 'Poodle', 'Ok', 'Calle', 10), ('Chuky', 'Afgano', 'Desnutrido', 'Calle', 8),
	('Firulais', 'x', 'Desnutrido', 'Calle', 10), ('Puchi', 'x', 'Ok', 'Entregado', 4),
	('Dolly', 'Pastor A', 'Pulgas', 'Calle', 3), ('Husky', 'Poodle', 'Ok', 'Calle', 8),
	('Rocky', 'x', 'Ok', 'Ok', 3), ('Pina', 'Poodle', 'Pulgas', 'Retenido', 9),
	('Boni', 'x', 'Ok', 'Entregado', 3), ('Oddie', 'Labrador', 'Ok', 'Calle', 8),
	('Jerry', 'Poodle', 'Ok', 'Entregado', 10), ('Pegi', 'Maltes', 'Ok', 'Calle', 6),
	('Piwi', 'Poodle', 'Pulgas', 'Entregado', 3), ('Tatis', 'Poodle', 'Garrapatas', 'Calle', 11),
	('Camila', 'Pastor A', 'Sarna', 'Calle', 3), ('Canela', 'Poodle', 'Ok', 'Entregado', 5),
	('Beto', 'Labrador', 'Ok', 'Entregado', 5), ('Polly', 'Maltes', 'Pulgas', 'Entregado', 3),
	('Leo', 'Maltes', 'Desnutrido', 'Calle', 10), ('Ricotta', 'Maltes', 'Pulgas', 'Entregado', 3),
	('Kyhara', 'Pastor A', 'Garrapatas', 'Entregado', 3), ('Nina', 'Pastor A', '', 'Calle', 10),
	('Hiler', 'Poodle', 'Pulgas', 'Calle', 10), ('Viky', 'Labrador', 'Pulgas', 'Calle', 3),
	('Dexter', 'Pastor A', 'Ok', 'Calle', 10), ('Leroy', 'Labrador', 'Sarna', 'Calle', 5),
	('Dakota', 'Poodle', 'Ok', 'Calle', 10), ('Titila', 'Poodle', 'Garrapatas', '', 2),
	('Dubby', 'Labrador', 'Pulgas', 'Calle', 3);

Insert into personal values
	('Jose Perez', 'Morelos #3', 89245698, 20, '10-01-2012', 'Pa533Tze'),
	('Pancho Lopez', 'Zapata #9', 53784916, 25, '09-01-2010', 'Na530Mor'),
	('Jose Martinez', 'Uxmal #8', 51786143, 18, '12-12-2012', 'Bo534Alt'),
	('Daniel Naranjo', ' Cerrito #23', 51358413, 27, '01-01-2005', 'Na530Mor'),
	('Eduardo Gonzalez', 'Pirineo #1', 59487487, 18, '01-01-2005', 'Lo532Bou'),
	('Rafael Carmona', 'Del Hueso #345', 51573198, 21, '01-01-2005', 'Pa533Tze'),
	('Rogelio Acor', 'Santa Maria #4', 48648451, 26, '01-01-2005', 'Bo534Alt'),
	('Areli Meza', 'Universidad #65', 15535148, 29, '01-01-2005', 'Sa535StM'),
	('Juan Monte', 'Lopez #78', 51845378, 23, '01-01-2005', 'Re536Cal'),
	('Angel Noria', 'Huiztle #6', 15845135, 20, '01-05-2008', 'Lo532Bou'),
	('Enrique Baez', 'Tequex #49', 53154864, 21, '01-01-2015', 'Sa535StM');

	
insert into proovedor values 
	('MORA954895eet', 'Angel M', 'CroquetasH', 25684794),
	('FOGI925948qwr', 'Ignacio F', 'Suplementos+', 79846154),
	('ACHE921848yui', 'Enrique A', 'MedicamentosE', 51489526),
	('GONA929184sdf', 'Alberto G', 'ConsumiblesW', 35151245),
	('LOAR499798cvb', 'Rosa L', 'Croquetas+', 78455926),
	('MONE928478ghj', 'Erika M', 'Croquetas*', 15485926),
	('SIRA925984yui', 'Aldo S', 'CroquetasL', 35154879),
	('SONA959487ase', 'America S', 'MedicamentosC', 91485931),
	('RATE939589rgv', 'Enrique R', 'MedicamentosQ', 94871625),
	('TONO947984qwe', 'Oscar T', 'ConsumiblesT', 15489761),
	('REFO903254zsf', 'Omar R', 'CroquetasP', 15487861)
	;

Insert into recibos values
	('Na530Mor', 'MORA954895eet', 'Costal', 10), ('Lo532Bou', 'SONA959487ase', 'Antibiotico', 20), ('Sa535StM', 'SONA959487ase', 'Vacuna', 10),
	('Pa533Tze', 'LOAR499798cvb', 'Croqueta', 6), ('Na530Mor', 'GONA929184sdf', 'Carnaza', 30), ('Re536Cal', 'MORA954895eet', 'Costal', 4),
	('Lo532Bou', 'RATE939589rgv', 'Medicina',30 ), ('Bo534Alt', 'RATE939589rgv', 'Vacunas', 15), ('Na530Mor', 'RATE939589rgv', 'Antibiotico', 19),
	('Bo534Alt', 'LOAR499798cvb', 'Croqueta', 8), ('Na530Mor', 'MORA954895eet', 'Costal', 5), ('Pa533Tze', 'SONA959487ase', 'Vacuna', 12)

	;