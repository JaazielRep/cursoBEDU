USE [BaseAero210315]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[AltaCliente]
		@vNombre = N'Nuevo',
		@vApa = N'Nuevo',
		@vAma = N'Nuevo',
		@nTel = 5555555,
		@dNaci = '19901231',
		@bSexo = 0,
		@vCalle = N'No-se',
		@nNum = 0,
		@vCol = N'Menos',
		@nCP = 5555,
		@nIdTi = 2

SELECT	'Return Value' = @return_value

GO

Select * from persona
select * from Cliente 
Select * from direccion