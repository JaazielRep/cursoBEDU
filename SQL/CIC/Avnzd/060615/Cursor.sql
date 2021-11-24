/*

USO DE CURSORES
-- Creacion de Cursor
-- Abrir Cursor
-- Navegar los Registros
-- Cerrar Cursor
-- DEALLOCATE CURSOR / Liberar memoria

*/
use northwind;
-- 

Decalre @employeeId int;
declare @orderID int;
DECLARE @venta FLOAT;
Declare @vendedor as Varchar(100);

DECLARE @HtmlTable as nvarchar(max);
SET @htmlTable =
'<html><body><table><thead><tr>' +
'<th>Pedido</th>' +
'<th>Vendedor</th>' +
'<th>Venta</th>' +
'</tr></thead><tbody>';

declare Pcursor cursor for
select employeeid, orderid from orders
select * from orders

open pcursor

fetch next from pcursor



fetch next from pcursor
into @employeeid, @orderid;
end

close pcursor;

deallocate pcursor;

set @htmltable = @htmltable +
	'</tbody></table></body></html>';
	
select @htmltable as 'HTML CODE';