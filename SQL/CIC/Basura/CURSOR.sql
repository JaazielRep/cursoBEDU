USE BaseAero210315

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

-- *******************************************************
-- Solo muestra 4 registros y se usa un contador

DECLARE @vcMatricula2 VARCHAR (10),
		@dtFechaFab2 DATETIME,
		@inContador int = 0
		
DECLARE Cursor_Avion CURSOR
FOR

SELECT matricula, fechaFabricacion
	FROM avion
	
OPEN Cursor_Avion

FETCH NEXT FROM cursor_avion 
INTO @vcMatricula2, @dtFechaFab2

WHILE(@@FETCH_STATUS = 0 AND @inContador < 4)
BEGIN
	SELECT 'La matricula ' + @vcMatricula2
	+ ' se fabrico ' + CONVERT(VARCHAR,@dtFechaFab2, 103)
	
	SET @inContador +=1
	SELECT @inContador
	
FETCH NEXT FROM cursor_avion
	INTO @vcMatricula2, @dtFechaFab2
END

CLOSE cursor_avion
DEALLOCATE cursor_avion

-- *******************************************************
-- El indice va a leer el registro de menor resultado

DECLARE @vcIndice VARCHAR(6)

SELECT @vcIndice = MIN(matricula)--, fechafabricacion 
FROM Avion
--ORDER BY matricula

WHILE @vcIndice IS NOT NULL
	BEGIN
		SELECT 'La matricula ' + CONVERT(VARCHAR, matricula)
		+ ' se fabrico ' + CONVERT(VARCHAR,fechaFabricacion, 103)
		FROM Avion
		WHERE matricula = @vcIndice
		
		--Actualiza el Indice
		SELECT @vcIndice = MIN(matricula)
		FROM Avion
		Where matricula > @vcIndice
	END