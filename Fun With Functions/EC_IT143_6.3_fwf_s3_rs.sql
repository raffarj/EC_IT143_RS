-- Q:How to extract first name from Contact Name?

-- A: Well, here is your problem..
-- CustomerName = Rafael Sousa -> Rafael

SELECT 
    ContactName,
    SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName) - 1) AS FirstName
FROM dbo.t_w3_schools_customers;
