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


CREATE OR ALTER FUNCTION dbo.fn_GetFirstName (@FullName VARCHAR(100))
RETURNS VARCHAR(100)
AS
BEGIN
    RETURN SUBSTRING(@FullName, 1, CHARINDEX(' ', @FullName + ' ') - 1)
END;
