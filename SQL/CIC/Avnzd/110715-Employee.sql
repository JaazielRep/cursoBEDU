create database BaseParticion;

use baseparticion;
-- 1
CREATE TABLE EmployeeReports
(
ReportID int IDENTITY (1,1) NOT NULL,
ReportName varchar (100),
ReportNumber varchar (20),
ReportDescription varchar (max)
CONSTRAINT EReport_PK PRIMARY KEY CLUSTERED (ReportID)
)
 
DECLARE @i int
SET @i = 1 
BEGIN TRAN
WHILE @i<100000
BEGIN
INSERT INTO EmployeeReports(ReportName,ReportNumber,ReportDescription)
VALUES('ReportName',CONVERT (varchar (20), @i),REPLICATE ('Report', 1000))
SET @i=@i+1
END
COMMIT TRAN
GO


-- 2
SET STATISTICS IO ON
SET STATISTICS TIME ON
SELECT er.ReportID, er.ReportName, er.ReportNumber
FROM dbo.EmployeeReports er
WHERE er.ReportNumber LIKE '%33%'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF


-- 3
CREATE TABLE ReportsDesc
( ReportID int FOREIGN KEY REFERENCES EmployeeReports (ReportID),
  ReportDescription varchar(max)
  CONSTRAINT PK_ReportDesc PRIMARY KEY CLUSTERED (ReportID)
)
 
CREATE TABLE ReportsData
(
ReportID int NOT NULL,
ReportName varchar (100),
ReportNumber varchar (20),
 
CONSTRAINT DReport_PK PRIMARY KEY CLUSTERED (ReportID)
)
INSERT INTO dbo.ReportsData( ReportID,  ReportName,  ReportNumber)
SELECT er.ReportID,er.ReportName,er.ReportNumber
FROM dbo.EmployeeReports er

SET STATISTICS IO ON
SET STATISTICS TIME ON
SELECT er.ReportID, er.ReportName, er.ReportNumber
FROM ReportsData er
WHERE er.ReportNumber LIKE '%33%'
SET STATISTICS IO OFF
SET STATISTICS TIME OFF