CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Tabela
CREATE TABLE tb_classes (
	id_classes int not null auto_increment,
    nome_classes varchar (100) not null,
    descricao_classes varchar (200) not null,
    idade_classes varchar (200) not null,
    primary key (id_classes)
);

-- Insert
INSERT INTO tb_classes (nome_classes, descricao_classes, idade_classes) values
('Guerreiro', 'Jovem cavaleiro', 'Vinte'),
('Feiticeira', 'Jovem feiticeira', 'Vinte'),
('Curandeiro', 'Jovem curandeiro', 'Vinte'),
('Ninja', 'Jovem ninja', 'Vinte'),
('Mago', 'Jovem mago', 'Vinte');

SELECT * FROM tb_classes;