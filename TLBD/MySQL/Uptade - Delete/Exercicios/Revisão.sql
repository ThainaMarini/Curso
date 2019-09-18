create database Revisão;
use Revisão;
create table Alunos(
Codigo int key,
Nome Varchar(50),
Nota1 float,
Nota2 float,
Media float);

insert into Alunos
values(1,'Thiago','8','6','7'),
      (2,'Paulo','10','8','9'),
      (3,'Maria','7','9','8'),
      (4,'Bruno','6','6','6'),
      (5,'Pedro','5','7','6'),
      (6,'Flavia','4','6','5');

select *from Alunos;

update Alunos
set nome = 'Ana Flavia'
where nome = 'Flavia';

update Alunos
set Nota1='8'
where Nota1='6';
update Alunos
set Nota2='8'
where Nota2='6';
update Alunos
set Media='8'
where Media='6';

delete from Alunos
where Codigo='1';

delete from Alunos
where Codigo='3';

select *from Alunos
where nome='Nome' or nome='Paulo' or nome='Bruno' or nome='Pedro' or nome='Ana Flavia' and media='9' or media='8' or media='5';

select *from Alunos
where nota1>='6';

select *from Alunos
where media<='6';

delete from Alunos
where codigo>0;

drop table Alunos;

drop database Revisão;