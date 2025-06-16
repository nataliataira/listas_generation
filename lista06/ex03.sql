/*
 * 1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
 * informações dos estudantes deste registro dessa escola. 
 * 2. Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
 * relevantes dos estudantes para se trabalhar com o serviço dessa escola.
 * 3. Insira nesta tabela no mínimo 8 dados (registros).
 * 4. Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
 * 5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
 * 6. Ao término atualize um registro desta tabela através de uma query de atualização.
 */

create database if not exists db_escola;

use db_escola;

create table if not exists tb_estudante (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(150) UNIQUE,
	endereco VARCHAR(200) NOT NULL,
	telefone VARCHAR(20),
	nota DECIMAL(4,2),
	criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into tb_estudante
	(id, nome, email, endereco, telefone, nota)
values
	(1, "Carlos Bezerra Medici", "carlosbezerra55@email.com", "Rua Fidalga, 45", "+55(11)98616-3346", 10.00),
	(2, "Pedro Pascal", "pedro-p156@email.com", "Avenida Corifeu, 1233","+55(11)99554-0955", 6.5),
	(3, "Marcos Queirós Marques", "marcoqm3@email.com", "Rua Osvaldo Cruz, 43", "+55(11)99614-2044", 7.0),
	(4, "Marta Meireles Sá", "martamsa@email.com", "Rua Madureira, 50", "+55(11)9475-2033", 6.5),
	(5, "Caio Medeiros Prates", "camepra@email.com", "Rua Jacinto Mendes, 156", "+55(11)98364-7843", 4.5),
	(6, "Kaio Meireles Sá", "kaiomsa@email.com", "Rua Madureira, 50", "+55(11)9475-2033", 9.75),
	(7, "Marcio Junqueira Silva", "silva-km@email.com", "Av. Independencia, 1200", "+55(11)94432-2033", 2.5);

select * from tb_estudante where nota > 7.0;

select * from tb_estudante where nota < 7.0;

update tb_estudante set nota = 9.75 where id = 1;