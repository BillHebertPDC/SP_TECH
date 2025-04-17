-- exe 1
/*
Criar um banco de dados Pet no MySQL, selecionar esse banco de dados e
executar as instruções relacionadas a seguir.
- Criar as tabelas equivalentes à modelagem.
- Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente,
e que exista algum cliente com mais de um pet cadastrado. Procure inserir pelo
menos 2 clientes diferentes que tenham o mesmo sobrenome.
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação.
- Altere o tamanho da coluna nome do cliente.
- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo:
cachorro).
- Exibir apenas os nomes e as datas de nascimento dos pets.
- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.
- Exibir os dados dos pets cujo nome comece com uma determinada letra.
- Exibir os dados dos clientes que têm o mesmo sobrenome.
- Alterar o telefone de um determinado cliente.
- Exibir os dados dos clientes para verificar se alterou.
- Exibir os dados dos pets e dos seus respectivos donos.
- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um
determinado cliente.
- Excluir algum pet.
- Exibir os dados dos pets para verificar se excluiu.
- Excluir as tabelas.

*/
create table cliente (
    idcliente 	int primary key auto_increment,
    nome 		varchar(45) not null,
    sobrenome 	varchar(45) not null,
    telefone 	char(14),
    rua 		varchar(100),
    numero 		int,
    bairro 		varchar(45)
);
create table tipopet (
    idtipopet 	int primary key auto_increment,
    descricao 	varchar(45) not null
);
create table pet (
    idpet 		int primary key auto_increment,
    nome 		varchar(45) not null,
    datanasc 	date,
    fkcliente 	int not null,
    fktipo 		int not null,
    foreign key (fkcliente) references cliente(idcliente),
    foreign key (fktipo) references tipopet(idtipopet)
);
insert into cliente (nome       , sobrenome     , telefone              , rua               , numero, bairro) values
					('maria'	, 'silva'       , '(11)98765-4321'      , 'rua das flores'  , 123	, 'jardim europa'),
					('joão' 	, 'silva'       , '(11)91234-5678'      , 'avenida paulista', 456   , 'centro');
insert into tipopet (descricao) values
                    ('cachorro'),
                    ('gato');
insert into pet (nome   , datanasc      , fkcliente, fktipo) values
                ('rex'  , '2021-05-10'  , 1        , 1),
                ('luna' , '2022-02-15'  , 1        , 2);
select * from cliente;
select * from tipopet;
select * from pet;
alter table cliente modify column nome varchar(60);
select * from pet where fktipo = 1;
select nome, datanasc from pet;
select * from pet order by nome asc;
select * from cliente order by bairro desc;
select * from pet where nome like 'n%';
select c1.* from cliente c1 join cliente c2 on c1.sobrenome = c2.sobrenome;
update cliente set telefone = '(11)88888-8888' where idcliente = 1;
select * from cliente;
select p.*, c.nome as nome_dono, c.sobrenome, t.descricao as tipo_pet from pet p 
	join cliente c on p.fkcliente = c.idcliente 
		join tipopet t on p.fktipo = t.idtipopet;
select p.*, c.nome as nome_dono, c.sobrenome, t.descricao as tipo_pet from pet p 
	join cliente c on p.fkcliente = c.idcliente 
		join tipopet t on p.fktipo = t.idtipopet where c.idcliente = 1;
delete from pet where idpet = 2;
select * from pet;
drop table pet;
drop table cliente;
drop table tipopet;

-- exe 2 
/*
- Insira dados nas tabelas.
- Exiba os dados de cada tabela individualmente.
- Exiba somente os dados de cada tabela, mas filtrando por algum dado da tabela (por exemplo, as pessoas de alguma profissão, etc).
- Exiba os dados das pessoas e dos seus gastos correspondentes.
- Exiba os dados de uma determinada pessoa e dos seus gastos correspondentes.
- Atualize valores já inseridos na tabela.
- Exclua um ou mais registros de alguma tabela.
*/

create table pessoa (
    idpessoa 		int primary key auto_increment,
    nome 			varchar(50) not null,
    datanascimento 	date,
    profissao 		varchar(45)
);

create table gasto (
    idgasto 		int primary key auto_increment,
    data 			date not null,
    valor 			decimal(10,2) not null,
    descricao 		varchar(100),
    fkpessoa 		int not null,
    foreign key (fkpessoa) references pessoa(idpessoa)
);

insert into pessoa 	(nome		, datanascimento, profissao) values
					('carlos'	, '1985-07-15'	, 'engenheiro'),
					('ana silva', '1990-03-22'	, 'médica');

insert into gasto 	(data			, valor		, descricao				, fkpessoa) values
					('2025-03-10'	, 1500.00	, 'aluguel'				, 1),
					('2025-03-15'	, 350.50	, 'compras'				, 1),
					('2025-03-05'	, 2200.00	, 'parcela do carro'	, 2),
					('2025-03-12'	, 750.00	, 'material de estudo'	, 2);
select * from pessoa;
select * from gasto;
select * from pessoa where profissao = 'engenheiro';
select * from gasto where valor > 1000;
select p.nome, p.profissao, g.data, g.valor, g.descricao from pessoa p join gasto g on p.idpessoa = g.fkpessoa;
select p.nome,  g.valor, g.descricao from pessoa p join gasto g on p.idpessoa = g.fkpessoa where p.nome = 'ana silva';
update pessoa set profissao = 'engenheiro civil' where idpessoa = 1;
update gasto set valor = 1600.00 where idgasto = 1;
select * from pessoa;
select * from gasto;
delete from gasto where idgasto = 4;
select * from gasto;

-- exe 3
/*
- Criar um banco de dados chamado PraticaFuncionario.
- Selecionar esse banco de dados.
- Criar as tabelas correspondentes à sua modelagem.
- Inserir dados nas tabelas, de forma que exista mais de um funcionário em cada setor cadastrado.
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação.
- Exibir os dados dos setores e dos seus respectivos funcionários.
- Exibir os dados de um determinado setor (informar o nome do setor na consulta) e dos seus respectivos funcionários.
- Exibir os dados dos funcionários e de seus acompanhantes.
- Exibir os dados de apenas um funcionário (informar o nome do funcionário) e os dados de seus acompanhantes.
- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes.
*/


create database praticafuncionario;
use praticafuncionario;

create table setor (
    id 		int auto_increment primary key,
    nome 	varchar(100) not null unique
);
create table funcionario (
    id 			int auto_increment primary key,
    nome 		varchar(100) not null,
    cargo 		varchar(100),
    salario 	decimal(10,2),
    id_setor	int not null,
    foreign key (id_setor) references setor(id)
);

create table acompanhante (
    id 				int auto_increment primary key,
    nome 			varchar(100) not null,
    parentesco 		varchar(50),
    id_funcionario	int not null,
    foreign key (id_funcionario) references funcionario(id)
);
insert into setor	(nome) values
                    ('ti'),
                    ('rh'),
                    ('financeiro');

insert into funcionario	(nome   , cargo                 , salario, id_setor) values
						('alice', 'dev jr'              , 3500.00, 1),
                        ('bruno', 'dev pleno'           , 6000.00, 1),
                        ('carla', 'analista rh'         , 4000.00, 2),
                        ('diego', 'coordenador rh'      , 7000.00, 2),
                        ('elisa', 'contadora'           , 5000.00, 3),
                        ('fábio', 'analista financeiro'	, 4500.00, 3);

insert into acompanhante	(nome           , parentesco	, id_funcionario) values
							('lucas'        , 'filho'       , 1),
                            ('fernanda' 	, 'esposa'      , 1),
                            ('ricardo'  	, 'marido'      , 3),
                            ('joão'         , 'filho'       , 4),
                            ('beatriz'  	, 'filha'       , 5),
                            ('ana'          , 'esposa'      , 6);
select * from setor;
select * from funcionario;
select * from acompanhante;


select s.nome as setor, f.nome as funcionario, f.cargo, f.salario from setor s
        join funcionario f on s.id = f.id_setor;

select s.nome as setor, f.nome as funcionario, f.cargo, f.salario from setor s
        join funcionario f on s.id = f.id_setor where s.nome = 'ti';

select f.nome as funcionario, a.nome as acompanhante, a.parentesco from funcionario f
        join acompanhante a on f.id = a.id_funcionario;

select f.nome as funcionario, a.nome as acompanhante, a.parentesco from funcionario f
        join acompanhante a on f.id = a.id_funcionario where f.nome = 'alice';

select f.nome as funcionario, f.cargo, f.salario, s.nome as setor, a.nome as acompanhante, a.parentesco from funcionario f
        join setor s on f.id_setor = s.id
                left join acompanhante a on f.id = a.id_funcionario;
                
-- exe 4
/*
- Criar um banco de dados chamado Treinador.
- Selecionar esse banco de dados.
- Criar as tabelas correspondentes à sua modelagem.
- Inserir dados nas tabelas, de forma que exista mais de um nadador para algum treinador, e mais de um treinador sendo orientado por algum treinador mais experiente.
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da criação das tabelas.
- Exibir os dados dos treinadores e os dados de seus respectivos nadadores.
- Exibir os dados de um determinado treinador (informar o nome do treinador na consulta) e os dados de seus respectivos nadadores.
- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores.
- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores, porém somente de um determinado treinador orientador (informar o nome do treinador na consulta).
- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores.
- Exibir os dados de um treinador (informar o seu nome na consulta), os dados dos respectivos nadadores e os dados do seu treinador orientador.
*/

create database treinador;
use treinador;
create table treinador (
    id                  int auto_increment primary key,
    nome                varchar(45) not null,
    especialidade       varchar(45),
    id_orientador       int,
    foreign key (id_orientador) references treinador(id)
);
create table nadador (
    id                  int auto_increment primary key,
    nome                varchar(45),
    idade               int,
    estilo_preferido    varchar(45),
    id_treinador        int not null,
    foreign key (id_treinador) references treinador(id)
);
insert into treinador   (nome           , especialidade , id_orientador) values
						('carlos'       , 'fundo'       , null),
						('fernanda'     , 'velocidade'  , 1),
						('joão'         , 'borboleta'   , 1),
						('luciana'      , 'costas'      , 2);
insert into nadador 	(nome       , idade , estilo_preferido      , id_treinador) values
						('ana'  	, 20    , 'peito'               , 2),
						('bruno'	, 19    , 'livre'               , 2),
						('caio'     , 21    , 'borboleta'           , 3),
						('diana'	, 22    , 'costas'              , 4),
						('edina'	, 18    , 'peito'               , 4);
select * from treinador;
select * from nadador;
select t.nome as treinador, n.nome as nadador, n.estilo_preferido from treinador t
        join nadador n on t.id = n.id_treinador;
select t.nome as treinador, n.nome as nadador, n.estilo_preferido from treinador t
        join nadador n on t.id = n.id_treinador where t.nome = 'fernanda';
select t.nome as treinador, t.especialidade, o.nome as orientador, o.especialidade as especialidade_orientador from treinador t
        left join treinador o on t.id_orientador = o.id;
select t.nome as treinador, t.especialidade from treinador t
        join treinador o on t.id_orientador = o.id where o.nome = 'carlos';
select t.nome as treinador, n.nome as nadador, o.nome as orientador from treinador t
        left join nadador n on t.id = n.id_treinador
                left join treinador o on t.id_orientador = o.id;
select t.nome as treinador, n.nome as nadador, o.nome as orientador from treinador t
        left join nadador n on t.id = n.id_treinador
                left join treinador o on t.id_orientador = o.id where t.nome = 'luciana';




