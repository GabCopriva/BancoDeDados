CREATE TABLE tb_personagens (
id_personagens bigint auto_increment,
nome_personagens varchar (255) not null,
tipo varchar (255) not null,
poderataque int,
poderdefesa int,
classe_id bigint,
primary key (id)
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

<<<<<<< HEAD


=======
SELECT * FROM tb_personagens WHERE poderataque > 2000;
SELECT * FROM tb_personagens WHERE poderdefesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagens LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classes = tb_classes.id_classe WHERE tb_classes.nome_classe = "Guerreiro"
>>>>>>> b15fa12ccb3a9473f45d27e83a068a31205ea6c9
