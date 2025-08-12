DROP VIEW IF EXISTS dbo.v_goalkeeper_count;
GO

CREATE VIEW dbo.v_goalkeeper_count
AS
SELECT
    COUNT(*) AS Goalkeepers
FROM
    dbo.tblPlayerDim
WHERE
    p_id = 1;
GO