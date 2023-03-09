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



