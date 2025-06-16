/*
 * 1. Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações
 * dos produtos deste e-commerce. 
 * 2. Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se 
 * trabalhar com o serviço deste e-commerce.
 * 3. Insira nesta tabela no mínimo 8 dados (registros).
 * 4. Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
 * 5. Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
 * 6. Ao término atualize um registro desta tabela através de uma query de atualização.
 */

create database if not exists db_ecommerce;

use db_ecommerce;

create table if not exists tb_produto (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	material VARCHAR(100) NOT NULL,
	preco DECIMAL(13,4) NOT NULL,
	altura VARCHAR(30),
	largura VARCHAR(30) NOT NULL,
	comprimento VARCHAR(30) NOT NULL,
	criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into tb_produto
	(id, nome, material, preco, altura, largura, comprimento)
values
	(1, "Cadeira Girafa", "Tauari maciço", 2258.00, "79cm", "39cm", "44cm"),
	(2, "Jogo Cream & Sugar Sig Vermelho", "Cerâmica", 419.90, "8cm", "10cm", "10cm"),
	(3, "Fronha Listras Bold Areia 200 Fios", "Algodão", 32.90, "", "70cm", "50cm"),
	(4, "Luminária de Chão Karin Dourado", "Metal", 556.11, "155cm", "16cm", "23cm"),
	(5, "Cortina Rústica Degradê Areia", "Poliester", 382.90, "", "250cm", "420cm"),
	(6, "Bandeja Espelhada Luxo Dourada", "Metal e Vidro", 189.90, "5cm", "30cm", "20cm"),
	(7, "Colcha Matelassê Azul Noite Queen", "Algodão", 299.99, "", "240cm", "260cm"),
	(8, "Vaso Decorativo Luna Cinza", "Cimento", 74.50, "18cm", "12cm", "12cm");

select * from tb_produto where preco > 500;

select * from tb_produto where preco < 500;

update tb_produto set material = "Liga metalica" where id = 4;