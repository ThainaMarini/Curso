create table produtos ( 
codigo integer,
descricao varchar(50),
categoria integer,
primary key (codigo));

create table componentes ( 
codigo integer,
codproduto integer,
descricao varchar(50),
qtd integer,
primary key (codigo), 
foreign key (codproduto)
references produtos (codigo));

create table categoria ( 
codigo integer,
descricao varchar(50),
primary key (codigo));

insert into produtos values (1,'Martelo', 1 ),(2,'Chave de Fenda', 1 ),
(3,'Alicate', 2),(4,'Desmagnetizador', 2),(5,'parafuso',null);

select * from produtos;


insert into componentes values (1,3,'Adaptador CF', 1 ),(2,4,'CaboMod A1',2 ),
(3,4,'CaboMod A1', 1);


select * from componentes;


insert into categoria values (1,'Ferramenta A1'),(2,'Ferramenta B1'),
(3,'Ferramenta C1'),(4,'Ferramenta D1');

select * from categoria;



