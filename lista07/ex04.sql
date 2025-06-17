/*
 * Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. O nome do Banco de dados deverá ter o seguinte nome
 * db_cidade_das_carnes ou cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos comercializados pela empresa.
 * O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
 * 
 * 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
 * 2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
 * 4. Insira 5 registros na tabela tb_categorias.
 * 5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 * 6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
 * 7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
 * onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
 */

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(150)
);

create table tb_produtos (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    unidade_medida ENUM('kg', 'g', 'unidade', 'pacote') NOT NULL,
    validade DATE,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

insert into 
	tb_categorias (nome, descricao) 
values
	('Carnes Bovinas', 'Cortes de carne de boi como picanha, alcatra e patinho.'),
	('Carnes Suínas', 'Cortes suínos como costelinha, lombo e pernil.'),
	('Aves', 'Frango, peito de frango, coxas e sobrecoxas.'),
	('Embutidos', 'Produtos como linguiça, salsicha, presunto e salame.'),
	('Prontos para o Churrasco', 'Espetinhos, carnes temperadas e cortes especiais para churrasco.');


insert into 
	tb_produtos (nome, preco, unidade_medida, validade, id_categoria) 
values
	('Picanha Bovina', 89.90, 'kg', '2025-07-15', 1),
	('Alcatra Fatiada', 64.50, 'kg', '2025-07-10', 1),
	('Costelinha Suína', 48.00, 'kg', '2025-07-12', 2),
	('Linguiça Toscana', 29.90, 'kg', '2025-07-08', 4),
	('Frango à Passarinho', 22.90, 'kg', '2025-07-07', 3),
	('Espetinho Misto', 54.00, 'pacote', '2025-07-20', 5),
	('Peito de Frango', 39.90, 'kg', '2025-07-05', 3),
	('Pernil Temperado', 58.00, 'kg', '2025-07-18', 2);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco BETWEEN 50.00 AND 150.00;

select * from tb_produtos where nome LIKE '%C%';

select p.*, c.nome as categoria, c.descricao
from tb_produtos as p
inner join tb_categorias as c on p.id_categoria = c.id;

select p.nome, p.preco, p.unidade_medida, c.nome as categoria
from tb_produtos AS p
inner join tb_categorias as c on p.id_categoria = c.id
where c.nome = 'Aves';

