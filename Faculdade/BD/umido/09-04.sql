drop database if exists sprint2;
create database if not exists sprint2;

use sprint2;

-- criar tabela empresa
create table empresa(
	id int primary key auto_increment,
    nome varchar(45),
    cnpj varchar(40),
    situacao char(1),
    fkEmpresa int,
    constraint foreign key (fkEmpresa) references empresa(id)
);

-- deixar como está
create table cliente(
id  int not null auto_increment,
nome   varchar(100),
primary key(id));

-- deixar como esta
create table produto(
id int not null auto_increment,
nome   varchar(100),
preco_unitario  decimal(10,2),
primary key(id));

-- adicionar a fkempresa e numero do pedido
create table pedido(
id   int ,
fkempresa		int,
numeroPedido 	int,
data_pedido   date,
fkcliente     int,
foreign key (fkempresa) references empresa(id),
foreign key (fkcliente) references cliente(id),
primary key (fkempresa , numeroPedido)
);
-- adicionar fk empresa, sequencia
-- modificar a primari key para fkempresa fkpedido e sequencia
create table pedido_item(
fkEmpresa int,
fkpedido    int,
sequencia int not null,
fkproduto   int,
quantidade  decimal(10,3),
valor_unitario  decimal(10,2),
foreign key (fkEmpresa) references empresa(id),
foreign key(fkpedido,sequencia) references pedido(fkempresa , numeroPedido),
foreign key(fkproduto) references produto(id),
primary key(fkEmpresa, fkpedido, sequencia)
);


insert into empresa (nome		,cnpj,situacao,fkempresa)values
					("magazine","7777",0,null);


INSERT INTO cliente (nome) VALUES
		('Empresa ABC LTDA'),
		('Companhia XYZ S.A.'),
		('Serviços de Tecnologia EFG Ltda.'),
		('Comércio de Alimentos GHI Ltda.'),
		('Transportadora JKL S.A.'),
		('Consultoria MNO LTDA'),
		('Fabricação de Produtos PQR S.A.'),
		('Agropecuária STU LTDA'),
		('Indústria de Cosméticos VWX S.A.'),
		('Construtora YZ Ltda.');
        
INSERT INTO produto (nome, preco_unitario) VALUES
	('Tênis de Skate', 129.99),
	('Camiseta Estampada', 49.99),
	('Boné de Marca', 39.99),
	('Celular Gamer', 999.99),
	('Fone de Ouvido Bluetooth', 79.99),
	('Mochila Escolar com Estampa', 69.99),
	('Skate Completo', 149.99),
	('Calça Jeans Rasgada', 79.99),
	('Sneakers de Marca', 89.99),
	('Pulseira Inteligente', 59.99);     
  
INSERT INTO pedido (data_pedido, fkcliente,fkempresa,numeroPedido) VALUES
	('2024-04-01', 1,1,1),
	('2024-04-02', 2,1,2),
	('2024-04-03', 3,1,3),
	('2024-04-04', 4,1,4),
	('2024-04-05', 5,1,5),
	('2024-04-06', 6,1,6);    

INSERT INTO pedido_item (fkpedido, fkproduto, quantidade, valor_unitario,fkempresa,sequencia) VALUES
		(1000, 1, 2, 129.99,1,1), 
		(1000, 2, 1, 49.99,1,2),  
		(1001, 4, 1, 999.99,1,3), 
		(1001, 5, 1, 79.99,1,4),  
		(1002, 7, 1, 149.99,1,5),
		(1002, 8, 1, 79.99,1,6),
		(1003, 9, 1, 89.99,1,7),
		(1003, 10, 1, 59.99,1,8),
		(1004, 2, 2, 49.99,1,9),
		(1004, 6, 1, 69.99,1,10),
		(1005, 1, 1, 129.99,1,11),
		(1005, 4, 1, 999.99,1,12);
    
 