/* Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
 * O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão 
 * estar relacionadas.
 * 
 * 1. Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
 * 2. Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
 * 4. Insira 5 registros na tabela tb_classes.
 * 5. Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a 
 * relação com a tabela tb_classes.
 * 6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
 * 7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas 
 * os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
 */

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL UNIQUE,
	descricao VARCHAR(150)
);

create table tb_personagens (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(150),
	nivel_ataque INT NOT NULL,
    nivel_defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

insert into 
	tb_classes (nome, descricao) 
values
	('Guerreiro', 'Especialista em combate corpo a corpo com alta resistência.'),
	('Mago', 'Usuário de magias poderosas, porém com baixa defesa.'),
	('Arqueiro', 'Atacante ágil e preciso com arco e flechas.'),
	('Ladrão', 'Rápido e furtivo, ideal para ataques surpresa.'),
	('Paladino', 'Combina força física com habilidades de cura e proteção.'),
	('Necromante', 'Controla os mortos e magias sombrias.'),
	('Bárbaro', 'Extremamente forte e agressivo, com defesa moderada.'),
	('Druida', 'Conecta-se com a natureza para atacar e se defender.');


insert into
	tb_personagens (nome, descricao, nivel_ataque, nivel_defesa, id_classe)
values
	('Thorgar', 'Guerreiro veterano conhecido por sua força bruta.', 80, 90, 1),
	('Elzara', 'Maga elemental que domina o fogo e o gelo.', 100, 40, 2),
	('Kael', 'Arqueiro ágil das florestas do norte.', 75, 50, 3),
	('Nyx', 'Ladrã noturna silenciosa e mortal.', 65, 45, 4),
	('Sir Galen', 'Paladino defensor da luz e da justiça.', 78, 85, 5),
	('Mortanis', 'Necromante sombrio que convoca mortos-vivos.', 95, 35, 6),
	('Ragnar', 'Bárbaro impiedoso do norte gelado.', 88, 60, 7),
	('Lunara', 'Druida guardiã das forças da natureza.', 70, 70, 8);

select * from tb_personagens where nivel_ataque > 2000;

select * from tb_personagens where nivel_ataque BETWEEN 1000 AND 2000;

select * from tb_personagens where nome LIKE '%C%';

select p.nome, p.descricao, p.nivel_ataque, p.nivel_defesa, c.nome, c.descricao
from tb_personagens as p 
inner join tb_classes as c on p.id_classe = c.id;

select p.nome, p.descricao, p.nivel_ataque, p.nivel_defesa, c.nome as classe, c.descricao
from tb_personagens as p 
inner join tb_classes as c on p.id_classe = c.id
where c.id = 5;

