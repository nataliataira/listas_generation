/*
 * 1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará 
 * com as informações dos colaboradores desta empresa. 
 * 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores 
 * para se trabalhar com o serviço deste RH.
 * 3. Insira nesta tabela no mínimo 5 dados (registros).
 * 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
 * 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
 * 6. Ao término atualize um registro desta tabela através de uma query de atualização.
 */

create database if not exists db_rh;

use db_rh;

create table if not exists tb_colaborador (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(150),
	salario DECIMAL(13,4) NOT NULL,
	endereco VARCHAR(200),
	telefone VARCHAR(20)
);

insert into tb_colaborador
	(id, nome, email, salario, endereco, telefone)
values 
	(1, "Luke Skywalker", "luke-sky@email.com", 4550.30, "Estrada do Deserto de Jundland, Tatooine", "+55 (11) 90000‑1977"),
	(2, "Tereza de Benguela", "terezadb@email.com", 150700.43, "Estrada da Resistência, S/N", "+55 (65) 91234‑5678"),
	(3, "Jaqueline Goes de Jesus", "jaqueline.goes@email.com", 87300.25, "Rua Ciência Genética, 125 – Salvador, BA", "+55 (71) 99666‑2020"),
	(4, "Enedina Alves Marques", "enedina.marques@email.com", 104500.00, "Av. Engenheira Preta, 350 – Curitiba, PR", "+55 (41) 98765‑1954"),
	(5, "Sônia Guimarães", "sonia.guimaraes@email.com", 113200.80, "Rua Física Aplicada, 77 – São José dos Campos, SP", "+55 (12) 99123‑1993");

select * from tb_colaborador where salario > 2000;

select * from tb_colaborador where salario < 2000;

update tb_colaborador set salario = 200.50 where id = 1;