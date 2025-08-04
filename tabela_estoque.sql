-- Seleciona o banco de dados onde a tabela será criada
USE LojaDB;

-- Criação da tabela Estoque
CREATE TABLE IF NOT EXISTS Estoque (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,  -- Chave primária única e auto incremental
    id_produto INT NOT NULL,                    -- Chave estrangeira para produto
    quantidade INT NOT NULL DEFAULT 0,          -- Quantidade disponível no estoque
    localizacao VARCHAR(100),                   -- Localização física do produto (ex: prateleira A3)
    
    -- Define a chave estrangeira (relaciona com a tabela Produto)
    CONSTRAINT fk_produto_estoque 
        FOREIGN KEY (id_produto) 
        REFERENCES Produto(id_produto)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
