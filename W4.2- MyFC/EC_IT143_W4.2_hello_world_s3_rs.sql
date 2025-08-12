-- Q: How many goalkeepers are there in total?
-- A: Let's ask to the server and find out...

SELECT COUNT(*) AS Goalkeepers
FROM [dbo].[tblPlayerDim]
Where p_id =1;