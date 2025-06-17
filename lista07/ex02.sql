/*
 * Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
 * O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas 
 * e tb_categorias, que deverão estar relacionadas.
 * 
 * 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
 * 2. Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
 * 4. Insira 5 registros na tabela tb_categorias.
 * 5. Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 * 6. Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
 * 7. Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
 * onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
 */

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(150)
);

create table tb_pizzas (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	sabor VARCHAR(50),
	valor DECIMAL(8,4),
	borda ENUM('Tradicional', 'Recheada Catupiry', 'Recheada Cheddar', 'Sem Borda') NOT NULL,
	tamanho ENUM('Pequena', 'Média', 'Grande', 'Família') NOT NULL,
    id_categorias BIGINT,
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

insert into
	tb_categorias (nome, descricao)
values
	('Salgada', 'Pizzas tradicionais com ingredientes salgados como calabresa, queijo e presunto.'),
	('Doce', 'Pizzas doces com coberturas como chocolate, morango, banana e leite condensado.'),
	('Vegetariana', 'Pizzas sem carne, com vegetais, queijos e molhos especiais.'),
	('Vegana', 'Pizzas sem ingredientes de origem animal.'),
	('Especial', 'Pizzas gourmet ou com combinações exclusivas da casa.');


insert into
	tb_pizzas (sabor, valor, borda, tamanho, id_categorias)
values
	('Calabresa', 39.90, 'Tradicional', 'Média', 1),
	('Frango com Catupiry', 44.90, 'Recheada Catupiry', 'Grande', 1),
	('Quatro Queijos', 42.50, 'Recheada Cheddar', 'Média', 1),
	('Chocolate com Morango', 37.00, 'Sem Borda', 'Média', 2),
	('Banana com Canela', 34.00, 'Tradicional', 'Pequena', 2),
	('Marguerita', 38.00, 'Tradicional', 'Grande', 3),
	('Vegana de Palmito', 45.00, 'Sem Borda', 'Média', 4),
	('Brie com Damasco', 52.00, 'Recheada Catupiry', 'Família', 5);

select * from tb_pizzas where valor > 45.00;

select * from tb_pizzas where valor BETWEEN 50.00 AND 100.00;

select * from tb_pizzas where sabor LIKE '%M%';

select * from tb_pizzas as p
inner join tb_categorias as c on p.id_categorias = c.id;

select p.sabor, p.valor, p.borda, p.tamanho, c.nome as categoria, c.descricao
from tb_pizzas as p
inner join tb_categorias as c on p.id_categorias = c.id
where c.id = 2;