create database game_store;
use game_store;
CREATE TABLE jogo (
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(30),
    diretor     VARCHAR(30),
    genero      VARCHAR(30),
    lancamento  DATE,
    nota        DECIMAL(3,1),
    quant       INT,
    CONSTRAINT chk_nota CHECK (nota >= 0 AND nota <= 10) -- Correção do nome da restrição
);

insert into jogo (nome     ,diretor         ,lancamento     ,nota       ,quant		,genero)
        values	 ("game1"  ,"diretor1"      ,"2025-01-02"   ,10         ,1000		,"Genero1"),
				 ("game2"  ,"diretor2"      ,"2024-01-02"   ,9          ,2000		,"Genero2"),
				 ("game3"  ,"diretor3"      ,"2023-01-02"   ,8          ,3000		,"Genero3"),
				 ("game4"  ,"diretor4"      ,"2015-01-02"   ,7          ,4000		,"Genero4"),
				 ("game5"  ,"diretora5"     ,"2014-01-02"   ,6          ,5000		,"Genero5");
alter table jogo add column tipo enum ("fisica","digital") default("fisica");
insert into jogo (nome     ,diretor         ,lancamento     ,nota       ,quant		,tipo		,genero)
        values	 ("game1"  ,"diretor1"      ,"2025-01-02"   ,10         ,1000		,"digital"	,"genero1"),
				 ("game2"  ,"diretor2"      ,"2024-01-02"   ,9          ,2000		,"digital"	,"genero1"),
				 ("game3"  ,"diretor3"      ,"2023-01-02"   ,8          ,0			,"digital"	,"genero1"),
				 ("game4"  ,"diretor4"      ,"2015-01-02"   ,7          ,4000		,"digital"	,"genero1"),
				 ("game5"  ,"diretora5"     ,"2014-01-02"   ,6          ,5000		,"digital"	,"genero1");
select * from jogo where lancamento >= 2015 ;
select * from jogo where nome like "%a%" and tipo ="fisica";
select * from jogo where diretor not like "%a%";
alter table jogo modify nota int check(nota >=0 and nota <= 10);
select * from jogo where genero like "G%" and quant > 2000;
delete from jogo where quant = 0;
alter table jogo rename column diretor to criador; 
select * from jogo;
drop database game_store;


create database olimpiadas;
use olimpiadas;
create table esporte (
	id 				int primary key auto_increment,
    nome 			varchar(40),
	categoria 		varchar(20),
    CONSTRAINT chk_categoria check (categoria ="Individual" or categoria = "Coletivo"),
    quant_jogadores int,
    estreia 		date,
    pais_origem 	varchar(30)
);
insert into esporte 	(nome	     ,		categoria,		quant_jogadores,		estreia,		pais_origem)
			values 	("esporte1"  ,	 "Individual",					 10,   "2025-10-10",		"brasil"),
					("esporte2"  ,	 "Individual",					 20,   "2010-10-10",		"brasil"),
					("esporte3"  ,	   "Coletivo",					 30,   "2020-10-10",		"brasil"),
					("esporte4"  ,	   "Coletivo",					 40,   "2030-10-10",		"brasil"),
					("esporte5"  ,	   "Coletivo",					 50,   "2000-10-10",		"brasil");
alter table esporte add column popularidade decimal (3,1) default(10.0);
desc esporte;
show columns from esporte;
select * from esporte order by popularidade asc;
select * from esporte where estreia > 2000;
alter table esporte add CONSTRAINT chk_esteia check (estreia > "1896-04-06");
alter table esporte drop check chk_categoria;
select * from esporte where pais_origem like "_a%";
select * from esporte where quant_jogadores between 4 and 11;
delete from esporte where id = 1 or id =3 or id = 5;
select * from esporte;

drop database olimpiadas;


CREATE DATABASE desenho;
USE desenho;

CREATE TABLE desenhos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    data_lancamento DATE,
    emissora_original VARCHAR(50),
    classificacao INT,
    status VARCHAR(15),
    nota DECIMAL(2,1)
) AUTO_INCREMENT = 10;

INSERT INTO desenhos (titulo, data_lancamento, emissora_original, classificacao, status, nota)
VALUES 
    ('Bob Esponja', '1999-05-01', 'Nickelodeon', 10, 'exibindo', 4.5),
    ('Os Simpsons', '1989-12-17', 'Fox', 14, 'exibindo', 4.8),
    ('Rick e Morty', '2013-12-02', 'Adult Swim', 18, 'exibindo', 4.9),
    ('Gravity Falls', '2012-06-15', 'Disney Channel', 12, 'finalizado', 4.7),
    ('Steven Universe', '2013-11-04', 'Cartoon Network', 10, 'finalizado', 4.6),
    ('Avatar: A Lenda de Aang', '2005-02-21', 'Nickelodeon', 12, 'finalizado', 4.9),
    ('BoJack Horseman', '2014-08-22', 'Netflix', 18, 'finalizado', 4.8),
    ('Hora de Aventura', '2010-04-05', 'Cartoon Network', 12, 'finalizado', 4.7);

SELECT * FROM desenhos;

SELECT * FROM desenhos WHERE classificacao <= 14;

SELECT * FROM desenhos WHERE emissora_original = 'Nickelodeon';
ALTER TABLE desenhos
ADD CONSTRAINT check_status CHECK (status IN ('exibindo', 'finalizado', 'cancelado'));

INSERT INTO desenhos (titulo, data_lancamento, emissora_original, classificacao, status, nota)
VALUES ('Teste Constraint', '2023-01-01', 'Test Channel', 12, 'finalizado', 3.5);

UPDATE desenhos SET status = 'finalizado' WHERE id = 10;
UPDATE desenhos SET status = 'finalizado' WHERE id = 11;
DELETE FROM desenhos WHERE id = 12;
SELECT * FROM desenhos WHERE titulo LIKE 'B%';
ALTER TABLE desenhos RENAME COLUMN classificacao TO classificacaoIndicativa; 
UPDATE desenhos SET nota = 5.0, data_lancamento = '1989-12-18' WHERE id = 11;
TRUNCATE TABLE desenhos;
ALTER TABLE desenhos DROP CONSTRAINT check_status;
drop database desenho;

CREATE DATABASE estoque;
USE estoque;

CREATE TABLE MisteriosSA (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    dataCompra DATE,
    preco DECIMAL(10,2),
    peso DECIMAL(10,2),
    dataRetirada DATE
);

INSERT INTO MisteriosSA (id, nome, dataCompra, preco, peso)
VALUES 
    (1, 'Biscoitos Scooby', '2024-06-15', 25.50, 500.00),
    (2, 'Cachorro-quente', '2024-07-01', 32.90, 350.00),
    (3, 'Biscoitos Scooby', '2024-07-20', 27.80, 500.00),
    (4, 'Pizza congelada', '2024-08-02', 45.75, 800.00),
    (5, 'Sorvete de chocolate', '2024-08-15', 18.90, 1000.00);

SELECT * FROM MisteriosSA;

SELECT id, nome, dataCompra, dataRetirada 
FROM MisteriosSA
ORDER BY dataCompra ASC;

UPDATE MisteriosSA
SET dataRetirada = '2024-08-20'
WHERE nome = 'Biscoitos Scooby' AND id = 1;

SELECT * FROM MisteriosSA;


ALTER TABLE MisteriosSA RENAME COLUMN id to idComida;

SELECT * FROM MisteriosSA;

UPDATE MisteriosSA
SET nome = 'Biscoitos Scooby'
WHERE nome NOT IN ('Biscoitos Scooby', 'Cachorro-quente');

ALTER TABLE MisteriosSA ADD CONSTRAINT check_nome CHECK (nome IN ('Biscoitos Scooby', 'Cachorro-quente'));

SELECT idComida, nome, dataCompra AS "data da compra", dataRetirada AS "data da retirada"
FROM MisteriosSA
WHERE nome = 'Biscoitos Scooby';

SELECT * FROM MisteriosSA
WHERE dataCompra < '2024-07-25';

SELECT * FROM MisteriosSA
WHERE preco >= 30.50;
TRUNCATE TABLE MisteriosSA;
SELECT * FROM MisteriosSA;
DROP DATABASE estoque;

CREATE DATABASE vingadores;
USE vingadores;
CREATE TABLE heroi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    versao VARCHAR(45),
    habilidade VARCHAR(100) NOT NULL,
    altura INT
);
INSERT INTO heroi (nome, versao, habilidade, altura) VALUES
    ('Homem de Ferro', 'Vingadores: Ultimato', 'Intelecto superior e armadura tecnológica', 185),
    ('Capitão América', 'Vingadores: Guerra Infinita', 'Super-soldado com escudo de vibranium', 188),
    ('Thor', 'Thor: Ragnarok', 'Deus do trovão com controle de relâmpagos', 195),
    ('Hulk', 'Vingadores: Era de Ultron', 'Força sobre-humana e resistência física', 250),
    ('Homem-Aranha', 'Homem-Aranha: Sem Volta para Casa', 'Agilidade e sentido aranha', 178);
SELECT * FROM heroi;
ALTER TABLE heroi
ADD COLUMN regeneracao BOOLEAN;

ALTER TABLE heroi
MODIFY COLUMN versao VARCHAR(100);

DELETE FROM heroi
WHERE id = 3;

INSERT INTO heroi (nome, versao, habilidade, altura, regeneracao) VALUES
    ('Capitã Marvel', 'Capitã Marvel', 'Absorção e manipulação de energia cósmica', 180, FALSE);

SELECT * FROM heroi
WHERE nome LIKE 'C%' OR nome LIKE 'H%';

SELECT * FROM heroi
WHERE nome NOT LIKE '%a%' AND nome NOT LIKE '%A%';

SELECT nome FROM heroi
WHERE altura > 190;

SELECT * FROM heroi
WHERE altura > 180
ORDER BY nome DESC;

TRUNCATE TABLE heroi;
DROP DATABASE vingadores;