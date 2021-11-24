--1) Crear un procedimiento almacenado que inserte un cliente 
--incluyendo su dirección y tipo de cliente

select * from Persona
select * from Direccion
select * from Cliente
select * from TipoCliente

Use BaseAero210315

GO

CREATE PROCEDURE AltaCliente

@vNombre Varchar(20),
@vApa Varchar (20),
@vAma Varchar (20),
@nTel numeric,
@dNaci date,
@bSexo binary,
@vCalle Varchar (20),
@nNum numeric,
@vCol Varchar (20),
@nCP numeric,
@nIdTi numeric,
@vTip numeric,
@nDesc numeric

AS 
BEGIN

SET NOCOUNT OFF

DECLARE
@dFechaIng date,
@nDirID numeric,
@nPerId numeric

SET @dFechaIng = CONVERT(date,GETDATE())

INSERT INTO Direccion (calle, numero, colonia, codigoPostal)
VALUES (@vCalle, @nNum, @vCol, @nCP)

SET @nDirID = @@IDENTITY

INSERT INTO TipoCliente(idTipoCliente, tipoCliente, descuento)
VALUES (@nIdTi, @vTip, @nDesc)

INSERT INTO Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo)
VALUES (@vNombre, @vApa, @vAma, @nDirID, @nTel, @dNaci, @bSexo)

SET @nPerId = @@IDENTITY

INSERT INTO Cliente (personaId,idTipoCliente, fechaRegistro)
VALUES (@nPerId, @nIdTi, @dFechaIng)

END