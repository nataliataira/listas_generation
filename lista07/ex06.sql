/*
 * Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco de dados deverá ter o seguinte nome 
 * db_curso_da_minha_vida. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema 
 * trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.
 * 
 * 1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
 * 2. Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
 * 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
 * 4. Insira 5 registros na tabela tb_categorias.
 * 5. Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
 * 6. Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
 * 7. Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
 * 8. Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
 * 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
 * 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, 
 * onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
 */

create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
    id BIGINT primary key auto_increment,
    nome VARCHAR(50) not null,
    descricao VARCHAR(150)
);

create table tb_cursos (
    id BIGINT primary key auto_increment,
    nome VARCHAR(100) not null,
    preco DECIMAL(8,2) not null,
    carga_horaria INT not null,
    nivel ENUM('Iniciante', 'Intermediário', 'Avançado') not null,
    id_categoria BIGINT,
    foreign key (id_categoria) references tb_categorias(id)
);

insert into
	tb_categorias (nome, descricao)
values
	('Programação', 'Cursos voltados ao desenvolvimento de software e lógica de programação.'),
	('Design', 'Cursos de design gráfico, UI/UX e ferramentas como Figma e Photoshop.'),
	('Negócios', 'Cursos sobre gestão, empreendedorismo e administração.'),
	('Marketing', 'Cursos de marketing digital, SEO, redes sociais e estratégias.'),
	('Dados', 'Cursos de análise de dados, BI, SQL e ciência de dados.');


insert into
	tb_cursos (nome, preco, carga_horaria, nivel, id_categoria)
values
	('Introdução à Programação', 499.90, 40, 'Iniciante', 1),
	('Java Completo', 849.00, 60, 'Intermediário', 1),
	('Design Gráfico com Photoshop', 699.00, 45, 'Intermediário', 2),
	('UX/UI com Figma', 599.90, 50, 'Intermediário', 2),
	('Gestão de Pequenos Negócios', 549.00, 30, 'Avançado', 3),
	('Marketing Digital para Iniciantes', 479.00, 25, 'Iniciante', 4),
	('Power BI com Excel', 899.00, 55, 'Avançado', 5),
	('SQL para Análise de Dados', 620.00, 35, 'Intermediário', 5);

select * from tb_cursos where preco > 500.00;

select * from tb_cursos where preco between 600.00 and 1000.00;

select * from tb_cursos where nome like '%J%';

select c.*, cat.nome as categoria, cat.descricao
from tb_cursos as c
inner join tb_categorias as cat on c.id_categoria = cat.id;

select c.nome, c.preco, c.carga_horaria, cat.nome as categoria
from tb_cursos as c
inner join tb_categorias as cat on c.id_categoria = cat.id
where cat.id = 1;

