--Control de flujo
use BaseAero210315
--**********CASE**************
--Evita el anidar IFs
select * from tipocliente;
select * from cliente

select clienteid, personaid,
	CASE idTipoCliente
		WHEN 1 THEN 'Nuevo'
		WHEN 2 THEN 'Plata'
		WHEN 3 THEN 'Oro'
		ELSE 'No Hay'
	END CASE_CLASF
, fecharegistro
from Cliente



--*****CASE_BUSQUEDA**********
--Sirve para insertar
UPDATE Empleado
SET HorasVacaciones = (
	CASE	
		WHEN (HorasVacaciones - 10 < 0) THEN VacationHours + 40
		ELSE (HorasVacaciones + 20.00)
	END)
	


--*******CURSOR******
--Recorre campo por campo
/*Recorre toda la tabla y regresa la fecha de fabricacion
y matricula por cada egistro*/
Select * from avion

DECLARE @vcMatricula VARCHAR (10),
		@dtFechaFab DATETIME

--Declaracion
DECLARE Cursor_Avion CURSOR
FOR
--Seleccion se puede usar un where para que solo seleccione 
	SELECT matricula, fechaFabricacion
	FROM avion -- <--ALT+F1
--Abrir cursor
OPEN Cursor_Avion

--Lectura primer registro
FETCH NEXT FROM cursor_avion 
INTO @vcMatricula, @dtFechaFab

--Iteracion de Todas las entradas
WHILE(@@FETCH_STATUS = 0)
BEGIN
	SELECT 'La matricula ' + @vcMatricula
	+ ' se fabrico ' + CONVERT(VARCHAR,@dtFechaFab, 103)--103 es tipo de formato
	
	--Siguiente registro
	FETCH NEXT FROM cursor_avion
	INTO @vcMatricula, @dtFechaFab
END

CLOSE cursor_avion
--Libera memoria
DEALLOCATE cursor_avion


--*******WHILE*******
select * from vuelo
WHERE matriculaAvion = 234312

--Nose hace recorrido de tabla, sol oevalua condicion
DECLARE @vcMatAv VARCHAR (6),
		@inVueDisp INT,
		@inContVue INT

SET @vcMatAv = 234312
SET @inVueDisp = 5
SET @inContVue = 0

WHILE @inContVue < @inVueDisp
	BEGIN
		INSERT INTO Vuelo
		VALUES (@vcMatAv, 1000, DATEADD(DD,7,GETDATE()))
		
		SET @inContVue += 1
		
		SELECT 'Se inserto el Vuelo' + CONVERT(VARCHAR, @@IDENTITY)
	END
	
--Recorre la tabla, es similar a un cursor
--BREAK y CONTINUE

select * from avion
order by fechaFabricacion


DECLARE @vcIndice VARCHAR(6)
DECLARE @dtFab DATETIME, @vcMatr varchar(6)--Declarar variables


SELECT @vcIndice = MIN(matricula)--Se obtiene indice mas bajo de matricula
FROM Avion

WHILE @vcIndice IS NOT NULL --Mientras no sea nulo
	BEGIN
	
		SELECT @vcMatr = matricula,--Se Asignan Valores u obtienen valores para evaluar
				@dtFab = fechafabricacion
		FROM Avion
		WHERE matricula = @vcIndice 
		
			IF YEAR(@dtFab) = 2010 --Si se fabrico en 2010
			BEGIN
				SELECT @vcIndice = MIN(matricula)--Asigna a indice el valor minimo del campo matricula
				FROM Avion
				Where matricula > @vcIndice --Muestra el registro que sea mayor al valor minimo de indice
				CONTINUE
			END
	
	IF YEAR(@dtFab) = 2014
	BEGIN
		BREAK
	END
		
		SELECT 'La matricula ' + CONVERT(VARCHAR, @vcMatr)
		+ ' se fabrico ' + CONVERT(VARCHAR,@dtFab, 103)
		
		SELECT @vcIndice = MIN(matricula)
		FROM Avion
		Where matricula > @vcIndice
	END