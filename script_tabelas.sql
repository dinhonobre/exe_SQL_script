-- Criação do banco de dados (opcional)
CREATE DATABASE IF NOT EXISTS LojaDB;
USE LojaDB;

-- ==============================
-- TABELA: Cliente
-- Armazena informações de clientes da loja
-- ==============================
CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,       -- Identificador único do cliente
    nome VARCHAR(100) NOT NULL,                      -- Nome completo do cliente (obrigatório)
    email VARCHAR(100) NOT NULL UNIQUE,              -- Email do cliente (obrigatório e único)
    telefone VARCHAR(20)                             -- Telefone para contato
);

-- ==============================
-- TABELA: Produto
-- Armazena os produtos disponíveis na loja
-- ==============================
CREATE TABLE IF NOT EXISTS Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,       -- Identificador único do produto
    nome VARCHAR(100) NOT NULL,                      -- Nome do produto (obrigatório)
    preco DECIMAL(10,2) NOT NULL DEFAULT 0.00,       -- Preço com até 10 dígitos, sendo 2 casas decimais
    descricao VARCHAR(255)                           -- Descrição opcional do produto
);

-- ==============================
-- INSERÇÃO DE DADOS EXEMPLO
-- ==============================

-- Inserindo clientes fictícios
INSERT INTO Cliente (nome, email, telefone) VALUES
('Anderson Nobre', 'anderson@email.com', '(11) 99999-0001'),
('Maria Oliveira', 'maria@email.com', '(21) 88888-0002');

-- Inserindo produtos fictícios
INSERT INTO Produto (nome, preco, descricao) VALUES
('Curso de SQL', 100.00, 'Curso online de introdução à linguagem SQL'),
('Curso de HTML e CSS', 150.00, 'Aprenda a criar sites do zero');
