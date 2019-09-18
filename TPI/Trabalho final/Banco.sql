
CREATE TABLE categorias (
  CodCategoria integer ,
  Nome varchar(50) ,
  PRIMARY KEY  (CodCategoria)
); 


INSERT INTO categorias  VALUES
 (1,'LIVROS'),
 (2,'INFORMATICA'),
 (3,'PAPELARIA');



CREATE TABLE clientes (
  codcliente integer,
  nome varchar(50) default NULL,
  cidade varchar(50) default NULL,
  estado varchar(2) default NULL,
  PRIMARY KEY  (codcliente)
);

CREATE TABLE fornecedores (
  CodFornecedor integer,
  Nome varchar(50) default NULL,
  Cidade varchar(50) default NULL,
  Estado varchar(50) default NULL,
  PRIMARY KEY  (CodFornecedor)) ;


INSERT INTO fornecedores  VALUES
 (1,'LIVRARIA SARAIVA','RIBEIRAO PRETO','SP'),
 (2,'SAMSUNG','CURITIBA','PR'),
 (3,'SATELLITE','SAO PAULO','SP'),
 (4,'ASUS DO BRASIL LTDA','BELO HORIZONTE','MG'),
 (5,'FABER CASTELL','SAO CARLOS','SP');


CREATE TABLE produtos (
  CodProduto integer,
  Descricao varchar(50) default NULL,
  precoCusto numeric(10,2) default NULL,
  PrecoVenda numeric(10,2) default NULL,
  CodCategoria integer,
  CodFornecedor integer,
  PRIMARY KEY  (CodProduto),
  FOREIGN KEY (CodCategoria)
  REFERENCES categorias (CodCategoria),
  FOREIGN KEY (CodFornecedor)
  REFERENCES fornecedores (CodFornecedor));

INSERT INTO produtos (CodProduto,Descricao,PrecoCusto,PrecoVenda,CodCategoria,CodFornecedor) VALUES
 (1,'APRENDENDO PHP EM 21 DIAS',10.00,59.90,1,1),
 (2,'APRENDENDO ASP EM 21 DIAS',20.00,49.90,1,1),
 (3,'DOMINANDO O DELPHI 7',30.00,80.00,1,1),
 (4,'INTRODUCAO AO VB.NET',40.00,99.99,1,1),
 (5,'INICIANDO NO VB EXPRESS',50.00,75.00,1,1),
 (6,'MONITOR CRT SAMSUNG 17',400.00,499.00,2,2),
 (7,'MONITOR CRT SAMSUNG 15',300.00,399.00,2,2),
 (8,'MONITOR LCD SAMSUNG 15',400.00,550.00,2,2),
 (9,'MONITOR LCD SAMSUNG 17',500.00,650.00,2,2),
 (10,'TECLADO SATELLITE',15.00,30.00,2,3),
 (11,'MOUSE SATELLITE',12.99,25.99,2,3),
 (12,'FONTE DE ENERGIA SATELLITE',45.00,99.00,2,3),
 (13,'CAIXAS DE SOM SPEEKER',35.00,57.99,2,3),
 (14,'GABINETE SATELLITE',75.00,150.00,2,3),
 (15,'PLACA MAE ASUS',250.00,399.00,2,4),
 (16,'PAPEL A4 CHAMEX',7.80,9.99,3,5),
 (17,'CANETA BIC AZUL',0.59,0.79,3,5),
 (18,'CANETA BIC VERMELHA',0.59,0.79,3,5),
 (19,'LAPIS N2 FABER CASTELL',0.45,0.59,3,5),
 (20,'LAPIS N1 FABER CASTELL',0.45,0.59,3,5),
 (21,'BORRACHA BRANCA FABER CASTELL',0.20,0.39,3,5);

CREATE TABLE vendas (
  CodVenda integer,
  CodCliente integer,
  DataVenda date,
  PRIMARY KEY  (CodVenda),
  FOREIGN KEY (CodCliente)
  REFERENCES Clientes (CodCliente));


CREATE TABLE vendasitens (
  CodVendaItem integer,
  CodVenda integer,
  CodProduto integer,
  Qtde integer,
  PRIMARY KEY  (CodVendaItem),
  foreign key (CodVenda)
  references vendas (CodVenda),
  foreign key (CodProduto)
  references produtos (CodProduto));

