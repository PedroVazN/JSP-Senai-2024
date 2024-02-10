create database dbagenda;
show databases;
use dbagenda;
create table contatos(
idcon int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15)not null,
email varchar(50) 
);
show tables;
describe contatos;

/* CRUD CREATE */
insert into contatos(nome,fone,email) values ('Kaique','11 93776-0281','kaique@email.com');
insert into contatos(nome,fone,email) values ('Matheus','11 94346-5860','matheus@email.com');
insert into contatos(nome,fone,email) values ('Victor','11 96456-4840','victor@email.com');
select * from contatos; 