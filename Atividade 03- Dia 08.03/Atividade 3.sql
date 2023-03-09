CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Tabela C
CREATE TABLE tb_categorias(
id BIGINT auto_increment,
tipo VARCHAR(100),
PRIMARY KEY (id)
);

-- Tabela P
CREATE TABLE tb_produtos(
id BIGINT auto_increment,
nome VARCHAR(100),
descricao VARCHAR(255),
preco int,
quantidade int,
PRIMARY KEY (id)
);

-- Inserir
INSERT INTO tb_produtos(nome, descricao, preco, quantidade, categoria_id) values
("Dorflex", "Para dor de cabeça", 10, 100,1),
("Dipirona", "Para dor e febre", 25, 50,1),
("Pondera", "Para depressão", 69, 10,2),
("Lamitor", "Para ansiedade", 37, 20,2),
("Buscopan", "Para dor de barriga", 23, 100,1),
("Vonau", "Para ânsia e vômito", 17, 200,1),
("Allegra", "Para rinite", 62, 60,1),
("Anastrozol", "Para diminuição de hormônio", 55, 12,2);

-- Selecionar
SELECT * FROM tb_produtos;

-- Alterar tabela
ALTER TABLE tb_produtos ADD categoria_id bigint;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

-- Selecionar preco
SELECT * FROM tb_produtos WHERE preco >  50;
SELECT * FROM tb_produtos WHERE preco BETWEEN  5 AND 60;

-- Selecionar nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Inner Join
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE categoria_id = 1;
