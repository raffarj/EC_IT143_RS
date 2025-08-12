DROP TABLE IF EXISTS dbo.t_total_mapple_spent;
GO

-- uma chave primária e restrições NOT NULL.
CREATE TABLE dbo.t_total_mapple_spent (
    id INT PRIMARY KEY IDENTITY(1,1), -- chave primária auto-incrementada
    TotalMAPPLESpent DECIMAL(18, 2) NOT NULL
);
GO

-- Insere os dados da view na tabela.
INSERT INTO dbo.t_total_mapple_spent (TotalMAPPLESpent)
SELECT
    TotalMAPPLESpent
FROM dbo.v_total_mapple_spent;
GO