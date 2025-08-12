/*****************************************************************************************************************
NAME: [dbo].[Planet_Express]   
PURPOSE: To know how much was spent on Mappple

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/11/2025   RLSOUSA       1. Built this script for Simpsons


RUNTIME: 
0m 0s

NOTES: 
This script was created to quickly answer a specific question about how much spend ina product.
******************************************************************************************************************/

-- Q: How much was spent on MAPPLE?
-- A:Let's ask SQL Server and find out...

DROP VIEW IF EXISTS dbo.v_total_mapple_spent;
GO

CREATE VIEW dbo.v_total_mapple_spent
AS
SELECT
    SUM(Amount) AS TotalMAPPLESpent
FROM
    dbo.Planet_Express
WHERE
    Description LIKE '%MAPPLE%';
GO