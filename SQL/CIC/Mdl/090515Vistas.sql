use BaseAero

CREATE VIEW InfoEmpleado
AS

select b.nombre + ' ' + b.paterno + ' ' + ISNULL(b.materno, '') as 'Empleado',
		a.fechaIngreso, c.Nombre
from empleado a
INNER JOIN Persona b
ON a.idPersona = b.IdPersona
INNER JOIN Aerolinea c
on a.AerolineaId = c.AerolineaId

SELECT * from empleado

select * from infoempleado