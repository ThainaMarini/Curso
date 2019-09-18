create database Aula; -- criar um bd
show databases; -- ver os bd
use Aula; -- acessar o bd (localhost:3306/Aula)

create database Escola;
show databases;
create database Secretaria;
create database Biblioteca;
create database Diretoria;
show databases;
use Escola;
create table Alunos (
CodAluno int key ,
Nome varchar(50),
Endereco varchar(100),
Cidade varchar(75),
Estado char(2),
Sexo char(1),
CPF char(11),
DataNasc date );
show tables;
