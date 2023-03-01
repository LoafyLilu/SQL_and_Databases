USE AdventureWorks2019
GO
CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT * FROM Person.Address
GO
EXEC dbo.uspGetAddress

DROP PROCEDURE IF EXISTS dbo.uspGetAddress

BEGIN TRY
	SELECT 1000/0 AS RESULT;
END TRY

BEGIN CATCH
	SELECT
		ERROR_NUMBER() AS [Error_Code],
		ERROR_PROCEDURE() AS [Invalid_Proc],
		ERROR_MESSAGE() AS [Error_Details];
END CATCH


-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
CREATE PROCEDURE dbo.uspGetAddress2 @City nvarchar(30)
AS

SELECT * FROM Person.Address
WHERE City LIKE @City + '%'
GO

EXEC dbo.uspGetAddress2 @City = 'New'

--------------

CREATE PROC dbo.uspGetAddress3 @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Person.Address
WHERE City LIKE @City + '%' AND PostalCode LIKE @PostalCode
GO
EXEC dbo.uspGetAddress3 @City = 'New', @PostalCode='[98]%'

----------------------------------

CREATE PROC dbo.uspGetAddress4 @CityName nvarchar(30) OUTPUT
AS
SELECT City FROM Person.Address
WHERE AddressID = 38 AND PostalCode = 48226
GO
DECLARE @CityName nvarchar(30)
EXEC dbo.uspGetAddress4 @CityName = @CityName OUTPUT
PRINT @CityName

-- SELECT DISTINCT (direct) statement - 

SELECT DISTINCT Name, ModifiedDate
FROM Person.StateProvince

-- SELECT TOP statement
SELECT TOP 10 PERCENT SalesYTD , BusinessEntityID AS 'ID'
FROM Sales.SalesPerson

--LIMIT statement

--FETCH FIRST statement

--- SELECT MIN/MAX statement 


-- HAVING clause

-- SELECT LIKE 

--WILDCARD

--BETWEEN