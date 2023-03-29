create database livraria;

use livraria;

create table livro(
id int(11) not null primary key,
titulo varchar(50) not null,
idioma varchar(50) not null,
ano_lancamento int (10) not null);

insert into livro( id, titulo, idioma, ano_lancamento)
values( 01, 'A Casa', 'Espanhol', 2020);

select * from livro;

create table editora(
id int (11) not null primary key,
nome varchar(100) not null,
razao_social varchar(100) not null,
endereco varchar(50) not null,
telefone varchar(50) not null);
 
 insert into editora(id, nome, razao_social, endereco, telefone)
 values(01, 'Gazeta', 'Gaz de beta', 'rua beltrao n 30','62-932514263');
 
 select * from editora;
 

create table autores(
id int(11) not null primary key,
nome varchar(100) not null,
pseudinimo varchar (50) not null,
ano_nascimento int (50) not null,
lugar_origem varchar (50) not null,
id_livro int(11),
 constraint fk_autores_livro foreign key(id_livro) references livro(id));
 
 insert into autores (id, nome, pseudinimo, ano_nascimento, lugar_origem, id_livro)
 values(01, 'Joao pereira', 'Joao', 2020, 'Italia', 01);
 
 select * from autores;
 
 create table edicao(
 id int(11) not null primary key,
 preco double(9,2) not null,
 numero_pagina int not null,
 numero_exemplares int not null,
 id_livro int(11), constraint fk_edicao_livro foreign key (id_livro) references livro(id),
 id_editora int(11), constraint fk_edicao_editora foreign key (id_editora) references editora(id));
 
 insert into edicao(id, preco, numero_pagina, numero_exemplares, id_livro, id_editora)
 values(01, 145.20, 150, 20, 01, 01);
 
 select *from edicao;
 