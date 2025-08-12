TRUNCATE TABLE dbo.t_goalkeeper_count;
GO

INSERT INTO dbo.t_goalkeeper_count (Goalkeepers)
SELECT
    Goalkeepers
FROM dbo.v_goalkeeper_count;
GO