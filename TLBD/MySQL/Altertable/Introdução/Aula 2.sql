create database escola;
show databases;
use escola;
create table Alunos(
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
create table Notas(
CodNota int key,
CodAluno int,
Nota1 float (4,2),
Nota2 float (4,2),
Media float (4,2),
foreign key (CodAluno) -- chave estrangeira
references -- referencia da tabela ...
Alunos(CodAluno));
desc Notas;
-- excluir estrangeira primeiro e depois primaria
Drop table Notas; -- pois se refere a Alunos
Drop table Alunos;
show tables;
use teste;
Drop database Escola;
show databases;