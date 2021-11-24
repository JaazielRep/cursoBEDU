USE [BaseAero210315]
GO
/****** Object:  StoredProcedure [dbo].[AltaCliente]    Script Date: 04/25/2015 15:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[AltaCliente]

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
@nIdTi numeric


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


INSERT INTO Persona (nombre, paterno, materno, direccionId, telefono, nacimiento, sexo)
VALUES (@vNombre, @vApa, @vAma, @nDirID, @nTel, @dNaci, @bSexo)

SET @nPerId = @@IDENTITY

INSERT INTO Cliente (personaId,idTipoCliente, fechaRegistro)
VALUES (@nPerId, @nIdTi, @dFechaIng)

END