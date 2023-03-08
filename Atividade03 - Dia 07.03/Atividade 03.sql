CREATE DATABASE db_atividade03;

USE db_atividade03;

CREATE TABLE tb_estudantes(
	id bigint auto_increment PRIMARY KEY,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    turma varchar(255) not null,
    idade int not null,
    notas decimal not null
);

INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Carla", "Souza", "B", 15, 7.0);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Mario", "Silva", "B", 15, 9.0);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("João", "Lima", "A", 14, 7.5);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Lucas", "Madeiro", "A", 14, 6.0);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Bruna", "Barros", "B", 15, 5.5);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Joana", "Oliveira", "A", 15, 8.5);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Larissa", "Fernandes", "A", 14, 6.5);
INSERT INTO tb_estudantes(nome, sobrenome, turma, idade, notas)
values ("Noah", "Santos", "B", 14, 9.5);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE notas > 7;
SELECT * FROM tb_estudantes WHERE notas < 7;

UPDATE tb_estudantes SET notas = 7.5 WHERE id = 8;