USE LojaDB;

-- Seleciona o banco (caso use MySQL/PostgreSQL):
-- USE LojaDB;

-- Consulta para somar quantidade de estoque por produto
SELECT 
  product.name AS product_name,
  SUM(stock.quantity) AS total_quantity
FROM 
  product
INNER JOIN stock ON product.product_id = stock.product_id
GROUP BY 
  product.name
ORDER BY 
  total_quantity DESC;
