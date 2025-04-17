let a = `
CREATE DATABASE Treinador;
USE Treinador;
CREATE TABLE Treinador (
    id 				INT AUTO_INCREMENT PRIMARY KEY,
    nome 			VARCHAR(100) NOT NULL,
    especialidade 	VARCHAR(100),
    id_orientador 	INT,
    FOREIGN KEY (id_orientador) REFERENCES Treinador(id)
);
CREATE TABLE Nadador (
    id 					INT AUTO_INCREMENT PRIMARY KEY,
    nome 				VARCHAR(100) NOT NULL,
    idade 				INT,
    estilo_preferido 	VARCHAR(50),
    id_treinador 		INT NOT NULL,
    FOREIGN KEY (id_treinador) REFERENCES Treinador(id)
);
INSERT INTO Treinador 	(nome		, especialidade	, id_orientador) VALUES
						('Carlos'	, 'Fundo'		, NULL),
						('Fernanda'	, 'Velocidade'	, 1),
						('João'		, 'Borboleta'	, 1),
						('Luciana'	, 'Costas'		, 2);
INSERT INTO Nadador (nome	, idade	, estilo_preferido	, id_treinador) VALUES
					('Ana'	, 20	, 'Peito'			, 2),
                    ('Bruno', 19	, 'Livre'			, 2),
                    ('Caio'	, 21	, 'Borboleta'		, 3),
                    ('Diana', 22	, 'Costas'			, 4),
                    ('Edina', 18	, 'Peito'			, 4);


SELECT * FROM Treinador;

SELECT * FROM Nadador;

SELECT t.nome AS Treinador, n.nome AS Nadador, n.estilo_preferido FROM Treinador t
	JOIN Nadador n ON t.id = n.id_treinador;
SELECT t.nome AS Treinador, n.nome AS Nadador, n.estilo_preferido FROM Treinador t
	JOIN Nadador n ON t.id = n.id_treinador WHERE t.nome = 'Fernanda';
SELECT t.nome AS Treinador, t.especialidade, o.nome AS Orientador, o.especialidade AS Especialidade_Orientador FROM Treinador t
	LEFT JOIN Treinador o ON t.id_orientador = o.id;
SELECT t.nome AS Treinador, t.especialidade FROM Treinador t
	JOIN Treinador o ON t.id_orientador = o.id WHERE o.nome = 'Carlos';
SELECT t.nome AS Treinador, n.nome AS Nadador, o.nome AS Orientador FROM Treinador t
	LEFT JOIN Nadador n ON t.id = n.id_treinador
		LEFT JOIN Treinador o ON t.id_orientador = o.id;
SELECT t.nome AS Treinador, n.nome AS Nadador, o.nome AS Orientador FROM Treinador t
	LEFT JOIN Nadador n ON t.id = n.id_treinador
		LEFT JOIN Treinador o ON t.id_orientador = o.id WHERE t.nome = 'Luciana';
`
console.log(a.toLocaleLowerCase())