create database Loja;
use Loja;

create table Clientes (
codCliente int key,
Nome varchar (50),
Endereco varchar(50),
Bairro varchar(50),
CEP varchar(8),
Cidade varchar(50),
Estado char(2),
DataCadastro date,
Email varchar(255),
Site varchar(255),
NomePai varchar(50),
NomeMae varchar(50));
desc Clientes;

create table Fornecedores(
codFornecedor int key,
Nome varchar(50),
Cidade varchar(50),
Estado char(2));
desc Fornecedores;

create table Produtos(
codProduto int key,
Descricao varchar(50),
PrecoCusto float(10,2),
MargemLucro int,
PrecoVenda float(10,2),
codFornecedor int,
foreign key (codFornecedor)
references
Fornecedores(codFornecedor));
desc Produtos;

create table Compras(
codCompra int key,
DataCompra date,
ValorTotal float(10,2),
codCliente int,
foreign key (codCliente)
references
Cliente(codCliente));
desc Compras;

create table ComprasItens (
codCompraItem int key,
Quantidade float(10,2),
Preco float(10,2),
codCompra int,
foreign key (codCompra)
references
Compras(codCompra),
codProduto int,
foreign key (codProduto)
references
Produtos(codProduto) );
desc ComprasItens;

create table Entradas (
codEntrada int key,
DataEntrada date,
SubTotal float(10,2),
Desconto float(10,2),
Total float(10,2),
codFornecedor int,
foreign key (codFornecedor)
references
Fornecedores(codFornecedor));
desc Entradas;

create table EntradasProdutos(
codEntradaProduto int key,
Qtd int,
Preco float(10,2),
codEntrada int,
foreign key (codEntrada)
references
Entradas(codEntrada),
codProduto int,
foreign key (codProduto)
references
Produtos(codProduto));
desc EntradasProdutos;

alter table EntradasProdutos add Total float;
alter table ComprasItens add Total float;
alter table Fornecedores add DataCdastro date;
alter table Produtos add DataCadastro date;
alter table Produtos add AliquotalCMS integer;
alter table Produtos add ValorICMS float;
alter table Clientes add QtdeFilhos integer;
alter table Clientes add Renda float;
alter table EntradasProdutos change Qtd Quantidade int;
alter table Compras change ValorTotal TotalDaTabela int;
alter table Entradas change Total ValorTotal int;
alter table Clientes modify Email Text;
alter table Clientes modify Site varchar(100);
alter table Clientes modify Bairro varchar(200);
alter table EntradasProdutos modify Quantidade float;
alter table ComprasItens modify Quantidade float;
alter table Clientes drop NomePai;
alter table Clientes drop NomeMae;
alter table Produtos drop MargemLucro;
alter table EntradasProdutos drop Qtd;
alter table Entradas drop Desconto;
alter table Produtos drop CodFornecedor;
rename table Clientes to ClientesPreferenciais;
rename table ComprasItens to ComprasProdutos;
drop table Produtos;
drop table Fornecedores;
drop table Compras;
drop table ComprasProdutos;
drop database Loja;


