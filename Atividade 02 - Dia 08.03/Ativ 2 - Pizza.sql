CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Table
CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar (100) not null,
tamanho varchar (100) not null,
PRIMARY KEY (id)
);

-- Insert
INSERT INTO tb_categorias (tipo, tamanho) values
('Salgada', 'Pequena'),
('Salgada', 'Grande'),
('Doce', 'Pequena'),
('Doce', 'Grande');

SELECT * FROM tb_categorias;

-- Table
CREATE TABLE tb_pizzas (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
sabor float not null,
preco varchar (255) not null,
PRIMARY KEY (id)
);

-- Alter
ALTER TABLE tb_pizzas ADD categorias_id bigint;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias

-- Foreign Key
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id);

-- Insert ???
INSERT INTO tb_pizzas (nome, quantidade, sabor, preco, categorias_id) values
("Margherita", 5, "Pizza de Margherita", 50.00, 1),
("Catupiry", 1, "Pizza de Catupiry", 40.00, 1),
("Bacon", 2, "Pizza de Bacon", 45.00, 1),
("Dois Queijos", 3, "Pizza de Dois Queijos", 55.00, 1),
("Nutella", 1, "Pizza de Nutella", 60.50, 2),
("Brigadeiro", 2, "Pizza de Brigadeiro", 55.00, 2),
("Chocolate Branco", 3, "Pizza de Chocolate Branco", 60.00, 2),
("Sorvete", 4, "Pizza de Sorvete", 70.00, 2);

-- Select
SELECT * FROM tb_pizzas

INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb.pizzas.categorias_id WHERE categorias_id = 2;

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;


