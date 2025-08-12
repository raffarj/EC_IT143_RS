DROP PROCEDURE IF EXISTS dbo.usp_Load_CustomersBerlin;
GO
CREATE PROCEDURE dbo.usp_Load_CustomersBerlin
AS
BEGIN

TRUNCATE TABLE dbo.t_w3_schools_customers_berlin;

INSERT INTO dbo.t_w3_schools_customers_berlin (CustomerID, CustomerName, City)
    SELECT
        v.CustomerID,
        v.CustomerName,
        v.City
    FROM dbo.v_w3_schools_customers AS v;
END;
GO