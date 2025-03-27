create database livraria;
use livraria;
create table Autores(
	id int primary key auto_increment,
    nome_completo varchar(50) not null,
    unique nome_autor (nome_completo),
    nacionalidade varchar(15) check (nacionalidade in ("brasileira","estrangeira"))
);
create table Livros(
	id int primary key auto_increment,
    título varchar(50) not null,
    genero varchar(50) not null,
    ano_publicacao date not null,
    id_autor int,
    constraint fk_autor foreign key (id_autor) references Autores(id)
);
create table Venda(
	id int primary key auto_increment,
    data_venda date not null,
    qnt_vendida int not null,
    valor_total int not null default 0,
    id_livro int,
    constraint chk_venda check (valor_total>0),
    constraint fk_livro foreign key (id_livro) references Livros(id)
);

alter table Venda add column f_pagamento varchar(50) check (f_pagamento in("Dinheiro","Cartão","Pix")) default "Dinheiro";
alter table Livros add index g_index (genero);
alter table Autores modify nacionalidade varchar(15) check (nacionalidade in ("brasileira","estrangeira")) unique;
alter table Autores modify nome_completo varchar(50);
ALTER TABLE Livros drop foreign key fk_autor;
alter table Autores modify id int;
alter table Autores drop primary key;

drop database livraria;