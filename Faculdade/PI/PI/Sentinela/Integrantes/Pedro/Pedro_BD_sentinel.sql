create database sentinela;
use sentinela;

drop database sentinela;


create table empresas (
	id			int primary key auto_increment,
    empresa		varchar(50) not null
);


create table sensor (
	id				int primary key auto_increment,
    descricao		varchar(100),
    fkempresa		int not null,
    foreign key (fkempresa) references empresas(id)
);


create table historico_sensor (
	id				int primary key auto_increment,
	temperatura		int,
    data_sensor		date,
    fksensor		int not null,
    foreign key (fksensor) references sensor(id)
);


create table usuario (
	id				int primary key auto_increment,
    nome			varchar(40) not null,
    email			varchar(50) not null,
    senha			varchar(20) not null,
    nivel_acesso	varchar(2) not null,
    empresa			int not null,
    foreign key	(empresa) references empresas(id)
);


create table historico_alerta (
	id				int primary key auto_increment,
    mensagem		varchar(90) not null,
    data_alerta		date not null, 
    usuario			int not null,
    foreign key (usuario) references usuario(id)
);

insert into empresas (empresa)
	values  ('JBL'),
			('SSN'),
            ('PFC');
select * from empresas;

insert into sensor (descricao, fkempresa)
	values  ('São Paulo', 1),
			('São Paulo', 1),
            ('São Caetano', 1),
            ('Santo André', 2),
            ('São Bernardo', 3),
            ('São Caetano', 3);
select * from sensor;

insert into historico_sensor (temperatura, data_sensor, fksensor)
	values  (-18, '2022-01-14', 1),
			(-19, '2022-01-15', 1),
            (-15, '2022-01-16', 1),
            (-9, '2022-01-17', 2),
            (-18, '2022-01-18', 2),
            (-18, '2022-03-01', 2),
            (-17, '2022-03-02', 3),
            (-18, '2022-03-03', 3),
            (-19, '2022-03-04', 3),
            (-18, '2022-05-20', 4),
            (-12, '2022-05-20', 4),
            (-11, '2022-05-20', 4),
            (-20, '2022-05-25', 5),
            (-19, '2022-05-26', 5),
            (-18, '2022-05-27', 5),
            (-17, '2022-08-12', 6),
            (-10, '2022-08-13', 6),
            (-18, '2022-08-14', 6);
select * from historico_sensor;
            
insert into usuario (nome, email, senha, nivel_acesso, empresa)
	values  ('Pedro', 'pedro_empresa@gmail.com', '1234', 'a2', 1),
			('Ana', 'ana_empresa@gmail.com', '2531', 'a2', 2),
            ('Romário', 'romario_empresa@gmail.com', '2005', 'a1', 1),
            ('Alberto', 'alberto_empresa@gmail.com', '0909', 'a3', 3);
select * from usuario;


insert into historico_alerta (mensagem, data_alerta, usuario)
	values  ('Deu problema', '2022-01-17', 1),
			('Deu problema', '2022-01-17', 3),
			('Deu problema', '2022-05-20', 2),
            ('Deu problema', '2022-08-13', 4);
select * from historico_alerta;


select * from empresas;
select * from sensor;
select * from historico_sensor;
select * from usuario;
select * from historico_alerta;	

select * from sensor where fkempresa = 3;

select * from historico_sensor where temperatura > -12;

select * from historico_alerta where usuario = 4;
select * from usuario where id = 4;

select * from usuario where nivel_acesso = 'a1';

select * from usuario where empresa = 1;