create database Aula;
use Aula;
create table Alunos(
Codigo int key auto_increment,
Nome varchar(50),
Cidade varchar(60),
Estado char(2),
Idade float );
Desc Alunos;
rename table Alunos to Clientes;
show tables;
alter table Clientes add Sexo char(1);
alter table Clientes add Renda float;
desc Clientes;
alter table Clientes change Estado UF char(2);
alter table clientes change Cidade Municipio varchar(60);
alter table Clientes modify Idade int;
alter table Clientes drop Municipio;
alter table Clientes drop UF;
drop table Clientes;
show tables;
