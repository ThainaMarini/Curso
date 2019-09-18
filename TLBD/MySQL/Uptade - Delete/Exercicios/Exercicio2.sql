create database Escola;
use Escola;
create table Escola(
numero int key,
cidade varchar(50),
DiretorGeral varchar(50),
DiretorServico varchar(50),
CoordenadorPedagogico varchar(50));

insert into Escola
values(009,'Mococa','Inês','José Cortez','Rodrigo Perre');
select *from Escola;

create table Cursos (
CodCurso int key,
Nome varchar(50),
CoordenadorCurso varchar(50));

insert into Cursos
values(1,'Informática','Rodrigo Piantino'),
      (2,'Mecatronica','Cleber Bueno'),
      (3,'Eletronica','João da Silva'),
      (4,'Eletrotécnica','Maria Dos Santos'),
      (5,'Ensino Médio','Rafael Borges');
select *from Cursos;

create table Professores(
CodProfessor int key auto_increment,
Nome varchar(50),
Cidade varchar(50),
Estado varchar(2),
Telefone varchar(13));

insert into Professores
values (null,'Tarcísio','Mococa','SP','19225464751'),
       (null,'Thiago','Mococa','SP','19245791345'),
       (null,'Luís Marcelo','Mococa','SP','19246591725'),
       (null,'Maicon','Mococa','SP','19246591278');

select *from Professores;

create table Disciplinas(
CodDisciplina int key,
Nome varchar(50),
CodCurso int,
CodProfessor int,
foreign key (CodCurso) references Cursos (CodCurso),
foreign key (CodProfessor) references Professores (CodProfessor));

insert into Disciplinas
values (1,'LPOO',1,4),
       (2,'GSO',1,3),
       (3,'TPI II',1,3),
       (4,'An. Sist.',1,2),
       (5,'TLBD II',1,1);
select *from Disciplinas;

create table Alunos(
CodAluno int key,
Nome varchar(50),
Endereco varchar(50),
Bairro varchar(50),
CEP varchar(2),
Cidade varchar(50),
Estado varchar(2),
Telefone varchar(13),
Celular varchar(13),
Email varchar(255));

insert into Alunos
values (18248,'Vinicius Quilice','Rua dos Limoeiros','Clube do Vale','92','Mococa','SP','366559','192819751','vinicius.quilice@gmail.com'),
       (18244,'Kailane Elias Alves','Wenceslau de Almeida','Centro','37','Guaranésia','MG','24845948','11245971351','kailane.elias@gmail.com'),
       (18341,'Thaina Marini','Travessa da Fé','Santa Cruz','13','Mococa','SP','36562930','19992582689','thainamnobrega@hotmail.com'),
       (18295,'Jussa Del Bel','Maricotinha','Centro','39','Monte Santo','MG','36541895','1294581674','jussaradelbel@hotmail.com'),
       (18345,'Gustavo Melati','Barão de Monte Santo','Centro','14','Mococa','SP','25491578','119818918','gustavomelati@hotmail.com');
select *from Alunos;