-- Criar BD
CREATE DATABASE db_generation_game_online;

-- Usar o BD
USE db_generation_game_online;

-- Criar Tabela
CREATE TABLE tb_classes (
	id_classes BIGINT auto_increment,
    nome_classes VARCHAR (100) ,
    descricao_classes VARCHAR (200),
    idade_classes VARCHAR (200) NOT NULL,
    PRIMARY KEY (id)
	FOREIGN KEY (classes_id) REFERENCES tb_classes(id);
);

-- Insert
INSERT INTO tb_classes (nome_classes, descricao_classes, idade_classes) values
('Guerreiro', 'Jovem cavaleiro', 'Vinte'),
('Feiticeira', 'Jovem feiticeira', 'Vinte'),
('Curandeiro', 'Jovem curandeiro', 'Vinte'),
('Ninja', 'Jovem ninja', 'Vinte'),
('Mago', 'Jovem mago', 'Vinte');

-- Selecionar
SELECT * FROM tb_classes;


-- Criar tabela personagens
CREATE TABLE tb_personagens (
id_personagens bigint auto_increment,
nome_personagens varchar (255) not null,
tipo varchar (255) not null,
poderataque int,
poderdefesa int,
classe_id bigint,
primary key (id)
);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderataque > 2000;
SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagens LIKE '%C%';

SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classes_id;
SELECT * FROM tb_personagens;
WHERE tb_classes.id = 2;