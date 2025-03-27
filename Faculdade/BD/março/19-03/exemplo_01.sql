/*
2 clientes
2 produtos | coca cola - guarana
5 pedidos
*/

create database if not exists exercicio_19_03_2025;
use exercicio_19_03_2025;

create table cliente(
	id				int primary key auto_increment,
    nome			varchar(50) not null
);
insert into cliente (nome) values
					("bill"),
					("enzo")
;
create table produto(
	id 				int primary key auto_increment,
    codigo			int not null unique,
    nome_produto	varchar(20) not null,
    estoque			int not null default 0,
    valor 			int
);
insert into produto (codigo	,nome_produto	,estoque	,valor) values
					(1		,"coca cola"	,1			,5),
                    (2		,"guarana"		,2			,4);

create table item(
	id				int primary key auto_increment,
    nome			varchar(255),
    valor			int,
    produto			int unique,
    constraint fk_item_produto foreign key (produto) references produto(id)
);

insert into item(nome		,valor	,produto	)values
				("coca-cola"	,5		,1)			,
                ("guarana"	,4		,2);

create table pedido(
	id				int primary key auto_increment,
    cliente			int,
    constraint fk_pedido_cliente foreign key (cliente) references cliente(id),
    contador		int,
    itens			int,
	constraint fk_pedido_produto foreign key (itens) references item(id)
);

insert into pedido(cliente		,contador	,itens)values
					(1			,1			,1),
					(1			,1			,1);



drop database exercicio_19_03_2025;