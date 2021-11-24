use BaseAero210315


GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[AltaCliente]
		@vNombre = N'Jose',
		@vApa = N'Perez',
		@vAma = N'Lopez',
		@nTel = 555,
		@dNaci = "19901101",
		@bSexo = 0,
		@vCalle = N'calle',
		@nNum = 5,
		@vCol = N'col',
		@nCP = 542,
		@nIdTi = 1

SELECT	'Return Value' = @return_value

GO

SElect * from persona
select * from cliente

CREATE TRIGGER ValidaFechaRegistro
ON Cliente
After insert
as
BEGIN

--Declarar variable
DECLARE @dtFechaAInsertar datetime

--Obtener fecha de registro insertada
select @dtFechaAInsertar = fecharegistro
from inserted

--Validar que la fecha insertada no sea mayor que la fecha de hoy

If @dtFechaAInsertar > getdate()
BEGIN
	raiserror('No se puede ingresar fecha mayor al dia de hoy', 16, 1)
	Rollback transaction
end

end

-- -----------------------------------------------------------------------------------------
--TRIGGER APLICADO A TODA LA BASE
CREATE TRIGGER seguridad
ON DATABASE
AFTER DROP_TABLE, ALTER_TABLE
AS
BEGIN
	RAISERROR('NO PUEDE MODIFICAR TABLAS', 16, 1);
	ROLLBACK TRAN
END

Drop table venta

DISABLE TRIGGER seguridad on database

---------------------------------------------------------------------------------------------
ALTER TABLE empleado 
ADD 
	fechamodif  datetime default  getdate() not null,
	usuarioModif varchar(50) default suser_name() not null,
	borrar varchar(20) null 
	
Select * from empleado

Alter table empleado drop column borrar

----------------------------------------------------------------------------------------------

CREATE TRIGGER datosModif
ON empleado
AFTER INSERT, UPDATE
AS
BEGIN
	DECLARE @inEmpID int
	--se obtiene id
	select @inempid = idEmpleado 
	from inserted
	--se modifica la fecha de modificacion
	UPDATE empleado
	SET fechamodif = getdate(),
		usuarioModif = suser_name() 
	Where
		idempleado = @inempID
END

update empleado 
set sueldo = 10000,
	fechamodif = '20100801',
	usuariomodif = 'anonimo'
where idpersona = 20

select * from empleado