-- Crie a tabela abaixo dentro da database Biblioteca e Secretaria
create database Biblioteca;
create database Secretaria;
use Biblioteca;
create table Alunos (
CodAluno int key,
Nome varchar(50),
Endereco varchar(100),
Cidade varchar(75),
Estado char(2),
Sexo char(1),
CPF char(11),
DataNasc date );

use Secretaria;
create table Alunos (
CodAluno int key,
Nome varchar(50),
Endereco varchar(100),
Cidade varchar(75),
Estado char(2),
Sexo char(1),
CPF char(11),
DataNasc date );
show tables;
desc Alunos;
