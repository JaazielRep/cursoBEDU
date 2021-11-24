-- http://www.sqlshack.com/database-table-partitioning-sql-server/

use AdventureWorksLT2008R2;


-- Se define FileGroup
ALTER DATABASE AdventureWorksLT2008R2
ADD FILEGROUP testfilegroup1
GO
ALTER DATABASE AdventureWorksLT2008R2
ADD FILEGROUP testfilegroup2
GO
ALTER DATABASE AdventureWorksLT2008R2
ADD FILEGROUP testfilegroup3
GO
ALTER DATABASE AdventureWorksLT2008R2
ADD FILEGROUP testfilegroup4
GO

-- File to FileGroup añadir archivos al file group
ALTER DATABASE AdventureWorksLT2008R2
    ADD FILE
    (
    NAME = test1dat1,
    FILENAME = 'E:\test1dat1.ndf',
        SIZE = 5 MB,
        MAXSIZE = 100 MB,
        FILEGROWTH = 5 MB
    ) TO FILEGROUP testfilegroup1
    
ALTER DATABASE AdventureWorksLT2008R2
    ADD FILE
    (
    NAME = test1dat2,
    FILENAME = 'E:\test1dat2.ndf',
        SIZE = 5 MB,
        MAXSIZE = 100 MB,
        FILEGROWTH = 5 MB
    ) TO FILEGROUP testfilegroup2
    
 ALTER DATABASE AdventureWorksLT2008R2
    ADD FILE
    (
    NAME = test1dat3,
    FILENAME = 'E:\test1dat3.ndf',
        SIZE = 5 MB,
        MAXSIZE = 100 MB,
        FILEGROWTH = 5 MB
    ) TO FILEGROUP testfilegroup3
    
ALTER DATABASE AdventureWorksLT2008R2
    ADD FILE
    (
    NAME = test1dat4,
    FILENAME = 'E:\test1dat4.ndf',
        SIZE = 5 MB,
        MAXSIZE = 100 MB,
        FILEGROWTH = 5 MB
    ) TO FILEGROUP testfilegroup4
    
 -- Create Partition function
 select * from SalesLT.SalesOrderHeader
 
		-- 71774
create partition function MiRango (int)
as Range left
for values (71815, 71863, 71915);
GO

--Add Partition schema
Create partition scheme noseque
as partition MiRango
to(testfilegroup1, testfilegroup2, testfilegroup3, testfilegroup4);
GO

select	firstname, lastname,
		ROW_NUMBER() over (order by modifieddate)
from SalesLT.Customer

select customerid, ROW_NUMBER() over(partition by customerid order by salesorderid)
from SalesLT.SalesOrderHeader