create database sprint;
use sprint;

CREATE TABLE Usuarios (
    id_usuario           INT AUTO_INCREMENT PRIMARY KEY,
    nome                 VARCHAR(100) NOT NULL,
    email                VARCHAR(100) NOT NULL UNIQUE,
    senha                VARCHAR(255) NOT NULL,
    data_cadastro        TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Usuarios (nome, email, senha) VALUES
('João Silva', 'joao.silva@empresa.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@empresa.com', 'senha123'),
('Carlos Souza', 'carlos.souza@empresa.com', 'senha123'),
('Ana Costa', 'ana.costa@empresa.com', 'senha123'),
('Fernanda Lima', 'fernanda.lima@empresa.com', 'senha123'),
('José Pereira', 'jose.pereira@empresa.com', 'senha123'),
('Roberta Alves', 'roberta.alves@empresa.com', 'senha123'),
('Paulo Rocha', 'paulo.rocha@empresa.com', 'senha123'),
('Ricardo Mendes', 'ricardo.mendes@empresa.com', 'senha123'),
('Camila Dias', 'camila.dias@empresa.com', 'senha123');

SELECT * FROM Usuarios;
DESC Usuarios;

CREATE TABLE Sensores (
    id_sensor           INT AUTO_INCREMENT PRIMARY KEY,
    nome                VARCHAR(100) NOT NULL,
    tipo                VARCHAR(50) NOT NULL,
    localizacao         VARCHAR(100),
    status_             VARCHAR(50) CHECK(status_ in('Ativo', 'Inativo', 'Em Manutenção')) NOT NULL,
    data_instalacao     DATE
);

INSERT INTO Sensores (nome, tipo, localizacao, status_, data_instalacao) VALUES
('DHT11', 'Temperatura', 'Sala 101', 'Ativo', '2023-05-10'),
('DHT11 ', 'Umidade', 'Sala 102', 'Ativo', '2023-05-12'),
('DHT11', 'Temperatura', 'Cozinha', 'Inativo', '2022-11-20'),
('DHT11 ', 'Umidade', 'Laboratório', 'Em Manutenção', '2023-03-15'),
('DHT11 ', 'Temperatura', 'Sala 201', 'Ativo', '2023-02-01'),
('DHT11', 'Umidade', 'Sala 202', 'Ativo', '2023-01-25'),
('DHT11 ', 'Temperatura', 'Cozinha', 'Ativo', '2022-12-10'),
('DHT11', 'Temperatura', 'Sala 301', 'Em Manutenção', '2023-04-05'),
('DHT11 ', 'Umidade', 'Sala 302', 'Ativo', '2023-03-22'),
('DHT11', 'Temperatura', 'Armazém', 'Ativo', '2023-01-30');

SELECT * FROM Sensores;
DESC Sensores;

CREATE TABLE Empresas (
    id_empresa            INT AUTO_INCREMENT PRIMARY KEY,
    nome                  VARCHAR(100) NOT NULL,
    cnpj                  VARCHAR(18) NOT NULL UNIQUE,
    endereco              VARCHAR(255),
    telefone              VARCHAR(20)
);

INSERT INTO Empresas (nome, cnpj, endereco, telefone) VALUES
('Tech Solutions Ltda', '12.345.678/0001-99', 'Rua das Inovações, 123, Centro', '(11) 98765-4321'),
('Indústria Beta S.A.', '23.456.789/0001-00', 'Avenida Brasil, 456, São Paulo', '(11) 98876-5432'),
('Global Networks', '34.567.890/0001-11', 'Rua Internacional, 789, Centro', '(11) 97987-6543'),
('Consultoria Alpha', '45.678.901/0001-22', 'Rua dos Analistas, 101, Vila Mariana', '(11) 97098-7654'),
('Logística Express', '56.789.012/0001-33', 'Rua das Mercadorias, 202, Moema', '(11) 96109-8765'),
('AgroTech Soluções', '67.890.123/0001-44', 'Avenida Rural, 303, Campinas', '(19) 95220-9876'),
('Varejo Fácil', '78.901.234/0001-55', 'Rua do Comércio, 404, Itaim Bibi', '(11) 94331-0987'),
('StartUp Tech', '89.012.345/0001-66', 'Avenida do Futuro, 505, Alphaville', '(11) 93442-1098'),
('Construtora Beta', '90.123.456/0001-77', 'Rua das Obras, 606, Zona Norte', '(11) 92553-2109'),
('Finanças & Investimentos', '01.234.567/0001-88', 'Avenida das Finanças, 707, Barra Funda', '(11) 91664-3210');

SELECT * FROM Empresas;
DESC Empresas;

CREATE TABLE Historico_Sensores (
    id_historico           INT AUTO_INCREMENT PRIMARY KEY,
    id_sensor              INT NOT NULL,
    valor                  DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_sensor) REFERENCES Sensores(id_sensor)
);

INSERT INTO Historico_Sensores (id_sensor, valor) VALUES
(167, 23.45),  
(112, 55.10), 
(113, 300.00), 
(114, 1012.50), 
(115, 22.30), 
(116, 60.75), 
(117, 280.00), 
(118, 1015.00), 
(119, 21.60),  
(120, 59.00);

SELECT * FROM Historico_Sensores;
DESC Historico_Sensores;
DROP TABLE Historico_Sensores;

CREATE TABLE Historico_Alertas (
    id_alerta INT AUTO_INCREMENT PRIMARY KEY,
    id_sensor INT NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (id_sensor) REFERENCES Sensores (id_sensor)
);

INSERT INTO Historico_Alertas (id_sensor, descricao) VALUES
(31, 'Temperatura acima do limite permitido, valor alcançado: 38°C'), 
(32, 'Umidade extremamente baixa, valor registrado: 10%'), 
(35, 'Temperatura abaixo do limite mínimo, valor: 12°C'),  
(36, 'Umidade muito alta detectada, valor atual: 92%'),  
(39, 'Temperatura instável, variando entre 18°C e 27°C'),  
(30, 'Umidade instável, oscilando entre 20% e 80%'),  
(51, 'Temperatura excessiva no ambiente, valor de 40°C registrado'),
(62, 'Umidade muito alta, risco de mofo, valor atual: 95%'), 
(85, 'Temperatura fria demais, valor de 5°C registrado'),  
(96, 'Umidade excessiva, condição favorável para fungos, valor: 88%'); 

SELECT * FROM Historico_Alertas;
DESC Historico_Alertas;