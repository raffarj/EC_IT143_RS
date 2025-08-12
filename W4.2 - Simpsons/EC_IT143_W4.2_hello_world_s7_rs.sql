DROP PROCEDURE IF EXISTS dbo.usp_Load_TotalMAPPLESpent;
GO

CREATE PROCEDURE dbo.usp_Load_TotalMAPPLESpent
AS
BEGIN
    TRUNCATE TABLE dbo.t_total_mapple_spent;

    INSERT INTO dbo.t_total_mapple_spent (TotalMAPPLESpent)
    SELECT
        TotalMAPPLESpent
    FROM dbo.v_total_mapple_spent;
END;
GO