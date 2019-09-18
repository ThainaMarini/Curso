SELECT * FROM funcionarios
Where codigo=50;

Update funcionarios
set salario=579
where codigo=50;

select *from funcionarios
where estado='GO';

update funcionarios
set salario=salario*1.25
where estado='GO';

select *from funcionarios
where estado='MG';

delete from funcionarios
where estado='MG';
