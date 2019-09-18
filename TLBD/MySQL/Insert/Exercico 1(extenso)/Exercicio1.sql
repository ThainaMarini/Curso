create database Loja;
use Loja;

create table Funcionarios(
Cracha int key auto_increment,
Nome varchar(200),
Salario float(7,2),
TempoServico int,
Idade int,
DataNasc date);

desc Funcionarios;

insert into Funcionarios
values (null,'Euclides da Cunha', 100.00, 3, 50, '2008-09-24');

insert into Funcionarios
values (null,'Machado de Assis', 230.98, 4, 44, '2000-09-06');

insert into Funcionarios
values (null,'Monteiro Lobato', 300.00, 6, 3, null);

insert into Funcionarios(Salario,TempoServico,Idade)
values (456.98, 7, 2);

insert into Funcionarios(Salario,TempoServico,DataNasc)
values (40.00, 2 , '2005-08-04');

insert into Funcionarios(Nome,Salario,TempoServico)
values('Silvio Santos', 34.00, 3);

select *from Funcionarios;
