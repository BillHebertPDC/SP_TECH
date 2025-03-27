-- primeiros comandos - continuação
-- criar database
-- Etapa 1
create database aula_03;
-- colocar o database em uso
-- Etapa 2
use aula_03;
/*
criar a tabela de empresa 
onde o auto increment inicie a partir de 100
*/
-- Etapa 3
CREATE TABLE empresa (    
     id              INT auto_increment,    
     nome            VARCHAR(20),
     representante   varchar(50),
     primary key chave(id)
) auto_increment=100;  -- parametro opcional, se não informado inicia em 1
-- inserir dados na tabela empresa
-- Etapa 4
-- inclusão com declaração de colunas
insert into empresa (nome, representante) 
	values 	('Tivit', 'João'),
			('Accenture', 'José'),
			('Rappi', 'Marta'),
			('Raizen', 'Maria Alice'),
			('C6 Bank', 'Mariana'),
			('Banco Safra', 'Sandra'),
			('Deloitte', 'Giovanni'),
			('Elera', 'Vera'),
			('Sptech', 'Alessandro');
-- inclusão sem declarar as colunas	   
insert into empresa
values (null, 'Itaú', 'henrique'),
	   (null, 'Bradesco', 'Isabela'),
	   (null, 'Stefanini', 'Edson'),
	   (null, 'Vivo', 'Lucas'),
	   (null, 'Claro', 'Leticia'),
	   (null, 'Quando Previdencia', 'Emili'),
	   (null, 'Fleury', 'Davi'),
	   (null, 'Avanade', 'Vera'),
	   (null, 'Atos', 'Ian');	   
-- verificar os dados da tabela
-- Etapa 5
select * from empresa; 
delete from empresa;
truncate table empresa;
alter table empresa auto_increment=1000;
insert into empresa (nome, representante) 
	values 	('Tivit', 'João'),
			('Accenture', 'José'),
			('Rappi', 'Marta'),
			('Raizen', 'Maria Alice'),
			('C6 Bank', 'Mariana'),
			('Banco Safra', 'Sandra'),
			('Deloitte', 'Giovanni'),
			('Elera', 'Vera'),
			('Sptech', 'Alessandro');

select * from empresa; 
alter table empresa add qtd_alunos varchar(10);
alter table empresa add qtd_funcionarios int;
update empresa set qtd_alunos = id *10;  
update empresa set qtd_funcionarios = id / 1000; 
alter table empresa modify qtd_alunos int;
alter table empresa modify qtd_funcionarios int;
alter table empresa rename column qtd_alunos to qtd_aluno;
alter table empresa rename column qtd_funcionarios to qtd_funcionario;
alter table empresa drop column qtd_aluno;
alter table empresa drop column qtd_funcionario;
alter table empresa add column qtd_alunos_alocados int not null default(0);
alter table empresa alter qtd_alunos_alocados set default 0;
update empresa set qtd_alunos_alocados = 0;
show columns from empresa;
desc empresa;
insert into empresa (nome			, representante		,qtd_alunos_alocados) 
			values 	('2Tivit'		, 'João'			,id*10),
					('2Accenture'	, 'José'			,id*10),
					('2Rappi'		, 'Marta'			,id*10),
					('2Raizen'		, 'Maria Alice'		,id*10),
					('2C6 Bank'		, 'Mariana'			,id*10),
					('2Banco Safra' , 'Sandra'			,id*10),
					('2Deloitte'	, 'Giovanni'		,id*10),
					('2Elera'		, 'Vera'			,id*10),
					('2Sptech'		, 'Alessandro'		,id*10);
select * from empresa; 
select * ,
		case 
			when id <= 1010 then "lote 1 IDs"
			when id <= 1015 then "lote 2 IDs"
			else "Demais ID" 
        end as "lotes"
        from empresa;
         

/*
insert into empresa 
			values	(null,"teste"	,"teste_representante"		);
truncate empresa;
insert into empresa (nome		,representante			,qtd_alunos_alocados)
			values	("teste"	,"teste_representante"	,null		);

drop database aula_03;


alterar varchar(10) para int
trocar no nome do plural para singurar






create database teste;
use teste;
CREATE TABLE teste (    
     id              INT auto_increment,    
     nome            VARCHAR(20) not null,
     primary key chave(id)
) auto_increment=100; 
insert into teste (id,nome) values (null,"sad");
drop database teste;