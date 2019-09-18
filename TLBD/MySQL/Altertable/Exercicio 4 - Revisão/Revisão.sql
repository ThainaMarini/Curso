create database Vendas;
use Vendas;
Create table Clientes(
idClientes int key,
Nome varchar(45),
Estado char(2));

Create table Produtos(
idProdutos int key,
Descricao varchar(45),
PrecoVenda float(10,2));

Create table Vendas(
idVendas int key,
idClientes int,
DataVenda date,
Total float(10,2),
foreign key (idClientes)
references
Clientes(idClientes));

create table Produtos(
idProdutos int key,
Descricao varchar(45),
PrecoVenda float(10,2));

create table VendasItens(
idVendaItem int key,
idVenda int,
idProduto int,
Qtde float(10,2),
Valor float(10,2),
Total float(10,2),
foreign key (idVenda)
references
Vendas(idVendas),
foreign key (idProduto)
references
Produtos(idProduto));

rename table Clientes to Consumidores;
alter table Consumidores add DataAniversario date;
alter table Consumidores add Renda float;
alter table Consumidores add QtdeFilhos integer;
alter table Consumidores add NomeEsposa varchar(60);
alter table Consumidores add SituacaoCivil varchar(10);
alter table Vendas add FormaPagamento varchar(50);
alter table Vendas add ValorICMS float;
alter table Vendas add TotalProdutos float;
alter table Vendas add DataPagamento date;
rename table VendasItens to Itens;
alter table Produtos add PrecoCusto float;
alter table Produtos add Aliquota integer;
alter table Produtos add ValorICMS float;
alter table Produtos add MargemLucro float;
alter table Produtos add DataCadastro date;
alter table Produtos add Estoque integer;
alter table Produtos add EstoqueMaximo integer;
alter table Consumidores change NomeEsposa Esposa varchar(60);
alter table Consumidores change Renda Salario float;
alter table Consumidores change SituacaoCivil EstadoCivil varchar(10);
alter table Consumidores change Nome NomeCompleto varchar(45);
alter table Vendas change IdClientes CodCliente int;
alter table Vendas change TotalProdutos QtdeProdutos float;
alter table Produtos change Aliquota ICMS integer;
alter table Produtos change MargemLucro PercLucro float;
alter table Produtos change EstoqueMaximo EstoqueMinimo integer;
alter table Consumidores modify Estado char(2);
alter table Vendas modify FormaPagamento integer;
alter table Itens modify Qtde integer;
alter table Consumidores drop DataAniversario;
alter table Vendas drop DataPagamento;
alter table Produtos drop EstoqueMinimo;
alter table Produtos drop ICMS;
alter table Itens drop Total;
alter table Produtos drop PrecoVenda;
drop table Consumidores;
drop table Vendas;
drop table Produtos;
drop database Vendas;
