Use BaseAero210315
GO
-- ***Jobs en sql***


-- ----GOTO
-- Las lineas en un script se ejecutan una tras una
-- GOTO sirve para mandar de una linea hasta donde se indica en GOTO

-- ------FUNCIONES
-- ----Funcion escalar, solo regresa un valor.
-- Se debe poner la funcion con el parametro al momento de mandar a llamar dbo.Funcion(1)
-- la funcion se creara en la base ded atos seleccionada y quedara almacenada ahi

-- --FUNCION ESCALAR

CREATE FUNCTION ObNomCom(
	@inPersonaId int
)
Returns Varchar(100)

As
Begin
--debe coincidir con el valor a retornar
DECLARE @vcNomCom varchar (100) 
--consultas
select @vcNomCom = nombre +' '+ paterno +' '+ materno
from persona 
WHERE idpersona = @inpersonaid

return @vcNomCom

END

--Ejecucion
Select dbo.obnomcom(1)



-- --FUNCION TABLA EN LINEA
-- Regresa una variable tipo tabla siempre se debe usar un 'select *'

--El NULL hace referencia a que puede ir sin paramatros la funcion
CREATE FUNCTION DatosAvion(@vcMatr varchar(6) = Null)
RETURNS TABLE

RETURN
(
SELECt a.*, b.tipoAvion, b.fabricante, b.numAsientos
From avion a
INNER JOIN tipoAvion b
ON a.idtipoavion = b.idtipoavion
--Pide seleccionar todo donde el campo matricula coincida con el parametro
--y en caso de estar vacio el parametro regresa todo los datos DEFAULT
WHERE a.matricula = @vcMatr 
OR @vcMatr IS NULL
)

Select * from dbo.DatosAvion(234312)

Select * 
from dbo.DatosAvion(234312) a
INNER JOIN Aerolinea b
ON a.aerolineaId = b.AerolineaId

select * from dbo.DatosAvion(DEFAULT)

-- --FUNCION TABLA Sentencias multiples

create function diremp(@inidemp INT)
returns @tbDIREC TABLE
(
idPersona INT,
NombreCompleto VARCHAR(100),
DireccionCompleta VARCHAR(100)
)
AS 
BEGIN

	INSERT INTO @tbDIREC
	SELECT a.idPersona,
	b.nombre +' '+ b.paterno,
	calle +' '+ numero
	FROM Empleado a
	INNER JOIN Persona b
	ON a.idPersona = b.IdPersona
	INNER JOIN Direccion  C
	ON b.direccionId = c.direccionId
	WHERE a.idempleado = @inidemp
	
	RETURN
END

Select * from diremp(1)

/*create function diremp2(@inidemp INT)
returns @tbDIREC TABLE
(
idPersona INT,
NombreCompleto VARCHAR(100),
DireccionCompleta VARCHAR(100)
)
AS 
BEGIN

	INSERT INTO @tbDIREC
	SELECT a.idPersona,
	dbo.obnomcom(a.idPersona),
	calle +' '+ numero
	FROM Empleado a
	INNER JOIN Persona b
	ON a.idPersona = b.IdPersona
	INNER JOIN Direccion  C
	ON b.direccionId = c.direccionId
	WHERE a.idempleado = @inidemp
	
	RETURN
END*/

Select * from diremp(2)
Select * from diremp2(2)