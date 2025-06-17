/*
 * Crie um banco de dados para um serviço de uma loja de Material de Construção. O nome do Banco de dados deverá ter o seguinte
 * nome db_construindo_vidas. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema 
 * trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.
 * 
 * 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
 * 2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
 * 4. Insira 5 registros na tabela tb_categorias.
 * 5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 * 6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
 * 7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
 * onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).
 */

create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias (
    id BIGINT primary key auto_increment,
    nome VARCHAR(50) not null,
    descricao VARCHAR(150)
);

create table tb_produtos (
    id BIGINT primary key auto_increment,
    nome VARCHAR(100) not null,
    preco DECIMAL(8,2) not null,
    unidade_medida ENUM('unidade', 'kg', 'litro', 'm²') not null,
    validade DATE,
    id_categoria BIGINT,
    foreign key (id_categoria) references tb_categorias(id)
);

insert into 
	tb_categorias (nome, descricao)
values
	('Hidráulica', 'Produtos para sistemas de encanamento e esgoto.'),
	('Elétrica', 'Materiais elétricos como fios, tomadas e disjuntores.'),
	('Acabamento', 'Itens como pisos, azulejos, tintas e rodapés.'),
	('Ferramentas', 'Ferramentas manuais e elétricas para construção.'),
	('Estrutura', 'Materiais básicos como cimento, tijolo e areia.');


insert into
	tb_produtos (nome, preco, unidade_medida, validade, id_categoria)
values
	('Cimento CP-II 50kg', 42.90, 'kg', '2025-12-01', 5),
	('Tinta Acrílica Branca 18L', 129.90, 'litro', '2026-01-15', 3),
	('Fio Elétrico 2,5mm 100m', 115.00, 'unidade', '2027-05-10', 2),
	('Interruptor Simples', 12.50, 'unidade', '2028-10-30', 2),
	('Chave de Fenda Média', 22.00, 'unidade', '2030-01-01', 4),
	('Torneira de PVC', 18.90, 'unidade', '2027-03-01', 1),
	('Rejunte Branco 1kg', 9.90, 'kg', '2026-08-22', 3),
	('Caixa d’água 1000L', 349.00, 'unidade', '2035-12-31', 1);

select * from tb_produtos where preco > 100.00;

select * from tb_produtos where preco between 70.00 and 150.00;

select * from tb_produtos where nome like '%C%';

select p.*, c.nome as categoria, c.descricao
from tb_produtos as p
inner join tb_categorias as c on p.id_categoria = c.id;

select p.nome, p.preco, p.unidade_medida, c.nome as categoria
from tb_produtos as p
inner join tb_categorias as c on p.id_categoria = c.id
where c.id = 1;

