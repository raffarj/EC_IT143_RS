-- Q: Who lives in Berlin ?
-- A: Let's ask SQL Server and find out...

SELECT v.CustomerName
	 , v.City
	 INTO [dbo].[t_w3_schools_customers]
	FROM [dbo].[t_w3_schools_customers_Berlin] AS v;