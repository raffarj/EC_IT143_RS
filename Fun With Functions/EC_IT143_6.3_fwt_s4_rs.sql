-- Q:How to extract first name from Contact Name?

-- A: Well, here is your problem..
-- CustomerName = Rafael Sousa -> Rafael
-- Google search "How to extract first name from combined name tsql stack overflow"
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT 
    ContactName,
    SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName) - 1) AS FirstName
FROM dbo.t_w3_schools_customers;
