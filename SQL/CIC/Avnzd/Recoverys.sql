/* backup de forma mensual, trimestral, diarios, semanales...
*operacion de colas *C-Sharp *Generar Logs

*/
use master;
go
backup database Northwind
to disk = 
'E:\NorthW1.bak'
--Genera respaldo parcial
--with init copia toda la base de datos
with differential
go

-- --------------------DROP

use master
go
drop database northwind;

-- --------------------Restore

use master;
go
restore database Northwind
from disk/*take*/ = 
'E:\Northwind.bak'
go 
use Northwind
go

-- --------------------Restore-Parcial
use master;
go
restore database Northwind
from disk = 
'E:\Northwind.bak'
--El log lo toma en cuenta
with recovery
go

use master;
go
restore database Northwind
from disk = 
'E:\Northwind.bak'
--No le importa el log
with norecovery
go

use master;
go
restore database Northwind
from disk = 
'E:\Northwind.bak'
--No le importa el log
with norecovery
move 'not' to
'C:\Nort'
move 'nor' to
'C:\nort_log'
go
-- Backup Diferencial saca cambio sobre lo que ya existia

alter database Northwind
set recovery full go