DROP TABLE IF EXISTS dbo.t_total_mapple_spent;
GO

SELECT
    TotalMAPPLESpent
INTO dbo.t_total_mapple_spent
FROM dbo.v_total_mapple_spent;
GO