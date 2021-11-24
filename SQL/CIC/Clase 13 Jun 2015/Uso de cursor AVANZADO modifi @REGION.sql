USE Northwind;

DECLARE miCursor CURSOR FOR
	SELECT	OrderID, 
			employeeID, 
			CustomerID FROM Orders;

OPEN miCursor;

DECLARE @employeeID int;
DECLARE @OrderID int;
DECLARE @CustomerID NCHAR(5);
DECLARE @import float;
DECLARE @employee varchar(MAX);
DECLARE @customer varchar(MAX);
DECLARE @region varchar(MAX);

FETCH NEXT FROM miCursor
	INTO @OrderID, @employeeID,@CustomerID;

WHILE (@@FETCH_STATUS = 0)
BEGIN	
	
	SET @import = (
		SELECT SUM(Quantity * UnitPrice)
		FROM [Order Details]
		WHERE OrderID = @OrderID
	);
	 
	SET @employee  = (
		SELECT FirstName + ' ' + LastName 
		FROM Employees 
		WHERE EmployeeID = @employeeID
	);	
	
	SET @customer = (
		SELECT CompanyName 
		FROM Customers
		WHERE CustomerID = @CustomerID
	);
	
	SET @region =  NULL;
	
	
	select @region = 
		ISNULL (@region + ',','') +
		RegionDescription 
		FROM Region R
		INNER JOIN Territories T 
		ON T.RegionID = R.RegionID
		INNER JOIN EmployeeTerritories ET
		ON ET.TerritoryID = T.TerritoryID
		INNER JOIN Employees E 
		ON E.EmployeeID = ET.EmployeeID
		WHERE E.EmployeeID = @employeeID
	;
	
	SELECT	@OrderID AS OrderID,
			@region AS 'Region',
			@import as 'Import',
			@employee AS Employee,			
			@customer AS Customer;
	
	FETCH NEXT FROM miCursor
		INTO @OrderID, @employeeID,@CustomerID;
END

CLOSE miCursor;
DEALLOCATE miCursor;
