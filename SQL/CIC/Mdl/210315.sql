create database base210315;
use base210315;
select SYSDATETIME();


DECLARE @SoyUnaTabla table(
	ID int not null,
	Nombre varchar(10),
	Fecha datetime

);

INSERT INTO @SoyUnaTabla
VALUES (1, 'jose', GETDATE()), (2, 'Juan', GETDATE());

select * from @SoyUnaTabla

-- -------------------------------------------------------- -- --  - -

use BaseAero210315
ALTER AUTHORIZATION ON DATABASE:: BaseAero210315 TO sa;


SELECT v.idvendedor, SUM(v.numasientos * vu.PrecioporAsiento) AS Suma
FROM Venta v
INNER JOIN Vuelo vu
ON v.IdVuelo = vu.IdVuelo
GROUP BY v.idVendedor
HAVING SUM(v.numasientos * vu.PrecioporAsiento) >= 30000



-- Se ejecuta todo junto
DECLARE @tbVendedoresPlus TABLE( 
	IdVendedor INT,
	Venta Money
);

INSERT INTO @tbVendedoresPlus
SELECT v.idvendedor, SUM(v.numasientos * vu.PrecioporAsiento) AS Suma
FROM Venta v
INNER JOIN Vuelo vu
ON v.IdVuelo = vu.IdVuelo
GROUP BY v.idVendedor
HAVING SUM(v.numasientos * vu.PrecioporAsiento) >= 30000

SELECT * FROM @tbVendedoresPlus

-- ...
select c.nombre + ' '
	+ c.paterno + ' '
	+ ISNULL(c.materno, ' '),
	a.venta
FROM @tbVendedoresPlus a
INNER JOIN Vendedor b
ON a.IdVendedor = b.vendedorId
INNER JOIN Persona c
ON b.personaId = c.IdPersona



-- SET

DECLARE @VariableNumero INT;

SET @VariableNumero = 15;

select numasientos, numAsientos * @VariableNumero 
from venta
where numAsientos = 4;



-- DECLARE con WHERE

select * from Persona


DECLARE @Nombre varchar (20)
Select @Nombre = nombre + ' ' + paterno + ' ' + materno + ' '
from Persona
where IdPersona = 10;

Select @Nombre

SET @Nombre = 'Jose'
Select nombre = @Nombre + ' ' + paterno + ' ' + materno + ' '
from Persona
where IdPersona = 10;

DECLARE @idp INT = 10
Select Nombre + ' ' + paterno + ' ' + materno + ' '
from Persona
where IdPersona = @idp;



-- CONTROL DE FLUJOS(IF... ELSE, CASE, WHILE, BREAK, RETURN, CONTINUE, GOTO Label, WAITFOR)

DECLARE @numero INT = 10
IF @numero > 11
	Begin
		PRINT 'Es Menor que 10'
	END
	ELSE
		PRINT 'HOLA'


