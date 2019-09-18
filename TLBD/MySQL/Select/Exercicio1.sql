use aula;
select *from Funcionarios;

select codigo,nome from Funcionarios;

select nome from Funcionarios;

select nome,cidade,estado from Funcionarios;

select nome,cidade from Funcionarios;

select nome, salario from Funcionarios;

select *from Funcionarios
where estado='SP';

select codigo,nome from Funcionarios
where estado='MG';

select nome from Funcionarios
where estado='BA';

select nome,cidade,estado from Funcionarios
where estado='RS';

select nome,salario from Funcionarios
where estado='AM';

select *from Funcionarios
where estado='BA';

select nome,estado from Funcionarios
where estado='ES';

select *from Funcionarios
where salario>10000;

select nome,salario from Funcionarios
where salario<100;

select nome,cidade,salario from Funcionarios
where salario<=500;

select codigo,nome,salario from Funcionarios
where salario>500 and salario<1500;

select *from funcionarios
where salario<1000 or salario>2000;

select *from funcionarios
where salario=1000 or salario=2000;

select nome,salario from Funcionarios
where salario=1000 or salario=2000;

select nome,cidade,salario from Funcionarios
where salario=3000 or salario=350;

select *from Funcionarios
where salario>10000 or salario<100;

select nome,salario from Funcionarios
where salario>10000 or salario<100;

select *from Funcionarios
where salario>10000 and estado='SP';

select nome,salario,estado from Funcionarios
where salario<100 and estado='BA';

select nome,salario from Funcionarios
where salario<=500 and estado='RJ';

select salario,estado from Funcionarios
where salario>500 and salario<1500 and estado='PR';

select nome from Funcionarios
where salario<1000 or salario>2000 and estado='SC';

select *from Funcionarios
where codigo=1;

select nome,salario from Funcionarios
where codigo=24;

select nome,estado from Funcionarios
where codigo=41;

select *from Funcionarios
where nome like 'Kelly%';

select nome,estado from Funcionarios
where nome like 'Rodrigo Vicente%';

select nome,salario from Funcionarios
where nome like 'Andressa Madeira%';

select *from funcionarios
where cidade='Guarulhos';

select nome,estado from funcionarios
where cidade='Mococa';

select nome,salario from Funcionarios
where cidade='Sao jose do rio pardo';

select nome,cidade,salario from Funcionarios
where cidade like '%Rio pardo';

select *from Funcionarios
where nome like 'A%';

select nome,cidade from Funcionarios
where nome like 'J%';

select nome,salario from Funcionarios
where nome like 'CR%';

select codigo,nome,salario from Funcionarios
where nome like 'M%';

select codigo,nome,salario from Funcionarios
where nome like 'Marco%';

select nome,cidade,estado from Funcionarios
where nome like 'R%';

select nome,cidade,estado from Funcionarios
where nome like 'Rodrigo%';

select *from Funcionarios
where nome like 'A%' and cidade='Mococa';

select codigo,nome,salario from Funcionarios
where nome like 'M%' and cidade='Sao jose do rio pardo';

select codigo,nome,salario from Funcionarios
where nome like 'Marco%' and estado='SP';

select nome,cidade,estado from Funcionarios
where nome like 'R%' and estado='PR';

select nome,cidade,estado from Funcionarios
where nome like 'Rodrigo%' and estado='SC';

select nome,salario from Funcionarios
order by nome asc;

select sum(salario)
from Funcionarios;

select sum(salario)
from Funcionarios
where salario>500;

select count(*)
from Funcionarios;

select count(*)
from Funcionarios
where salario>500;

select min(salario)
from Funcionarios;

select max(salario)
from Funcionarios;

select avg(salario)
from Funcionarios;
