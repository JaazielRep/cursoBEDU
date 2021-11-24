--- USE MASTER 
--GO
--use Northwind 

--RESPALDO
/*
backup database Northwind
to disk = 'E:\BD Avanzado\Backup_Northwind_13062015.bak'
WITH INIT
GO

*/

--- RESTAURAR DATABAS


RESTORE database Northwind
FROM  disk = 'E:\BD Avanzado\Backup_Northwind_13062015.bak'
GO

















