-- usuarios
-- empresas
-- sensores
-- registro dos sensores
-- registro dos alertas
create database if not exists Sentinela;
use Sentinela;

create table if not exists empresas(
	id				int primary key auto_increment,
    nome			varchar(255) unique
);

create table if not exists usuarios (
	id				int primary key auto_increment,
	nivel_acesso 	varchar(3) check (nivel_acesso in("ADM","FUN","CHF")) default "CHF",
	nome			varchar(100) not null,
	email			varchar(255) check (email like "%@%" and email like "%.%" ) unique,
    senha			varchar(255) check (length(senha) >= 8),
    setor			varchar(15) check(setor in("armazenamento","transporte")),
    empresa         int,
	constraint fk_empresa_usuario foreign key (empresa) references empresas(id)
);

create table if not exists sensores(
	id				int primary key auto_increment,
    nome			varchar(20),
    descricao		varchar(255),
    setor			varchar(15) check(setor in("armazenamento","transporte")),
	empresa			int,
	constraint fk_empresa_sensores foreign key (empresa) references empresas(id)
);

create table if not exists historicoSensor(
	id					int primary key auto_increment,
    data_coleta			datetime default current_timestamp,
    status_temperatura	varchar(15) not null,
    temperatura			int,
    status_umidade		varchar(15) not null,
    umidade				int,
    sensor				int,
    constraint fk_sensor_historicoSensor foreign key (sensor) references sensores(id)
);

create table if not exists historicoAlerta(
	id				int primary key auto_increment,
    status_alerta	varchar(15) not null,
    descricao		varchar(255),
    usuario			int,
    constraint fk_usuario_historicoAlerta foreign key (usuario) references usuarios(id)
);

insert into empresas 	(nome)values
						("JBS"),
						("Marfrig Global Foods"),
                        ("Minerva Foods"),
                        ("Frigol"),
                        ("Masterboi");

insert into usuarios 	(nivel_acesso	,nome			,email							,senha		,setor			,		empresa)values
						("CHF"			,"bill hebert"	,"bill.choi@sptech.school.com"	, "XxXxXx@@"	,"armazenamento",1),
                        ("CHF"			,"cesar"		,"cesar.sp@sptech.school.com"	, "XxXxXx@@"	,"transporte"	,2),
                        ("CHF"			,"enzo"			,"enzo.sp@sptech.school.com"	, "XxXxXx@@"	,"armazenamento",3),
                        ("CHF"			,"felipe"		,"felipe.sp@sptech.school.com"	, "XxXxXx@@"	,"transporte"	,4),
                        ("CHF"			,"pedro"		,"pedro.sp@sptech.school.com"	, "XxXxXx@@"	,"armazenamento",5);
                        
insert into sensores 	(nome					,descricao				,setor			,empresa) values
						("sensor_01_caminhao"	,"sensor superior 01"	,"transporte"	,1),
                        ("sensor_02_caminhao"	,"sensor superior 02"	,"transporte"	,1),
                        ("sensor_03_caminhao"	,"sensor superior 03"	,"transporte"	,1),
                        ("sensor_01"			,"sensor para temp"		,"armazenamento",2),
                        ("sensor"				,"monitora as carnes"	,"armazenamento",3),
                        ("equipamento"			,null					,"transporte"	,4);
                        
insert into historicoSensor (status_temperatura		,temperatura		,status_umidade		,umidade		,sensor) values
							("normal"				,-18				,"normal"			,95				,1),
                            ("normal"				,-19				,"normal"			,95				,1),
                            ("normal"				,-17				,"normal"			,95				,1),
                            ("normal"				,-13				,"normal"			,95				,1),
                            ("limit_max"			,-12				,"normal"			,95				,1);

insert into historicoAlerta 	(status_alerta		,descricao							,usuario)values
								("limit_max"		,"sensor_01_caminhao no limite"		,1);
select * from empresas;
select * from usuarios;
select * from sensores;
select * from historicoSensor;
select * from historicoAlerta;

desc empresas;


/*
select u.nome, e.nome as empresa, s.nome as sensor
from empresas e 
inner join usuarios u on u.empresa = e.id
inner join sensores s on e.id = s.empresa;
drop database if exists sentinela;
*/