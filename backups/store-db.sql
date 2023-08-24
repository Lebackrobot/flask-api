-- Create database
CREATE DATABASE Store; 

-- Seleção do banco de dados
\c Store;


-- Store script 
CREATE TABLE Products( 
  id serial PRIMARY KEY,
  name varchar(30),
  value numeric
);

-- Insert table lines
INSERT INTO Products (name, value) VALUES ('Camiseta', 29.90);
INSERT INTO Products (name, value) VALUES ('Calça', 59.90);
INSERT INTO Products (name, value) VALUES ('Tênis', 99.90);

-- Update store 3
UPDATE Products SET value = 89.90 WHERE id = 3;

-- QUERY
SELECT * FROM Store;
