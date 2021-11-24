USE BaseAero210315

-- Cuando se convierte un varchar a date debe ir en formato YY-MM-DD
select year(GETDATE()), nacimiento, DATEDIFF(yy, nacimiento, getDate()) from persona
select *, CONVERT(DATE, DATEADD(MM, mesesMantenimiento, UltimoMantenimiento)) from Avion
SElect * from venta
SELECT * from vuelo


SELECT CONVERT(DATE, a.fechaRegistro)
FROM cliente a
INNER JOIN TipoCliente b
INNER JOIN Vuelo c
WHERE a.clienteId = 2 and c.idVuelo = 3

--1
CREATE FUNCTION Edad(@dtFecha date)
returns int
as 
begin

DECLARE @d int
select @d = DATEDIFF(YY, @dtFecha, GETDATE())
return @d
end

CREATE FUNCTION EdadHoy(@dtFecha date)
returns int
as 
begin

DECLARE @inEdad int
SET @inEdad = datediff(mm, @dtfecha, getdate())
SET @inEdad = @inEdad/12 -
--Si aun no es su cumpleaños se resa 1
CASE
When DATEPART(dd, @dtFecha) >
DATEPART(dd, getDATE()) THEN
	Else
	0
	end
end


Select dbo.edad('11-01-1990')

--2
Create FUNCTION mant(@inMatr int)
RETURNS DATE
AS
BEGIN

DECLARE @F DATE
SELECT @F = CONVERT(DATE, ultimomantenimiento)
FROM avion
Where matricula = @inmatr
return @F

END

select mesesmantenimiento, ultimomantenimiento, dbo.mant(234312) from Avion where matricula = 234312


--3
CREATE FUNCTION Vue(@fe date)
RETURNS TABLE

RETURN
(
select matriculaAvion, precioPorAsiento, fechaVuelo
from vuelo
where CONVERT(DATE,fechaVuelo) >= @fe

)

CREATE FUNCTION Vue2(@fe date)
RETURNS TABLE

RETURN
(
select top 1 matriculaAvion, precioPorAsiento, fechaVuelo
from vuelo
where CONVERT(DATE,fechaVuelo) >= @fe

)

SElECT * FROM Vue('2014-09-11')
SElECT * FROM Vue2('2014-09-11')

/*4.crear una función que reciba el id de un cliente y el id de un vuelo y regrese el precio del vuelo 
considerando el descuento por tipo de cliente*/
CREATE FUNCTION ej4(@inIDC int, @inVu int)
RETURNS Money
AS 
BEGIN

DECLARE @pre money

select @pre = c.precioPorAsiento - ((b.descuento * c.precioPorAsiento)/100)
from Cliente a
Inner Join TipoCliente b
ON a.idTipoCliente = b.idTipoCliente
Inner Join Vuelo c
ON @inVu = idVuelo 
where clienteId = @InIDC

RETURN @pre
END

select dbo.ej4(7, 6)

/*
declare @moPreF money, @inDesc int, @moPreO money

select @inDesc = descuento
from cliente a
INNER JOIN tipoCliente b
ON a.idtipocliente = b.idtipocliente
WHERE ClienteId = inIDC

Select @moPreO = precioporasiento
from vuelo
Where idVuelo = @inVu

SET @moPreF = ((100- @inDesc * @moPreO)/100)

*/

/*5.Crear una función que regrese el RFC de todas las personas de la base de datos o se especifique algún 
IdPersona para solo obtener el de una*/

CREATE FUNCTION RFC(@idPer INT = NULL)

RETURNS @tbRFC TABLE(
	idpersona INT,
	RFC varchar(10)
)

AS
BEGIN

INSERT INTO @tbRFC
SELECT idPersona, 
SUBSTRING(paterno, 1, 2)+
ISNULL(SUBSTRING(materno, 1, 1), 'X')+
SUBSTRING(nombre, 1, 1)
FROM Persona
WHERE IdPersona = @idPer OR @idPer IS NULL
RETURN

END

SELECT * from RFC(2)


--6

/*6.crear una función que reciba como parámetros el Id de un cliente, y una fecha inicio y fin. Como salida
debe indicar cuantas veces ha viajado*/

CREATE FUNCTION NVuelos(@inIDC int, @dtIn date, @dtFn date)
RETURNS INT
AS
BEGIN

DECLARE @NuVu INT

 --Realizar operaciones
 SELECT @NuVu = COUNT(*)
 FROM venta a
 INNER JOIN Vuelo b
 ON a.idVuelo = b.idvuelo
 WHERE idCliente = @inIDC
 AND b.fechaVuelo
 BETWEEN @dtIN AND @dtFN
 
RETURN @NuVu

END

SELECT dbo.nVuelos(1, '20140901', '20140930')


/*7.Crear una función que reciba como parámetro un sueldo base y que muestre el nombre completo de los empleados
que tengan un salario mayor o igual al parámetro de entrada de mostrar la cantidad de años que lleva el 
empleado desde su fecha de ingreso.*/

CREATE FUNCTION Antig( @moSuel MONEY )
RETURNS TABLE
AS 

RETURN(
SELECT  dbo.obnomcom(idPersona) as 'Nombre',
		dbo.edad(fechaingreso) as 'Antiguedad'

FROM empleado
WHERE sueldo >= @moSuel
)

SELECT * FROM Antig(45000)
SELECT * FROM Persona
SELECT * FROM Empleado

/*8.modificar la funciòn ObtenerDireccionEmpleado, en caso de que el Id proporcionado no tenga jefe, mostrar en la columna
direccion completa la siguiente leyenda "información confidencial"*/

USE [BaseAero210315]
GO
/****** Object:  UserDefinedFunction [dbo].[diremp2]    Script Date: 04/18/2015 18:00:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER function [dbo].[diremp2](@inidemp INT)
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
	
		CASE ISNULL(idJefe, 0)
			WHEN 0 THEN
				'Informacin Conf'
			ELSE
				calle +' '+ numero
		END
	
	FROM Empleado a
	INNER JOIN Persona b
	ON a.idPersona = b.IdPersona
	INNER JOIN Direccion  C
	ON b.direccionId = c.direccionId
	WHERE a.idempleado = @inidemp
	
	RETURN
END

Select 

/*9.crear una función que devuelva el precio por asiento de todos los vuelos y que reciba un parametro opcional 
que indique si es temporada alta, en su caso aumentar 20% el precio por asiento*/


CREATE FUNCTION PreVuel ( @btBand BIT = 0 )
RETURNS TABLE
AS
RETURN(
SELECT idVuelo, MatriculaAvion, FechaVuelo,
		CASE @btBand
		WHEN 1 THEN
		Precioporasiento * 1.20
		ELSE
		Precioporasiento
		END as 'Precio'
FROM vuelo
)

SELECT * from dbo.prevuel(0)
SELECT * from dbo.prevuel(1)