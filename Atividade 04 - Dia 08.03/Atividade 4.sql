CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

-- Tabela C
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo VARCHAR(255),
PRIMARY KEY (id)
);

-- Tabela P
CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome VARCHAR(255),
quantidade int,
preco decimal not null,
codigo int,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD COLUMN codigo int;

SELECT * FROM tb_produtos;

-- Inserir
INSERT INTO tb_produtos(nome, quantidade, preco, codigo, categoria_id) values
("Picanha", 10, 90.99, 8723,1),
("Peito de Frango", 50, 15.99, 2023,2),
("Filé Mignon", 35, 29.99, 0515,1),
("Patinho;", 15, 39.99, 3051,1),
("Contrafilé", 25, 59.99, 8435,1),
("Maminha", 45, 40.99, 0589,1),
("Alcatra", 60, 60.99, 6789,1),
("Fraldinha ", 30, 35.99, 9099,1);

-- Alterar tabela
ALTER TABLE tb_produtos ADD categoria_id bigint;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

-- Selecionar
SELECT * FROM tb_produtos;

-- Selecionar preco
SELECT * FROM tb_produtos WHERE preco >  50;
SELECT * FROM tb_produtos WHERE preco BETWEEN  5 AND 150;

-- Selecionar nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Inner Join
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE categoria_id = 1;
