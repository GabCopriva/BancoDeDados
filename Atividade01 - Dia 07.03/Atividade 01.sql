CREATE DATABASE db_atividade01;

USE db_atividade01;

CREATE TABLE tb_atributos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_atributos(nome, idade, cargo, salario) 
values ("Ana",20, "Atendente", 1900);
INSERT INTO tb_atributos(nome, idade, cargo, salario) 
values ("Maria",28, "Treinamento", 2500);
INSERT INTO tb_atributos(nome, idade, cargo, salario) 
values ("Joca",30, "Recrutamento", 2500);
INSERT INTO tb_atributos(nome, idade, cargo, salario) 
values ("Roberto",28, "Controle", 3000);
INSERT INTO tb_atributos(nome, idade, cargo, salario) 
values ("Lorena",32, "Gestão", 4500);



SELECT nome, salario FROM tb_atributos WHERE salario > 2000;
SELECT nome, salario FROM tb_atributos WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_atributos SET salario = 1900 WHERE id = 2;
SELECT * FROM tb_atributos WHERE id = 2;