-- Criar BD
CREATE DATABASE db_generation_game_online;

-- Usar o BD
USE db_generation_game_online;

-- Criar Tabela
CREATE TABLE tb_classes (
	id_classes BIGINT auto_increment,
    nome_classes VARCHAR (100) NOT NULL,
    descricao_classes VARCHAR (200),
    idade_classes VARCHAR (200) NOT NULL,
    PRIMARY KEY (id)
);

-- Insert
INSERT INTO tb_classes (nome_classes, descricao_classes, idade_classes) values
('Guerreiro', 'Jovem cavaleiro', 'Vinte'),
('Feiticeira', 'Jovem feiticeira', 'Vinte'),
('Curandeiro', 'Jovem curandeiro', 'Vinte'),
('Ninja', 'Jovem ninja', 'Vinte'),
('Mago', 'Jovem mago', 'Vinte');

<<<<<<< HEAD
-- Selecionar
SELECT * FROM tb_classes;


-- Criar tabela personagens
CREATE TABLE tb_personagens (
id_personagens bigint auto_increment,
=======
SELECT * FROM tb_classes;

-- Personagens
CREATE TABLE tb_personagens (
id_personagens int auto_increment,
>>>>>>> b15fa12ccb3a9473f45d27e83a068a31205ea6c9
nome_personagens varchar (255) not null,
tipo varchar (255) not null,
poderataque int,
poderdefesa int,
<<<<<<< HEAD
classe_id bigint,
primary key (id)
);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classes_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);
=======
id_classe int not null,
primary key (id_personagens),
foreign key (id_classe) references tb_classes (id_classe)
);

-- Insert
INSERT INTO tb_personagens (nome_personagens, tipo, poderataque, poderdefesa, id_classe) values
('Aslan', 'Perto', 4000, 1200, 1),
('Lila', 'Médio', 1500, 2000, 2),
('Sam', 'Perto', 1000, 2500, 3),
('Tami', 'Perto', 2500, 1900, 4),
('Roan', 'Médio', 1500, 2000, 5),
('Lael', 'Perto', 3000, 1000, 6),
('Joan', 'Perto', 4000, 1200, 7),
('Anir', 'Perto', 4000, 1200, 8);
>>>>>>> b15fa12ccb3a9473f45d27e83a068a31205ea6c9

SELECT * FROM tb_personagens WHERE poderataque > 2000;
SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagens LIKE '%C%';
<<<<<<< HEAD
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;
=======

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes = tb_classes.id_classe WHERE tb_classes.nome_classe = "Guerreiro"



>>>>>>> b15fa12ccb3a9473f45d27e83a068a31205ea6c9
