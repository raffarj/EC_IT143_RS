-- Q: Who lives in Berlin ?
-- A: Let's ask SQL Server and find out...

DROP TABLE dbo.t_w3_schools_customers_berlin;
GO

CREATE TABLE dbo.t_w3_schools_customers_berlin (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL
);
GO

INSERT INTO dbo.t_w3_schools_customers_berlin (CustomerID, CustomerName, City)
SELECT
    v.CustomerID,
    v.CustomerName,
    v.City
FROM dbo.v_w3_schools_customers AS v;
GO