-- Q: Who lives in Berlin ?
-- A: Let's ask SQL Server and find out...

Select v.CustomerName
	 , v.City
	 INTO dbo.t_w3_schools_customers_Berlin
	FROM dbo.v_w3_schools_customers AS v;