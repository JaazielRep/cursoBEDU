--3) Crear un SP que reciba el Id de un cliente, el id de un vendedor, el número de asientos y una fecha de vuelo
-- e inserte una venta en caso que aun existan asientos disponibles

select * from Cliente
select * from Vendedor
select * from Vuelo
select * from TipoAvion
select * from venta
select * from avion

Alter PROCEDURE StoreVenta (
@nIDCli int,
@nIDVen int,
@nNAsie int,
@dFecha date
)

AS 
BEGIN

DECLARE @nIDC int, @nIDV int, @nIDVu int 


select @nIDC = b.clienteId
from Persona a
INNER JOIN Cliente b
ON a.IdPersona = b.clienteId

SELECT @nIDV = d.vendedorId
FROM Persona c
INNER JOIN Vendedor d
ON c.IdPersona = d.vendedorId

select @nIDVu = idVuelo
FROM Vuelo
WHERE fechaVuelo = @dFecha

DECLARE @nContar INT

Select @nContar = SUM(numAsientos)
from venta
WHERE idVuelo = 15

select @nNAsie += @nContar

DECLARE @nCOMP INT, @numeroA INT


SELECT @NumeroA = g.numAsientos
FROM vuelo e
INNER JOIN avion f 
ON e.matriculaAvion = f.matricula
INNER JOIN tipoavion g
ON f.idTipoAvion = g.idTipoAvion
WHERE e.idVuelo = @nIDVu


IF @nNAsie < @numeroA 
INSERT INTO Venta (idCliente, fechaCompra, numAsientos, idVuelo, idVendedor)
VALUES (@nIDC, GETDATE(), @nNAsie, @nIDVu, @nIDV)

ELSE

SELECT 'No se inserto nada!'

END