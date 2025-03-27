/*
EXERCICO 1
*/
-- CRIANDO  DATA BASE (DDL)
create database sprint1;
-- UTILIZANDO DATA BASE
use sprint1;
/*
CRIANDO TABELA ATLETA COM A ESTRUTURA COM SEUS TIPOS  (DDL)
*/
CREATE TABLE atleta (
    idAtleta INT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

-- INSERINDO DADOS NA TABELA ATLETA  (DML)
insert into atleta( idAtleta,nome, modalidade, qtdMedalha) 
values ( 1,'BILL', 'Natação', 2),
       ( 2,'HEBERT', 'Basquete', 1),
       ( 3,'CESAR', 'Basquete', 3),
       ( 4,'ENZO', 'Basquete', 2),
       ( 5,'RAFAEL', 'Volei', 1),
       ( 6,'PEDRO', 'Volei', 1),
       ( 7,'ERICK', 'Volei', 2),
       ( 8,'AOIK', 'Futebol', 2),
       ( 9,'AMANDA', 'Natação', 2),
       ( 10,'JOAO D', 'Basquete', 1),
       ( 11,'ANA', 'Basquete', 3),
       ( 12,'ARTHUR', 'Basquete', 2),
       ( 13,'KAIO', 'Volei', 1),
       ( 14,'ENZO G', 'Volei', 1),
       ( 15,'DAVI L', 'Volei', 2),
       ( 16,'DAVI A', 'Futebol', 2),       
       ( 17,'JOÃOZINHO', 'Natação', 2),
       ( 18,'BIANCA', 'Basquete', 1),
       ( 19,'CAIO', 'Basquete', 3),
       ( 20,'DAVID', 'Basquete', 2),
       ( 21,'ENZO K', 'Volei', 1),
       ( 22,'FABIO', 'Volei', 1),
       ( 23,'GABRIEL', 'Volei', 2),
       ( 24,'INDI', 'Futebol', 2),
       ( 25,'MANUEL', 'Natação', 2),
       ( 26,'NATHA', 'Basquete', 1);
       

-- EXIBIR TODAS AS COLUNAS E SEUS DADOS
select * from atleta;
-- EXIBIR AS COLUNAS CITADAS
select nome, qtdMedalha from atleta;
-- Exibir TODAS AS COLUNAS ONDE A MODALIDADE É VOLEI
select * from atleta where modalidade = 'volei';
-- Exibir os dados da tabela ordenados pela modalidade.
select * from atleta order by  modalidade;
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from atleta order by  qtdMedalha desc;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta where nome like '%s%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com a letra A.
select * from atleta where nome like 'a%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra O.
select * from atleta where nome like '%o';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from atleta where nome like '%r_';
-- Eliminar a tabela.
drop table atleta;

/* 
apesar de o exercico não pedir irei excluir o database para que possa funcionar o exercico 2
*/ 
drop database sprint1;

/*
EXERCICO 2
*/
-- CRIANDO  DATA BASE (DDL)
create database sprint1;
-- UTILIZANDO DATA BASE
use sprint1;
/*
CRIANDO TABELA ATLETA COM A ESTRUTURA COM SEUS TIPOS  (DDL)
*/
CREATE TABLE Musica (
    idMusica INT PRIMARY KEY,
    artista VARCHAR(40),
    titulo VARCHAR(40),
    genero VARCHAR(40)	
);

-- INSERINDO DADOS NA TABELA ATLETA  (DML)
insert into Musica(  idMusica,   artista,    titulo, genero) 
            values( 1        ,    'BILL', 'rock-bb', "rock"),
                  ( 2        ,    'BILL', 'rock-bb', "rock"),
                  ( 3        ,    'BILL', 'rock-bb', "rock"),
                  ( 4        ,    'BILL', 'rock-bb', "rock"),
                  ( 5        ,    'BILL', 'rock-bb', "rock"),
                  ( 6        ,    'BILL', 'rock-bb', "rock"),
                  ( 7        ,    'BILL', 'rock-bb', "rock"),
                  ( 8        ,    'DAVI', 'davi-ss', "POP"),
                  ( 9        ,    'DAVI', 'davi-ss', "POP"),
                  ( 10       ,    'DAVI', 'davi-ss', "POP"),
                  ( 11       ,    'DAVI', 'davi-ss', "POP"),
                  ( 12       ,    'DAVI', 'davi-ss', "POP"),
                  ( 13       ,    'DAVI', 'davi-ss', "POP"),
                  ( 14       ,    'DAVI', 'davi-ss', "POP"),
                  ( 15       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 16       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 17       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 18       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 19       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 20       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 21       ,    "Enzo",   "opaaa","AXÊ"),
                  ( 22       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 23       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 24       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 25       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 26       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 27       ,    "BILL",   "MUDEI","AXÊ"),
                  ( 28       ,    "BILL",   "MUDEI","AXÊ")
;

-- EXIBIR TODAS AS COLUNAS E SEUS DADOS
select * from Musica;
-- EXIBIR AS COLUNAS CITADAS
select titulo,artista from Musica;
-- EXIBIR AS COLUNAS CITADAS
select genero from Musica;
-- EXIBIR AS COLUNAS CITADAS ordenadas
select * from Musica order by titulo;
-- EXIBIR AS COLUNAS CITADAS ordenadas
select * from Musica order by artista desc ;
-- Exibir os dados da tabela, das Musica cujo titulo comece com a letra r.
select * from Musica where titulo like 'r%';
-- Exibir os dados da tabela, das Musica cujo artista termine com a letra O.
select * from Musica where artista like '%O';
-- Exibir os dados da tabela, das Musica cujo titulo comece com qualquer letra e a segunda sejá X.
select * from Musica where genero like '_X%';
-- Exibir os dados da tabela, das Musica cujo titulo termine com qualquer letra e a segunda sejá X.
select * from Musica where titulo like '%E_';
-- excluindo tabela
drop table Musica;
/*
para normalização
*/
drop database sprint1;

/*
exercicio 3
*/
-- criar tabela
CREATE TABLE Filme (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

