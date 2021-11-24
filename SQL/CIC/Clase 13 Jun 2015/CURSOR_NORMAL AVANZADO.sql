USE Northwind;

-- SELECT TOP 10 OrderID FROM Orders ORDER BY OrderID;

DECLARE miCursor 
CURSOR DYNAMIC READ_ONLY FOR 
	SELECT OrderID, EmployeeID, CustomerID
	FROM Orders 
	ORDER BY OrderID;

DECLARE @employeeID int;
DECLARE @OrderID int;
DECLARE @CustomerID NCHAR(5);
DECLARE @import float;
DECLARE @employee varchar(MAX);
DECLARE @customer varchar(MAX);
DECLARE @region varchar(MAX);

DECLARE @rowsByPage INT;
DECLARE @pageNumber INT;
DECLARE @offset INT;

SET @rowsByPage  = 50;
SET @pageNumber  = 1;

SET @offset =	(@pageNumber - 1) 
				* @rowsByPage +1;

OPEN miCursor;
FETCH RELATIVE @offset FROM miCursor
INTO  @OrderID, @employeeID, @CustomerID;

WHILE(@rowsByPage > 0 AND @@FETCH_STATUS = 0)
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
	SET @region = NULL;
	
	SELECT @region = 
		ISNULL(@region + ',','') + 
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
	INTO  @OrderID, @employeeID,@CustomerID;
	
	SET @rowsByPage = @rowsByPage -1;
END
	
CLOSE miCursor;
DEALLOCATE miCursor;