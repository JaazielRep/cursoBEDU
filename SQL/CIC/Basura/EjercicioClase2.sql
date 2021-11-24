-- EJERCICIOS CLASE 2
USE BaseAero210315

-- 1



DECLARE @vcNombre		varchar(10) = 'Pancho',
		@vcPaterno		varchar(10) = 'Paterno',
		@vcMaterno		varchar(10),
		@inDireccionId	int = 2,
		@vcTelefono		int = 5300530,
		@dtNacimiento	DATE = '1995-11-01',
		@btSexo			BIT	= 1,
		@inV			INT

SELECT @inV = direccionId from direccion where direccionId = @inDireccionId

IF (YEAR(GETDATE()) - YEAR(@dtNacimiento) > 18 AND @vcNombre		IS NOT NULL	
												AND   @vcPaterno		IS NOT NULL
												AND   @inDireccionId	IS NOT NULL
												AND   @vcTelefono		IS NOT NULL
												AND   @dtNacimiento	IS NOT NULL
												AND   @btSexo			IS NOT NULL 
											AND	  @inV IS NOT NULL )
	
	BEGIN											
	INSERT INTO Persona VALUES (@vcNombre, @vcPaterno, @vcMaterno, @inDireccionId, @vcTelefono,
								@dtNacimiento, @btSexo)
	END
ELSE 
BEGIN
 SELECT 'Datos Erroneos'

END

select * from persona

-- -----------------------------------------------------------------------
-- 2



DECLARE @vrNc varchar(50), @vrAc varchar(50)
DECLARE @vrNv varchar (20), @vrAv varchar(20)
DECLARE @inMtr int, @dtFvu date
DECLARE @intDIF int



DECLARE @inIDC int, @inIDV int, @inIDVU int, @dtComp DATE = '2016-03-28', @inAsientos int = 4

SET @vrNc  = 'Edith' SET	@vrAc  = 'Parez'
SET	@vrNv  = 'Javier'; SET	@vrAv  = 'Jimenez'
SET	@inMtr = 234312; SET	@dtFvu = '2014-12-01'


Select @inIDC = IdPersona from persona a 
INNER JOIN Cliente b ON a.IdPersona = b.personaId
where a.nombre = @vrNc AND a.paterno = @vrAc



Select @inIDV = vendedorId from vendedor d 
INNER JOIN persona c ON c.IdPersona = d.personaId
where c.nombre = @vrNv AND c.paterno = @vrAv



select @inIDVU = idVuelo from vuelo where @inMtr = matriculaAvion AND fechaVuelo = @dtFvu 

--Select @intDIF = numAsientos from TipoAvion z


IF(@inIDC IS NOT NULL AND @inIDV IS NOT NULL AND @inIDVU IS NOT NULL)
BEGIN

INSERT INTO Venta Values (@inIDC, @dtComp, @inAsientos,  @inIDVU, @inIDV)

END

ELSE

BEGIN

SELECT 'DATOS ERRONEOS'
END

SElect * from venta
SELECT * from vendedor
select * from Persona
Select * from Empleado
Select * from vuelo
select * from avion
SELECT * from TipoAvion