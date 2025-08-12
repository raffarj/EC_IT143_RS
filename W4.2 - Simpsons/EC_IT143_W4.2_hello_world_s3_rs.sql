-- Q: How much was spent on MAPPLE?
-- A:Let's ask SQL Server and find out...

SELECT
    SUM(Amount) AS TotalMAPPLESpent
FROM
    dbo.Planet_Express
WHERE
    Description LIKE '%MAPPLE%';
