/*
use Northwind 
GO 
	    ---definir mi cursor
	    
	    
DECLARE   @employeeID int ;
DECLARE   @OrderID int;

declare miCursor cursor For
		select employeeID, OrderID from Orders
	open miCursor     
	
	---
fetch next from miCursor 
into @employeeID, @OrderID
 
 
while @@FETCH_STATUS = 0
begin 
select @orderID as  'OrderID' , e.FirstName,
		e.LastName as 'Vendedor'
		from Employees  e
		where e.employeeID = @employeeID ;
		
		fetch next from miCursor 
			into @employeeID, @OrderID
		
		end
	
			
		
		--- cerrar mi cursor
		close miCursor;
		
		
		
		---liberar memoria
		deallocate miCursor;
		
*/		
-----SEGUNDO PROBLEMA TRABAJANDO CON HTML 
use Northwind 
GO 
	    ---definir mi cursor
	    
--CREATE procedure nombredeStored
--As 	    
DECLARE   @employeeID int ;
DECLARE   @OrderID int;
DECLARE   @VENTA float;
DECLARE   @VENDEDOR AS VARCHAR (500);

DECLARE @htmltable as NVARCHAR (MAX);
SET @htmltable = 
		'<html>body><table><thead><tr>' +
		'<th>pedido</th>' +
		'<th>Vendedor</th>' +
		'<th>Venta</th> '+
		'</tr></thead><tbody>';
		

declare miCursor cursor For
		select employeeID, OrderID from Orders;
	open miCursor; 
	
	---
fetch next from miCursor 
into @employeeID, @OrderID;
 
 
while @@FETCH_STATUS = 0
begin 
		SET @VENTA = (SELECT SUM (OD.Quantity * OD.UnitPrice )
		FROM [Order Details] OD 
		WHERE OD.OrderID = @OrderID );
		
		set @VENDEDOR = (
			select FirstName + ' ' + LastName as prueba from employees e where e.employeeID = @employeeID);
		
select @orderID as  'OrderID' , e.FirstName,
		e.LastName as 'Vendedor'
		from Employees  e
		where e.employeeID = @employeeID ;
		
		fetch next from miCursor 
			into @employeeID, @OrderID ;
		
		
		
		set @htmltable = @htmltable  +
		'<tr>' + 
		'<td>' + CAST (@orderID as varchar ) +
		'<td>' + @VENDEDOR + '</td>' +
		'<td>' + CAST (@venta as varchar ) + '</td>' +
		'</>' ;
		
		fetch next from miCursor
			into @employeeID, @orderID;
		
		END
				
		
				
		--- cerrar mi cursor
		close miCursor;
		
		
		---liberar memoria
		deallocate miCursor;
			
		SET @htmltable = @htmltable + 
		'</tbody></table></body></html>'
		
		select @htmltable as 'HTML CODE';
--Go
--Exec nombredeStored