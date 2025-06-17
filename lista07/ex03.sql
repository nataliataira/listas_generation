/* Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
 * O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos 
 * e tb_categorias, que deverão estar relacionadas.
 * 
 * 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
 * 2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
 * 4. Insira 5 registros na tabela tb_categorias.
 * 5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 * 6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
 * 7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde 
 * traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
 */

create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL UNIQUE,
	descricao VARCHAR(150)
);

create table tb_produtos (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	valor DECIMAL(8,4),
	laboratorio VARCHAR(100) NOT NULL,
	principio_ativo VARCHAR(50),
    id_categorias BIGINT,
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id)
);

insert into 
	tb_categorias (nome, descricao) 
values
	('Analgésicos', 'Medicamentos usados para aliviar dores.'),
	('Antibióticos', 'Medicamentos para tratar infecções bacterianas.'),
	('Anti-inflamatórios', 'Reduzem inflamações e dores associadas.'),
	('Antialérgicos', 'Tratamento de reações alérgicas.'),
	('Vitaminas e Suplementos', 'Suplementação de vitaminas e minerais.');


insert into 
	tb_produtos (nome, valor, laboratorio, principio_ativo, id_categorias) 
values
	('Dipirona 500mg', 5.2000, 'Neo Química', 'Dipirona Sódica', 1),
	('Paracetamol 750mg', 7.5000, 'EMS', 'Paracetamol', 1),
	('Amoxicilina 500mg', 15.9000, 'Medley', 'Amoxicilina', 2),
	('Azitromicina 500mg', 22.8000, 'Aché', 'Azitromicina', 2),
	('Ibuprofeno 400mg', 10.4000, 'Bayer', 'Ibuprofeno', 3),
	('Nimesulida 100mg', 8.7500, 'EMS', 'Nimesulida', 3),
	('Loratadina 10mg', 6.3000, 'Neo Química', 'Loratadina', 4),
	('Vitamina C 500mg', 12.0000, 'Sanofi', 'Ácido Ascórbico', 5);

select * from tb_produtos where valor > 50.00;

select * from tb_produtos where valor BETWEEN 5.00 AND 60.00;

select * from tb_produtos where nome LIKE '%c%';

select * from tb_produtos as p
inner join tb_categorias as c on p.id_categorias = c.id;

select p.nome, p.valor, p.laboratorio, p.principio_ativo, c.nome as categoria
from tb_produtos as p
inner join tb_categorias as c on p.id_categorias = c.id
where c.id = 1;
