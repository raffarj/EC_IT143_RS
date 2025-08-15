/*
***********************************************************************************
******************************
NAME: dbo.t_w3_schools_customers
PURPOSE: Get the first name.
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 05/23/2022 RSousa 1. Built this script for EC IT143
RUNTIME:
0m 0s
NOTES
:
This script encontra e separa o primeiro nome do resto do nome
***********************************************************************************
*******************************/

WITH FirstNames AS (
    SELECT 
        ContactName,
        dbo.fn_GetFirstName(ContactName) AS FirstName
    FROM dbo.t_w3_schools_customers
)
SELECT *
FROM FirstNames
WHERE FirstName IS NULL OR FirstName = '';
