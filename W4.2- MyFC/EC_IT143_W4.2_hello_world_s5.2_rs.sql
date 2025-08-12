DROP TABLE IF EXISTS dbo.t_goalkeeper_count;
GO

CREATE TABLE dbo.t_goalkeeper_count (
    id INT PRIMARY KEY IDENTITY(1,1), -- chave prim�ria auto-incrementada
    Goalkeepers INT NOT NULL
);
GO

-- Insere os dados da view na tabela rec�m-criada.
INSERT INTO dbo.t_goalkeeper_count (Goalkeepers)
SELECT
    Goalkeepers
FROM dbo.v_goalkeeper_count;
GO