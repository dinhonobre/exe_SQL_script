-- Seleciona o banco de dados
USE LojaDB;

-- Insere um cliente
INSERT INTO Cliente (nome, email, telefone)
VALUES ('Anderson Nobre', 'anderson2@email.com', '(99) 99999-9999');


-- Insere um produto
INSERT INTO Produto (nome, preco, descricao)
VALUES ('Curso de SQL', 100.00, 'Curso introdutório de banco de dados');

-- Insere um item no estoque para o produto criado
INSERT INTO Estoque (id_produto, quantidade, localizacao)
VALUES (1, 50, 'Prateleira A1');
