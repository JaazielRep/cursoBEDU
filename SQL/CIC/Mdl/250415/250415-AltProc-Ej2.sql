--2) Crear un SP que reciba como parámetros el id de una persona, calle o nùmero o colonia 
-- o còdigo postal y actulice su dirección

select * from Direccion
select * from persona

ALTER PROCEDURE ActDireccion 
(@nidp int, 
@vCall varchar(20) = null, 
@nNum int = null,
@vCol varchar (20) = null,
@nCP int = null)

AS 
BEGIN

DECLARE @nidDire int

SELECT @nidDire = b.direccionId
FROM Persona a
INNER JOIN Direccion b
ON a.direccionId = b.direccionId
WHERE IdPersona = @nidp



UPDATE direccion 
SET 

calle =
case 
when  @vCall IS NOT NULL
Then @vCall
ELSE 
Calle
END, 

numero = 
CASE 
WHEN @nNum IS NOT NULL
THEN @nNum
ELSE 
numero
END, 

colonia = 
CASE
WHEN @vCol IS NOT NULL
THEN @vCol
ELSE 
Colonia
END, 

codigoPostal = 
CASE
WHEN @nCP IS NOT NULL
THEN @nCP
ELSE 
codigoPostal
END

WHERE direccionId = @nidDire


END