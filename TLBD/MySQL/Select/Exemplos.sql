use aula;
select *from Funcionarios; -- Seleciona todos os campos e dados

select codigo, nome from Funcionarios; -- Seleciona apenas dois campos

select nome from Funcionarios;  -- Seleciona apenas um campo

select *from Funcionarios
where estado='SP'; -- Seleciona apenas um dado de um campo especifico

select codigo, nome from Funcionarios
where estado='MG';  -- Seleciona campos e dados especificos

select *from Funcionarios
where salario>10000; -- Seleciona todos os campos com o valor de um dado especifico

select *from Funcionarios
where salario>1000 and cidade='mococa'; -- Seleciona todos os campos com valores de campos especificos

select codigo, nome, salario from Funcionarios
where salario>=500 and salario <=1500;

select codigo,nome,salario from Funcionarios
where salario between 500 and 1500;  -- Codigo between=entre

select *from Funcionarios
where salario<1000 or salario>2000;

select *from Funcionarios -- like=operador de comparação
where nome like 'Kelly%'; -- Seleciona todos os campos com dados que começam com Kelly

select *from Funcionarios
where nome like 'A%'; -- Seleciona todos os campos com dados que começam com A

select *from Funcionarios order by  -- Seleciona em ordem do campo ..
nome asc; -- Campo nome em ordem crescente

select *from Funcionarios order by  -- Seleciona em ordem do campo ..
nome desc; -- Campo nome em ordem decrescente

select max(salario) -- Não pode ter espaço entre ()
from funcionarios;   -- Seleicona o maior salário dos funcionários

select min(salario) -- Mostra o menor salário dos funcionários
from funcionarios;

select avg(salario) -- Mostra a média de todos os salarios
from funcionarios;

select count(*) -- Count=contador  -- Mostra o total de funcionarios
from funcionarios;

select sum(salario) -- Soma dos salarios de todos os funcionarios
from funcionarios;
