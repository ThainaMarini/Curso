create database loja;
use loja;
create table produto(
  cod_produto int key auto_increment,
  descricao varchar(100),
  preco_custo numeric(10,2),
  preco_venda numeric(10,2),
  estoque numeric(10,2)
);