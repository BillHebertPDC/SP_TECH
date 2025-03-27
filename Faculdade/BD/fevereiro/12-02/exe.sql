create database sprint1;
use sprint1;
/*
EXERCICO 1


Criar a tabela chamada Atleta para conter os dados: 
    idAtleta (int e chave primária da tabela), 
    nome (varchar, tamanho 40), 
    modalidade (varchar, tamanho 40), 
    qtdMedalha (int, representando a quantidade de medalhas que o atleta possui)
(DDL)
*/
CREATE TABLE atleta (
    idAtleta INT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);
-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade (DML)
insert into atleta  ( idAtleta  , nome      , modalidade    , qtdMedalha) 
            values  ( 1         ,'BILL'     , 'Natação'     , 2),
                    ( 2         ,'HEBERT'   , 'Basquete'    , 1),
                    ( 3         ,'CESAR'    , 'Basquete'    , 3),
                    ( 4         ,'ENZO'     , 'Basquete'    , 2),
                    ( 5         ,'RAFAEL'   , 'Volei'       , 1),
                    ( 6         ,'PEDRO'    , 'Volei'       , 1),
                    ( 7         ,'ERICK'    , 'Volei'       , 2),
                    ( 8         ,'AOIK'     , 'Futebol'     , 2),
                    ( 9         ,'AMANDA'   , 'Natação'     , 2),
                    ( 10        ,'JOAO D'   , 'Basquete'    , 1),
                    ( 11        ,'ANA'      , 'Basquete'    , 3),
                    ( 12        ,'ARTHUR'   , 'Basquete'    , 2),
                    ( 13        ,'KAIO'     , 'Volei'       , 1),
                    ( 14        ,'ENZO G'   , 'Volei'       , 1),
                    ( 15        ,'DAVI L'   , 'Volei'       , 2),
                    ( 16        ,'DAVI A'   , 'Futebol'     , 2),       
                    ( 17        ,'JOÃOZINHO', 'Natação'     , 2),
                    ( 18        ,'BIANCA'   , 'Basquete'    , 1),
                    ( 19        ,'CAIO'     , 'Basquete'    , 3),
                    ( 20        ,'DAVID'    , 'Basquete'    , 2),
                    ( 21        ,'ENZO K'   , 'Volei'       , 1),
                    ( 22        ,'FABIO'    , 'Volei'       , 1),
                    ( 23        ,'GABRIEL'  , 'Volei'       , 2),
                    ( 24        ,'INDI'     , 'Futebol'     , 2),
                    ( 25        ,'MANUEL'   , 'Natação'     , 2),
                    ( 26        ,'NATHA'    , 'Basquete'    , 1);
        

-- Exibir todos os dados da tabela (DQL)
select * from atleta;
-- Exibir apenas os nomes e quantidade de medalhas dos atletas (DQL)
select nome, qtdMedalha from atleta;
-- Exibir apenas os dados dos atletas de uma determinada modalidade (DQL)
select * from atleta where modalidade = 'volei';
-- Exibir os dados da tabela ordenados pela modalidade. (DQL)
select * from atleta order by  modalidade;
-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente. (DQL)
select * from atleta order by  qtdMedalha desc;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s  (DQL)
select * from atleta where nome like '%s%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra. (DQL)
select * from atleta where nome like 'a%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o. (DQL)
select * from atleta where nome like '%o';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r. (DQL)
select * from atleta where nome like '%r_';
-- Eliminar a tabela. (DDL)
drop table atleta;
/*
EXERCICO 2

Criar a tabela chamada Musica para conter os dados: 
idMusica, sendo que idMusica é a chave primária da tabela.
titulo  (tamanho 40),
artista (tamanho 40), 
genero  (tamanho 40), 
(DDL)
*/
CREATE TABLE Musica (
    idMusica INT PRIMARY KEY,
    artista VARCHAR(40),
    titulo VARCHAR(40),
    genero VARCHAR(40)	
);

-- INSERINDO DADOS NA TABELA ATLETA  (DML)
insert into Musica(  idMusica,   artista,     titulo, genero) 
            values( 1        ,    'BILL',  'rock-b1', "rock"),
                  ( 2        ,    'BILL',  'rock-b2', "rock"),
                  ( 3        ,    'BILL',  'rock-b3', "rock"),
                  ( 4        ,    'BILL',  'rock-b4', "rock"),
                  ( 5        ,    'BILL',  'rock-b5', "rock"),
                  ( 6        ,    'BILL',  'rock-b6', "rock"),
                  ( 7        ,    'BILL',  'rock-bb', "rock"),
                  ( 8        ,    'DAVI',  'davi-s1', "POP"),
                  ( 9        ,    'DAVI',  'davi-s2', "POP"),
                  ( 10       ,    'DAVI',  'davi-s3', "POP"),
                  ( 11       ,    'DAVI',  'davi-s4', "POP"),
                  ( 12       ,    'DAVI',  'davi-s5', "POP"),
                  ( 13       ,    'DAVI',  'davi-s6', "POP"),
                  ( 14       ,    'DAVI',  'davi-ss', "POP"),
                  ( 15       ,    "Enzo",   "opaaaa", "AXÊ"),
                  ( 16       ,    "Enzo",    "opaaa", "AXÊ"),
                  ( 17       ,    "Enzo",     "opaa", "AXÊ"),
                  ( 18       ,    "Enzo",      "opa", "AXÊ"),
                  ( 19       ,    "Enzo",       "op", "AXÊ"),
                  ( 20       ,    "Enzo",        "o", "AXÊ"),
                  ( 21       ,    "Enzo",      "ops", "AXÊ"),
                  ( 22       ,    "BILL",   "MUDEI1", "AXÊ"),
                  ( 23       ,    "BILL",   "MUDEI2", "AXÊ"),
                  ( 24       ,    "BILL",   "MUDEI3", "AXÊ"),
                  ( 25       ,    "BILL",   "MUDEI4", "AXÊ"),
                  ( 26       ,    "BILL",   "MUDEI5", "AXÊ"),
                  ( 27       ,    "BILL",   "MUDEI6", "AXÊ"),
                  ( 28       ,    "BILL",    "MUDEI", "AXÊ")
;

-- Exibir todos os dados da tabela (DQL)
select * from Musica;
-- Exibir apenas os títulos e os artistas das músicas (DQL)
select titulo,artista from Musica;
-- Exibir apenas os dados das músicas de um determinado gênero. (DQL)
select * from Musica where genero = "rock" ;
-- Exibir apenas os dados das músicas de um determinado artista. (DQL)
select * from Musica where artista = "BILL" ;
-- Exibir os dados da tabela ordenados pelo título da música. (DQL)
select * from Musica order by titulo;
-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente (DQL)
select * from Musica order by artista desc ;
-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra. (DQL)
select * from Musica where titulo like 'r%';
-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra. (DQL)
select * from Musica where artista like '%O';
-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra. (DQL)
select * from Musica where genero like '_X%';
-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra (DQL)
select * from Musica where titulo like '%E_';
-- excluindo tabela (DDL)
drop table Musica;
/*
exercicio 3

Criar a tabela chamada Filme para conter os dados:
idFilme, sendo que idFilme é a chave primária da tabela,
título  (tamanho 50),
genero  (tamanho 40),
diretor (tamanho 40),
 (DDL)
*/
-- criar tabela
CREATE TABLE Filme (
    idFilme INT PRIMARY KEY,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);
-- inserir valores  (DML)
insert into Filme(    idFilme,   diretor,     titulo, genero) 
            values( 1        ,    'BILL',  'rock-b1', "TERROR"),
                  ( 2        ,    'BILL',  'rock-b2', "TERROR"),
                  ( 3        ,    'BILL',  'rock-b3', "TERROR"),
                  ( 4        ,    'BILL',  'rock-b4', "TERROR"),
                  ( 5        ,    'BILL',  'rock-b5', "TERROR"),
                  ( 6        ,    'BILL',  'rock-b6', "TERROR"),
                  ( 7        ,    'BILL',  'rock-bb', "TERROR"),
                  ( 8        ,    'DAVI',   'davi-s', "COMEDIA"),
                  ( 9        ,    'DAVI',  'davi-s1', "COMEDIA"),
                  ( 10       ,    'DAVI',  'davi-s2', "COMEDIA"),
                  ( 11       ,    'DAVI',  'davi-s3', "COMEDIA"),
                  ( 12       ,    'DAVI',  'davi-s4', "COMEDIA"),
                  ( 13       ,    'DAVI',  'davi-s5', "COMEDIA"),
                  ( 14       ,    'DAVI',  'davi-ss', "COMEDIA"),
                  ( 15       ,    "Enzo",   "opaaaa", "ROMANCE"),
                  ( 16       ,    "Enzo",    "opaaa", "ROMANCE"),
                  ( 17       ,    "Enzo",     "opaa", "ROMANCE"),
                  ( 18       ,    "Enzo",      "opa", "ROMANCE"),
                  ( 19       ,    "Enzo",       "op", "ROMANCE"),
                  ( 20       ,    "Enzo",        "o", "ROMANCE"),
                  ( 21       ,    "Enzo",      "ops", "ROMANCE"),
                  ( 22       ,    "BILL",   "MUDEI1", "SUSPENCE"),
                  ( 23       ,    "BILL",   "MUDEI2", "SUSPENCE"),
                  ( 24       ,    "BILL",   "MUDEI3", "SUSPENCE"),
                  ( 25       ,    "BILL",   "MUDEI4", "SUSPENCE"),
                  ( 26       ,    "BILL",   "MUDEI5", "SUSPENCE"),
                  ( 27       ,    "BILL",   "MUDEI6", "SUSPENCE"),
                  ( 28       ,    "BILL",    "MUDEI", "SUSPENCE")
;
-- Exibir todos os dados da tabela. (DQL)
select * from Filme;
-- Exibir apenas os títulos e os diretores dos filmes. (DQL)
select titulo,diretor from Filme;
-- Exibir apenas os dados dos filmes de um determinado gênero. (DQL)
select * from Filme where genero = "SUSPENCE";
-- Exibir apenas os dados dos filmes de um determinado diretor. (DQL)
select * from Filme where diretor = "BILL";
-- Exibir os dados da tabela ordenados pelo título do filme. (DQL)
select * from Filme order by titulo;
-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente (DQL)
select * from Filme order by diretor desc;
-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra (DQL)
select * from Filme where titulo like "r%";
-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra. (DQL)
select * from Filme where diretor like "%L";
-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra. (DQL)
select * from Filme where genero like "_E%";
-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra. (DQL)
select * from Filme where titulo like "%E_";
-- Elimine a tabela  (DDL)
drop table Filme;
/*
exercicio 4

Criar a tabela chamada Professor para conter os dados: 
idProfessor, sendo que idProfessor é a chave primária da tabela.
nome (tamanho 50),
especialidade (tamanho 40),
dtNasc (date),
Exemplo do campo data: ‘AAAA-MM-DD’ - ‘1983-10-13’.
 (DDL)
*/
CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc date
);
-- inserir valores  (DML)
insert into Professor   ( idProfessor   ,        nome,   especialidade, dtNasc) 
            values      ( 1             ,      'BILL',  'rock-b1'     , "2001-10-20"),
                        ( 2             ,      'ENZO',  'rock-b2'     , "2002-08-10"),
                        ( 3             ,     'CESAR',  'rock-b3'     , "1999-01-20"),
                        ( 4             ,    'FELIPE',  'rock-b4'     , "2000-07-13")                        
;
-- Exibir todos os dados da tabela. (DQL)
select * from Professor;
-- Exibir apenas as especialidades dos professores (DQL)
select especialidade from Professor;
-- Exibir apenas os dados dos professores de uma determinada especialidade. (DQL)
select * from Professor where especialidade = "rock-b1";
-- Exibir os dados da tabela ordenados pelo nome do professor. (DQL)
select * from Professor order by nome;
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente (DQL)
select * from Professor order by dtNasc desc;
-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra. (DQL)
select * from Professor where nome like "B%";
-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra. (DQL)
select * from Professor where nome like "%E";
-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra. (DQL)
select * from Professor where nome like "_E%";
-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra. (DQL)
select * from Professor where nome like "%Z_";
-- Elimine a tabela. (DDL)
drop table Professor;
/*
Exercicio 5
Criar a tabela chamada Curso para conter os dados: 
idCurso sendo que idCurso é a chave primária da tabela,
nome (tamanho 50), 
sigla (tamanho 3), 
coordenador 
(DDL)
*/


CREATE TABLE Curso (
    idCurso INT PRIMARY KEY,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(20)
);

-- inserir valores  (DML)
insert into Curso       ( idCurso       ,        nome,  sigla, coordenador) 
            values      ( 1             ,      'BILL',  'BIL', "enzo"),
                        ( 2             ,      'ENZO',  'ENZ', "bill"),
                        ( 3             ,     'CESAR',  'CES', "felipe"),
                        ( 4             ,    'FELIPE',  'FEL', "cesar")                        
;
-- Exibir todos os dados da tabela (MQL)
select * from Curso;
-- Exibir apenas os coordenadores dos cursos. (MQL)
select coordenador from Curso;
-- Exibir apenas os dados dos cursos de uma determinada sigla. (MQL)
select * from Curso where sigla ="BIL";
-- Exibir os dados da tabela ordenados pelo nome do curso. (MQL)
select * from Curso order by nome;
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente (MQL)
select * from Curso order by coordenador desc;
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra. (MQL)
select * from Curso where nome like "B%";
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra. (MQL)
select * from Curso where nome like "%L";
-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra. (MQL)
select * from Curso where nome like "_I%";
-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra. (MQL)
select * from Curso where nome like "%L_";
-- Elimine a tabela. (MQL)
drop table Curso;

/*
Exercicio 5
Criar a tabela chamada Revista para conter os campos: 
idRevista (int e chave primária da tabela), 
nome (varchar, tamanho 40), 
categoria (varchar, tamanho 30). 
Os valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente pelo sistema
*/
create table Revista (
    idRevista int primary key auto_increment,
	nome varchar(40),
    categoria varchar(30)
);
UPDATE Revista SET categoria = "1";
select * from Revista;


insert into Revista (nome) 
            values ('BILL'),
                   ('ENZO'),
                   ('CESAR'),
                   ('FELIPE');

select * from Revista;
update Revista set categoria="1";
select * from Revista;
INSERT INTO Revista (nome, categoria) 
VALUES ('BILL_cat2', "2"),
       ('ENZO_cat2', "2"),
       ('CESAR_cat2', "2");
;

select * from Revista;
SHOW COLUMNS FROM Revista;
alter table Revista modify categoria varchar(40);
SHOW COLUMNS FROM Revista;
alter table Revista add column periodicidade varchar(15);
select * from Revista;

drop database sprint1;