DROP PROCEDURE IF EXISTS dbo.usp_Load_GoalkeeperCount;
GO

CREATE PROCEDURE dbo.usp_Load_GoalkeeperCount
AS
BEGIN
    TRUNCATE TABLE dbo.t_goalkeeper_count;

    INSERT INTO dbo.t_goalkeeper_count (Goalkeepers)
    SELECT
        Goalkeepers
    FROM dbo.v_goalkeeper_count;
END;
GO