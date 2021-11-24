select * from Empleado

CREATE PROCEDURE StoreSueldo(
@nidEmp int,
@nPorce int
)

AS
BEGIN

DECLARE @nNuevo money

select @nNuevo = sueldo + (sueldo * @nPorce)
from Empleado
where idEmpleado = @nidEmp

UPDATE Empleado 
SET sueldo = @nNuevo
Where idEmpleado = @nidEmp

END