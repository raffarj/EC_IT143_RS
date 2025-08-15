/
***********************************************************************************
******************************
NAME: EC_IT143_6.3_fwt_s4_rs.sql
PURPOSE: To know the last modified
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 05/23/2022 RSOUSA 1. Built this script for EC IT143
RUNTIME:
0m 0s
***********************************************************************************
*******************************/
  
SELECT CustomerID, ContactName, LastModifiedDate
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 2;
