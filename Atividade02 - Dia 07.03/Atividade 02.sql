CREATE DATABASE db_atividade02;

USE db_atividade02;

CREATE TABLE tb_produto (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NULL,
    quantidade INT NOT NULL,
	valor DECIMAL (4,2) NOT NULL,
    lucro DECIMAL (4,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Sofá", "Sofá Cinza", 10, 600.00, 200.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Poltrona", "Poltrona azul", 50, 200.00, 50.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Armário", "Armário Duas Portas", 30, 900.00, 300.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Cama", "Cama de Solteiro", 220, 450.00, 150.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Cômoda", "Cômoda Branca", 100, 150.00, 40.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Cadeira", "Cadeira de Escritório", 15, 600.00, 250.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Mesa", "Mesa de Escritório", 55, 800.00, 300.00);
 INSERT INTO tb_produto (nome, descricao, quantidade, valor, lucro)
 values ("Estante", "Estante Branca", 122, 200.00, 120.00);
 
 SELECT * FROM tb_produto;
 SELECT nome, preco FROM tb_produto WHERE preco > 500;
 SELECT nome, preco FROM tb_produto WHERE preco < 500;
 
SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produto SET lucro = 100 WHERE id = 8;
SELECT * FROM tb_produto WHERE id = 8;