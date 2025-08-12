TRUNCATE TABLE dbo.t_w3_schools_customers_berlin;
GO

INSERT INTO dbo.t_w3_schools_customers_berlin (CustomerID, CustomerName, City)
SELECT
    v.CustomerID,
    v.CustomerName,
    v.City
FROM dbo.v_w3_schools_customers AS v;
GO