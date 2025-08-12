/*****************************************************************************************************************
NAME: [dbo].[tblPlayerDim]   
PURPOSE: To know how many Goalkeepers have

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     08/11/2025   RLSOUSA       1. Built this script for MyFC


RUNTIME: 
0m 0s

NOTES: 
This script was created to quickly answer a specific question about position, I choose Goalkeeper but easily I can change to  defender and etc...
******************************************************************************************************************/

-- Q: How many goalkeepers are there in total? ?
-- A: Let's ask SQL Server and find out...

DROP VIEW IF EXISTS dbo.v_goalkeeper_count;
GO

CREATE VIEW dbo.v_goalkeeper_count
AS
SELECT
    COUNT(*) AS Goalkeepers
FROM
    dbo.tblPlayerDim
WHERE
    p_id = 1;
GO