create database biblioteca;

use biblioteca;

create table autor
(
id             int primary key,
nome           varchar(50),
nacionalidade  varchar(20));

create table tema
(
id             int primary key,
descricao      varchar(20));

create table livro
(
id              int primary key,
titulo          varchar(50),
ano_publicacao  int,
autor           int,
tema            int);

-- 1o alterar as tabelas para que todas as chaves primarias seja auto increment
alter table autor modify id int auto_increment;
alter table tema modify id int auto_increment;
alter table livro modify id int auto_increment;




-- 2o. o auto increment do autor começa a partir do numero 100, tema a partir de 1000 e livro a partir de 10000
alter table autor auto_increment 100;
alter table tema auto_increment 1000;
alter table livro auto_increment 10000;


-- 3o. renomear as colunas que são foreign key para o formato correto fktabela
alter table livro add constraint fk_autor foreign key (autor) references autor(id);
alter table livro rename column autor to fk_autor; 
alter table livro add constraint fk_tema foreign key (tema) references tema(id);
alter table livro rename column tema to fk_tema; 
desc livro;
-- 4o. inserir dados na tabela livro
insert into autor 	(id			,nome						, nacionalidade) values
					(100		, 'Miguel de Cervantes'		, 'Espanha'),
					(101		, 'Liev Tolstói'			, 'Rússia'),
					(102		, 'Jane Austen'				, 'Inglaterra'),
					(103		, 'George Orwell'			, 'Inglaterra'),
					(104		, 'J.R.R. Tolkien'			, 'África do Sul'),
					(105		, 'F. Scott Fitzgerald'		, 'EUA'),
					(106		, 'Gabriel García Márquez'	, 'Colômbia'),
					(107		, 'Fiódor Dostoiévski'		, 'Rússia'),
					(108		, 'J.D. Salinger'			, 'EUA'),
					(109		, 'Herman Melville'			, 'EUA'),
					(110		, 'Harper Lee'				, 'EUA'),
					(111		, 'Dan Brown'				, 'EUA'),
					(112		, 'Victor Hugo'				, 'França'),
					(113		, 'Paulo Coelho'			, 'Brasil'),
					(114		, 'Mary Shelley'			, 'Inglaterra'),
					(115		, 'Bram Stoker'				, 'Irlanda'),
					(116		, 'Lewis Carroll'			, 'Inglaterra'),
					(117		, 'C.S. Lewis'				, 'Irlanda'),
					(118		, 'Markus Zusak'			, 'Austrália');
select * from autor;
alter table tema modify descricao varchar(30);
insert into tema 	(descricao) values
					('Aventura'),
					('Histórico'),
					('Romance'),
					('Distopia'),
					('Fantasia'),
					('Clássico'),
					('Marítimo'),
					('Mistério'),
					('Drama'),
					('Terror'),
					('Infantil'),
					('Segunda Guerra Mundial'),
					('Histórico');
select * from tema;
insert into livro 	(titulo								,ano_publicacao	,fk_autor	,fk_tema) values 
					('Dom Quixote'						, 1605			, 100		, 1000),
					('Guerra e Paz'						, 1869			, 101		, 1001),
					('Orgulho e Preconceito'			, 1813			, 102		, 1002),
					('1984'								, 1949			, 103		, 1003),
					('O Senhor dos Anéis'				, 1954			, 104		, 1004),
					('O Grande Gatsby'					, 1925			, 105		, 1005),
					('Cem Anos de Solidão'				, 1967			, 106		, 1001),
					('Crime e Castigo'					, 1866			, 107		, 1002),
					('O Apanhador no Campo de Centeio'	, 1951			, 108		, 1005),
					('Moby Dick'						, 1851			, 109		, 1006),
					('O Sol é Para Todos'				, 1960			, 110		, 1003),
					('A Revolução dos Bichos'			, 1945			, 103		, 1003),
					('O Código Da Vinci'				, 2003			, 111		, 1007),
					('Os Miseráveis'					, 1862			, 112		, 1008),
					('O Alquimista'						, 1988			, 113		, 1000),
					('Frankenstein'						, 1818			, 114		, 1009),
					('Drácula'							, 1897			, 115		, 1009),
					('Alice no País das Maravilhas'		, 1865			, 116		, 1010),
					('As Crônicas de Nárnia'			, 1950			, 117		, 1004),
					('A Menina que Roubava Livros'		, 2005			, 118		, 1011);
/*
('Dom Quixote', 1605, 100, 1000),
('Guerra e Paz', 1869, 101, 1001),
('Orgulho e Preconceito', 1813, 102, 1002),
('1984', 1949, 103, 1003),
('O Senhor dos Anéis', 1954, 104, 1004),
('O Grande Gatsby', 1925, 105, 1005),
('Cem Anos de Solidão', 1967, 106, 1001),
('Crime e Castigo', 1866, 107, 1002),
('O Apanhador no Campo de Centeio', 1951, 108, 1005),
('Moby Dick', 1851, 109, 1006),
('O Sol é Para Todos', 1960, 110, 1003),
('A Revolução dos Bichos', 1945, 103, 1003),
('O Código Da Vinci', 2003, 111, 1007),
('Os Miseráveis', 1862, 112, 1008),
('O Alquimista', 1988, 113, 1000),
('Frankenstein', 1818, 114, 1009),
('Drácula', 1897, 115, 1009),
('Alice no País das Maravilhas', 1865, 116, 1010),
('As Crônicas de Nárnia', 1950, 117, 1004),
('A Menina que Roubava Livros', 2005, 118, 1011

*/

-- 5o. inserir dados na tabela temas
/*
('Aventura'),
('Histórico'),
('Romance'),
('Distopia'),
('Fantasia'),
('Clássico'),
('Marítimo'),
('Mistério'),
('Drama'),
('Terror'),
('Infantil'),
('Segunda Guerra Mundial'),
('Histórico')
*/
-- 6o. inserir dados na table autor
/*
(100, 'Miguel de Cervantes', 'Espanha'),
(101, 'Liev Tolstói', 'Rússia'),
(102, 'Jane Austen', 'Inglaterra'),
(103, 'George Orwell', 'Inglaterra'),
(104, 'J.R.R. Tolkien', 'África do Sul'),
(105, 'F. Scott Fitzgerald', 'EUA'),
(106, 'Gabriel García Márquez', 'Colômbia'),
(107, 'Fiódor Dostoiévski', 'Rússia'),
(108, 'J.D. Salinger', 'EUA'),
(109, 'Herman Melville', 'EUA'),
(110, 'Harper Lee', 'EUA'),
(111, 'Dan Brown', 'EUA'),
(112, 'Victor Hugo', 'França'),
(113, 'Paulo Coelho', 'Brasil'),
(114, 'Mary Shelley', 'Inglaterra'),
(115, 'Bram Stoker', 'Irlanda'),
(116, 'Lewis Carroll', 'Inglaterra'),
(117, 'C.S. Lewis', 'Irlanda'),
(118, 'Markus Zusak', 'Austrália');
*/ 
-- 7o. criar as forenign keys que voces julgarem necessário


-- 8o. permitir na nacionalidade somente brasileiro ou estrangeiro
update autor set nacionalidade = "estrangeiro" where nacionalidade <> "Brasil";
update autor set nacionalidade = "brasileiro" where nacionalidade = "Brasil";
alter table autor modify column nacionalidade varchar(20) check ( nacionalidade in("brasileiro","estrangeiro"));


-- 9o. apagar os autores estrangeiros cuja nome contenha a letra A
delete from livro where fk_autor in ( select id from autor where nome like "a" );


-- 10o. não permitir que na tabela tema haja temas duplicados


update livro set fk_tema = (
    select min(id) from tema where tema.descricao = (
        select descricao from tema where tema.id = livro.fk_tema
    )
) where fk_tema in (
    select id from tema where descricao in (
        select descricao from tema group by descricao having count(*) > 1
    )
);

delete tema from tema 
inner join (
	select max(id) id from tema where descricao in (
		select descricao from tema group by descricao having count(*) > 1)
	) as x on x.id = tema.id;
/*
delete from tema where id in (
	select max(id) from tema where descricao in (
		select descricao from tema group by descricao having count(*) > 1
	)
);

delete from tema where id = (
	select max(id) from tema where descricao in (
		select descricao from tema group by descricao having count(*) > 1
	) LIMIT 1
);

delete tema from tema 
inner join (
	select max(id) id from tema where descricao in (
		select descricao from tema group by descricao having count(*) > 1)
	) as x on x.id = tema.id;



/*
CREATE TEMPORARY TABLE temas_unicos AS
SELECT MIN(id) AS id, descricao
FROM tema
GROUP BY descricao;

UPDATE livro 
SET fk_tema = (
    SELECT id 
    FROM temas_unicos 
    WHERE temas_unicos.descricao = (
        SELECT descricao FROM tema WHERE tema.id = livro.fk_tema
    )
);

DELETE FROM tema 
WHERE id NOT IN (SELECT id FROM temas_unicos);

DROP TEMPORARY TABLE temas_unicos;
*/
alter table tema modify column descricao varchar(30) unique;
desc tema;
drop database biblioteca;
