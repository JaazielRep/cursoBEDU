--4) Crear un SP que inserte un Avión que tenga los siguientes parámetros:
	/*		tipo de avión
			fabricante
			numero de asientos
			fecha de fabricación
			número de meses para mantenimiento
			Aerolínea propietaria */

	
select * from TipoAvion
select * from avion
select * from Aerolinea

Alter PROCEDURE StoreAvion(
@vTipAv varchar(30),
@vFabr varchar(20),
@nNumA int,
@dFech date,
@nMant int,
@nAerP int,
@nmatr int,
@nmes int,
@naerol int
)


AS
BEGIN




insert into tipoavion(tipoavion, fabricante, numAsientos)
VALUES (@vTipAv, @vFabr, @nNumA)

insert into Avion (matricula, idTipoAvion, fechaFabricacion, UltimoMantenimiento, mesesMantenimiento, aerolineaId)
VALUES(@nmatr, @@IDENTITY, @dFech, @dFech, @nmes, @naerol)


END