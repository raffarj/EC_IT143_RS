DROP TABLE IF EXISTS dbo.t_goalkeeper_count;
GO

-- Usa SELECT INTO para criar e preencher a tabela em um só comando.
SELECT
    Goalkeepers
INTO dbo.t_goalkeeper_count
FROM dbo.v_goalkeeper_count;
GO