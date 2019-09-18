create database AulaBD;
use AulaBD;

create table Clientes(
Codigo int key,
Nome varchar(50),
Cidade varchar(50),
Estado varchar(2));

create table Alunos(
Codigo int key auto_increment, -- Numera��o autom�tica
Nome varchar(50),
Cidade varchar(50),
Estado varchar(2));

insert into Clientes(codigo,nome,cidade,estado) -- Inserir dados na tabela Clientes nos campos ...
values (1,'Jose Da Silva', 'S�o Jose', 'SP');    -- valores : ...

select *from Clientes;                           -- exibir todos os dados da tabela Clientes

insert into Clientes (codigo,nome)
values (2, 'Maria Joaquina');

insert into Clientes
values (3, 'Osmar Pereira', 'Guaxupe', 'MG');  -- Se inserir os dados na mesma ordem da tabela,n � necessario escrever os campos

insert into Clientes
values (4, 'Adriana' , NULL, NULL);      -- Inserir dados vazios

insert into Alunos(nome)
values('Adriana');

select *from Alunos;

insert into Alunos(nome,cidade)
values('Osmar Pereira','S�o Jose');

insert into Alunos(codigo,nome,cidade)
values(10,'Suzana','S�o Jose');      -- Inserindo c�digo em uma chave auto_incremente criou um buraco no banco

insert into Alunos
values(null,'Euclides','Guaxupe','MG');

