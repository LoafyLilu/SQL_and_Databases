USE db_zooTest2
GO

/* CONVERT(VARCHAR(50), @totalHab = this is converting the data from MONEY to VARCHAR
	* CHAR(13) = Line Break
	* CHAR(9) = Tab Key */

DECLARE @totalHab MONEY;
DECLARE @totalNut MONEY;
DECLARE @results MONEY;

SET @totalHab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @totalNut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@totalHab + @totalNut);

PRINT (
	CONVERT(VARCHAR(50), @totalHab) + CHAR(9) + ' - The Total Habitat Cost' + CHAR(13) +
	CONVERT(VARCHAR(50), @totalNUT) + CHAR(9) + ' - The total Nutrition Cost' + CHAR(13) + '------------' + CHAR(13) +
	CONVERT(VARCHAR(50), @results)
	);