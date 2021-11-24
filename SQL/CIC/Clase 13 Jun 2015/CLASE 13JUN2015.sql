use Northwind 
DECLARE c CURSOR FOR
SELECT id , producto 
FROM MisProductos P;

declare @id int;
declare @producto varchar (100);
declare @cantidad int;

open c;
fetch next from c into @id , @producto;


while (@@FETCH_STATUS = 0 )
begin
	set @cantidad = ( 
	select sum (cantidad)
	from Vantas 
	where producto =  @id 
	 );
	 
	 select @producto as 'producto',
			@cantidad as 'Cantidad';
	 
	 
	fetch next from c into @id , @producto;


 
end


close c;
deallocate c;

select * from ventas

--------------------

use Northwind 

select top 20 OrderID 
from Orders order by OrderID

declare miCursor CURSOR DYNAMIC READ_ONLY FOR
select OrderID FROM Orders ORDER BY OrderID;

	
	DECLARE @OrderID INT;
	DECLARE @rowsBypage INT;
	DECLARE @pageNumber INT;
	declare @offset INT; 
	
set @rowsBypage   = 10;
set @pageNumber   = 1;

	set @offset         = (@pageNumber  -1)
						   + @rowsBypage +1 ;

open miCursor;
FETCH RELATIVE @offset from miCursor
into @OrderID;

while (@rowsBypage > 0 and @@FETCH_STATUS = 0)
BEGIN 
		select @orderID as OrderID;

	fetch next from miCursor into @OrderID;
	set @rowsBypage = @rowsBypage -1; 
end
close miCursor;
deallocate miCursor;


------------------ SIGUIENTE 


declare miCursor 
CURSOR DYNAMIC READ_ONLY FOR
select OrderID ,EmployeeID , 
FROM Orders 
ORDER BY OrderID;

	DECLARE @employeeID int;
	DECLARE @OrderID int;
	DECLARE @CustomerID NCHAR(5);
	DECLARE @import float;
	DECLARE @employee varchar(MAX);
	DECLARE @customer varchar(MAX);
	DECLARE @region varchar(MAX);
	

	
	DECLARE @OrderID INT;
	DECLARE @rowsBypage INT;
	DECLARE @pageNumber INT;
	declare @offset INT; 
	
set @rowsBypage   = 10;
set @pageNumber   = 1;

	set @offset         = (@pageNumber  -1)
						   + @rowsBypage +1 ;

open miCursor;
FETCH RELATIVE @offset from miCursor
into @OrderID;

while (@rowsBypage > 0 and @@FETCH_STATUS = 0)
BEGIN 
		--select @orderID as OrderID;
		

	fetch next from miCursor into @OrderID;
	set @rowsBypage = @rowsBypage -1; 
end
close miCursor;
deallocate miCursor;



