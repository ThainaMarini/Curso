create database Aula;
use Aula;
create table Aluno(
RA int key auto_increment,
Aluno varchar(50),
Curso varchar(50),
Conceito varchar(2),
Situacao varchar(20));
desc Aluno;
insert into Aluno values
(null,'Machado de Assis', 'Informatica','I','REPROVADO'),
(null,'Eça de Queiroz', 'Informatica','I','REPROVADO'),
(null,'Euclides da Cunha', 'Informatica','I','REPROVADO'),
(null,'Zibia Gaspareto', 'Informatica','I','REPROVADO'),
(null,'Fernando Pessoa', 'Informatica','I','REPROVADO'),
(null,'Monteiro Lobato', 'Web Design','I','REPROVADO'),
(null,'Jorge Amado', 'Administracao','I','REPROVADO'),
(null,'Anita Garibaldi', 'Informatica','I','REPROVADO'),
(null,'Graciliano Ramos', 'Web Design','I','REPROVADO'),
(null,'Clarice Lispector', 'Administrcao','I','REPROVADO');
select *from Aluno;

create table Veiculo(
CodVeiculo int key auto_increment,
Descricao varchar(100),
Marca varchar(20),
Preco float(10.2));
desc Veiculo;

insert into Veiculo values
(1001,'Corsa Sedan','GM',26000.00),
(null,'Corsa Hatbach','GM',29000.00),
(null,'Astra Sedan','GM',50000.00),
(null,'Palio','FIAT',31000.00),
(null,'Siena','FIAT',34000.00),
(null,'Stilo','FIAT',45000.00),
(null,'Gol','WK',29000.00),
(null,'Fox','WK',30000.00);
select *from Veiculo;

