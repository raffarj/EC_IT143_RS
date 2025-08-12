-- To Clean
TRUNCATE TABLE dbo.t_total_mapple_spent;
GO

INSERT INTO dbo.t_total_mapple_spent (TotalMAPPLESpent)
SELECT
    TotalMAPPLESpent
FROM dbo.v_total_mapple_spent;
GO
