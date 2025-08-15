/*****************************************************************************************************************
NAME:    EC_IT143_6.4_Performance_Analysis_rs.sql
PURPOSE: Demonstrates performance analysis, execution plans, and index creation
         on the AdventureWorks database for two different queries.

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------

RUNTIME:
0m 0s

NOTES:
-- =================================================================================================================
--
--  Query 1: People Analysis by Middle Name
--
-- =================================================================================================================
*/
--Step 1
SELECT
    BusinessEntityID,
    FirstName,
    LastName
FROM
    Person.Person AS PP
WHERE
    PP.MiddleName = 'C';
GO

--Step 2
USE [AdventureWorks2022]
GO
CREATE NONCLUSTERED INDEX IX_MY_INDEX
ON [Person].[Person] ([MiddleName])
INCLUDE ([FirstName],[LastName])
GO

--Step3
SELECT
    BusinessEntityID,
    FirstName,
    LastName
FROM
    Person.Person AS PP
WHERE
    PP.MiddleName = 'C';
GO

