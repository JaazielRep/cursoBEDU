USE BaseAero210315

--3
select a.matriculaAvion, a.precioPorAsiento, a.fechaVuelo
from vuelo a
where CONVERT(DATE,fechaVuelo) >= CONVERT(DATE, '2014-12-22')

--4
SELECT * FROM CLIENTE
SELECT * FROM TipoCLIENTE
SELECT * FROM VUELO

---4
DECLARE @c int = 7, @v int = 6 
select a.clienteId, a.idTipoCliente, b.descuento, c.precioPorAsiento, c.precioPorAsiento - ((b.descuento * c.precioPorAsiento)/100)
from Cliente a
Inner Join TipoCliente b
ON a.idTipoCliente = b.idTipoCliente
Inner Join Vuelo c
ON @v = idVuelo 
where clienteId = @c

--- 5

Select *, 
UPPER(SUBSTRING(paterno, 1, 2)) + 
ISNULL(SUBSTRING(materno, 1, 1), 'X') + 
SUBSTRING(nombre, 1, 1) +
SUBSTRING(CONVERT(varchar,YEAR(nacimiento)), 3, 4) +
--RIGHT agarra los dos ultimos difitos de derecha a izq en este caso seria 008 y agarraria 08
--Si fuese 0012 agarraria 12
RIGHT('00' + SUBSTRING(CONVERT(varchar,MONTH(nacimiento)), 1, 2), 2) +
SUBSTRING(CONVERT(varchar,DAY(nacimiento)), 1, 2) 

from Persona


-- 

Select * from Empleado

