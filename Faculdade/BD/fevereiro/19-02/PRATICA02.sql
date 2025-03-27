CREATE DATABASE sprint1;
USE sprint1;
CREATE TABLE Atleta (
    idAtleta INT PRIMARY KEY,
    nome VARCHAR(40),
    modalidade VARCHAR(40),
    qtdMedalha INT
);

INSERT INTO Atleta  (idAtleta   , nome              ,modalidade     ,qtdMedalha) 
    VALUES          (1          , 'Michael Phelps'  , 'Natação'     , 23),
                	(2          , 'Katie Ledecky'   , 'Natação'     , 7),
	                (3          , 'Usain Bolt'      , 'Atletismo'   , 8),
	                (4          , 'Simone Biles'    , 'Ginástica'   , 7),
	                (5          , 'LeBron James'    , 'Basquete'    , 2),
	                (6          , 'Kevin Durant'    , 'Basquete'    , 3),
                	(7          , 'Allyson Felix'   , 'Atletismo'   , 11);

SELECT * FROM Atleta;

UPDATE Atleta SET qtdMedalha = 28 WHERE idAtleta = 1;
UPDATE Atleta SET qtdMedalha = 10 WHERE idAtleta IN (2, 3);
UPDATE Atleta SET nome = 'Simone Arianne Biles' WHERE idAtleta = 4;

ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

UPDATE Atleta SET dtNasc = '1985-06-30' WHERE idAtleta = 1;
UPDATE Atleta SET dtNasc = '1997-03-17' WHERE idAtleta = 2;
UPDATE Atleta SET dtNasc = '1986-08-21' WHERE idAtleta = 3;
UPDATE Atleta SET dtNasc = '1997-03-14' WHERE idAtleta = 4;
UPDATE Atleta SET dtNasc = '1984-12-30' WHERE idAtleta = 5;
UPDATE Atleta SET dtNasc = '1988-09-29' WHERE idAtleta = 6;
UPDATE Atleta SET dtNasc = '1985-11-18' WHERE idAtleta = 7;

DELETE FROM Atleta WHERE idAtleta = 5;

SELECT * FROM Atleta WHERE modalidade <> 'Natação';
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60);

DESC Atleta;

TRUNCATE TABLE Atleta;


CREATE TABLE IF NOT EXISTS Musica (
    idMusica INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica  (titulo              , artista       , genero) 
            VALUES  ('Bohemian Rhapsody' , 'Queen'       , 'Rock'),
                    ('Under Pressure'    , 'Queen'       , 'Rock'),
                    ('Garota de Ipanema' , 'Tom Jobim'   , 'Bossa Nova'),
                    ('Águas de Março'    , 'Tom Jobim'   , 'Bossa Nova'),
                    ('Baile de Favela'   , 'MC João'     , 'Funk'),
                    ('Envolver'          , 'Anitta'      , 'Pop'),
                    ('Vai Malandra'      , 'Anitta'      , 'Funk');

SELECT * FROM Musica;

ALTER TABLE Musica ADD COLUMN curtidas INT;

UPDATE Musica SET curtidas = 50 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 30 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 25 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 15 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 22 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 45 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 35 WHERE idMusica = 7;

ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80);

UPDATE Musica SET curtidas = 100 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 75 WHERE idMusica IN (2, 3);
UPDATE Musica SET titulo = 'Baile de Favela (Remix)' WHERE idMusica = 5;

DELETE FROM Musica WHERE idMusica = 4;

SELECT * FROM Musica WHERE genero <> 'Funk';
SELECT * FROM Musica WHERE curtidas >= 20;

DESC Musica;

TRUNCATE TABLE Musica;


CREATE TABLE IF NOT EXISTS Filme (
    idFilme INT PRIMARY KEY,
    título VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme   (idFilme,título                 ,genero                 ,diretor) 
        VALUES      (1      , 'O Poderoso Chefão'   , 'Drama'               , 'Francis Ford Coppola'),
                    (2      , 'Pulp Fiction'        , 'Crime'               , 'Quentin Tarantino'),
                    (3      , 'Matrix'              , 'Ficção Científica'   , 'Lana e Lilly Wachowski'),
                    (4      , 'O Poderoso Chefão II', 'Drama'               , 'Francis Ford Coppola'),
                    (5      , 'Cidade de Deus'      , 'Crime'               , 'Fernando Meirelles'),
                    (6      , 'Django Livre'        , 'Western'             , 'Quentin Tarantino'),
                    (7      , 'Bastardos Inglórios' , 'Guerra'              , 'Quentin Tarantino');

SELECT * FROM Filme;

ALTER TABLE Filme ADD protagonista VARCHAR(50);

UPDATE Filme SET protagonista = 'Marlon Brando' WHERE idFilme = 1;
UPDATE Filme SET protagonista = 'John Travolta' WHERE idFilme = 2;
UPDATE Filme SET protagonista = 'Keanu Reeves' WHERE idFilme = 3;
UPDATE Filme SET protagonista = 'Al Pacino' WHERE idFilme = 4;
UPDATE Filme SET protagonista = 'Alexandre Rodrigues' WHERE idFilme = 5;
UPDATE Filme SET protagonista = 'Jamie Foxx' WHERE idFilme = 6;
UPDATE Filme SET protagonista = 'Brad Pitt' WHERE idFilme = 7;

ALTER TABLE Filme MODIFY diretor VARCHAR(150);

UPDATE Filme SET diretor = 'Fernando Meirelles e Kátia Lund' WHERE idFilme = 5;
UPDATE Filme SET diretor = 'Quentin Tarantino & Roger Avary' WHERE idFilme IN (2, 7);
UPDATE Filme SET título = 'Django Unchained' WHERE idFilme = 6;

DELETE FROM Filme WHERE idFilme = 3;

SELECT * FROM Filme WHERE genero != 'Drama';
SELECT * FROM Filme WHERE genero = 'Suspense';

DESC Filme;

TRUNCATE TABLE Filme;


CREATE TABLE Professor (
    idProfessor INT PRIMARY KEY,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO Professor VALUES
(1, 'Carlos Silva', 'Banco de Dados', '1980-05-15'),
(2, 'Maria Santos', 'Programação', '1985-07-22'),
(3, 'João Oliveira', 'Programação', '1975-11-30'),
(4, 'Ana Costa', 'Redes', '1990-03-18'),
(5, 'Roberto Almeida', 'Inteligência Artificial', '1982-09-10'),
(6, 'Juliana Ferreira', 'Banco de Dados', '1988-12-05');

SELECT * FROM Professor;

ALTER TABLE Professor 
ADD COLUMN funcao VARCHAR(50) CHECK (funcao IN ('monitor', 'assistente', 'titular'));

UPDATE Professor SET funcao = 'titular' WHERE idProfessor = 1;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 2;
UPDATE Professor SET funcao = 'titular' WHERE idProfessor = 3;
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 4;
UPDATE Professor SET funcao = 'assistente' WHERE idProfessor = 5;
UPDATE Professor SET funcao = 'monitor' WHERE idProfessor = 6;

INSERT INTO Professor VALUES
(7, 'Pedro Souza', 'Inteligência Artificial', '1979-08-25', 'titular');

DELETE FROM Professor WHERE idProfessor = 5;

SELECT nome FROM Professor WHERE funcao = 'titular';
SELECT especialidade, dtNasc FROM Professor WHERE funcao = 'monitor';

UPDATE Professor SET dtNasc = '1976-10-20' WHERE idProfessor = 3;

TRUNCATE TABLE Professor;

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(50)
);

INSERT INTO Curso VALUES 
(1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Carlos Silva'),
(2, 'Ciência da Computação', 'CCO', 'Maria Oliveira'),
(3, 'Sistemas de Informação', 'SIS', 'João Santos');

SELECT * FROM Curso;
SELECT coordenador FROM Curso;
SELECT * FROM Curso WHERE sigla = 'CCO';
SELECT * FROM Curso ORDER BY nome;
SELECT * FROM Curso ORDER BY coordenador DESC;
SELECT * FROM Curso WHERE nome LIKE 'A%';
SELECT * FROM Curso WHERE nome LIKE '%o';
SELECT * FROM Curso WHERE nome LIKE '_i%';
SELECT * FROM Curso WHERE nome LIKE '%ã_';

DROP TABLE Curso;

CREATE TABLE Revista (
    idRevista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO Revista (nome) VALUES 
('Veja'),
('Isto é'),
('Época'),
('Quatro Rodas');

SELECT * FROM Revista;

UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 1;
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 2;
UPDATE Revista SET categoria = 'Notícias' WHERE idRevista = 3;
UPDATE Revista SET categoria = 'Automóveis' WHERE idRevista = 4;

SELECT * FROM Revista;

INSERT INTO Revista (nome, categoria) VALUES 
('Claudia', 'Moda'),
('Superinteressante', 'Ciência'),
('Caras', 'Celebridades');

SELECT * FROM Revista;

DESCRIBE Revista;

ALTER TABLE Revista MODIFY COLUMN categoria VARCHAR(40);

DESC Revista;

ALTER TABLE Revista ADD COLUMN periodicidade VARCHAR(15);

SELECT * FROM Revista;

ALTER TABLE Revista DROP COLUMN periodicidade;

DESC Revista;

CREATE TABLE Serie (
    idSerie INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    qtdTemporadas INT,
    status VARCHAR(40) CHECK (status IN ('em andamento', 'finalizada', 'não assistida'))
) AUTO_INCREMENT = 100;

INSERT INTO Serie (nome, qtdTemporadas, status) VALUES 
('Breaking Bad', 5, 'finalizada'),
('Stranger Things', 4, 'em andamento'),
('Game of Thrones', 8, 'finalizada'),
('The Witcher', 2, 'não assistida');

SELECT * FROM Serie;

DROP TABLE Serie;

CREATE TABLE Carro (
    idCarro INT PRIMARY KEY,
    nome VARCHAR(70),
    placa VARCHAR(7),
    marca VARCHAR(20)
);

INSERT INTO Carro VALUES
(1, 'Uno', 'ABC1234', 'Fiat'),
(2, 'Gol', 'DEF5678', 'Volkswagen'),
(3, 'Palio', 'GHI9012', 'Fiat'),
(4, 'HB20', 'JKL3456', 'Hyundai'),
(5, 'Civic', 'MNO7890', 'Honda');

ALTER TABLE Carro MODIFY COLUMN marca VARCHAR(40);

SELECT * FROM Carro;
SELECT nome, placa FROM Carro;
SELECT * FROM Carro WHERE marca = 'Fiat';
SELECT * FROM Carro WHERE placa = 'ABC1234';
SELECT * FROM Carro ORDER BY marca;
SELECT * FROM Carro ORDER BY nome DESC;
SELECT * FROM Carro WHERE nome LIKE '%l';
SELECT * FROM Carro WHERE marca LIKE 'H%';
SELECT * FROM Carro WHERE placa LIKE '_B%';
SELECT * FROM Carro WHERE nome LIKE '%o_';

UPDATE Carro SET placa = 'XYZ9876' WHERE idCarro = 1;

SELECT * FROM Carro;

DELETE FROM Carro WHERE idCarro = 5;

SELECT * FROM Carro;

DROP TABLE Carro;

CREATE TABLE Restaurante (
    idRest INT PRIMARY KEY,
    nome VARCHAR(40),
    CEP VARCHAR(9),
    tipo VARCHAR(30)
);

INSERT INTO Restaurante VALUES
(1, 'Fogo de Chão', '01515-001', 'Churrascaria'),
(2, 'Outback', '01515-002', 'Churrascaria'),
(3, 'Cantina do Mario', '01515-003', 'Italiana'),
(4, 'Sushi Hiroshi', '01515-004', 'Japonesa'),
(5, 'McDonald\'s', '01515-005', 'Fast-food');

ALTER TABLE Restaurante MODIFY COLUMN tipo VARCHAR(50);

SELECT * FROM Restaurante;
SELECT nome, tipo FROM Restaurante;
SELECT * FROM Restaurante WHERE tipo = 'Churrascaria';
SELECT * FROM Restaurante WHERE CEP = '01515-001';
SELECT * FROM Restaurante ORDER BY nome;
SELECT * FROM Restaurante ORDER BY tipo DESC;
SELECT * FROM Restaurante WHERE nome LIKE 'C%';
SELECT * FROM Restaurante WHERE CEP LIKE '%1';
SELECT * FROM Restaurante WHERE tipo LIKE '_a%';
SELECT * FROM Restaurante WHERE nome LIKE '%a_';

UPDATE Restaurante SET CEP = '01515-010' WHERE idRest = 3;

SELECT * FROM Restaurante;

DELETE FROM Restaurante WHERE idRest = 5;

SELECT * FROM Restaurante;

DROP TABLE Restaurante;

DROP DATABASE sprint1;
