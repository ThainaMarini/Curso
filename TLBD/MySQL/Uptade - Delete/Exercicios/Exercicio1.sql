select *from funcionarios
where codigo=3;
update funcionarios
set salario=375
where codigo=3;

select *from funcionarios
where codigo=50;
update funcionarios
set salario=579
where codigo=50;

select *from funcionarios
where codigo=45;
update funcionarios
set salario=999.99
where codigo=45;

select *from funcionarios
where codigo=6;
update funcionarios
set salario=1050
where codigo=6;

select *from funcionarios
where estado='SP';
update funcionarios
set salario=750
where estado='SP';

select *from funcionarios
where estado='MG';
update funcionarios
set salario=975.67
where estado='MG';

select *from funcionarios
where estado='RJ';
update funcionarios
set salario=572
where estado='RJ';

select *from funcionarios
where estado='PR';
update funcionarios
set salario=750
where estado='PR';

select *from funcionarios
where cidade='Porto Alegre';
update funcionarios
set salario=1500
where cidade='Porto Alegre';

select *from funcionarios
where cidade='São Paulo';
update funcionarios
set salario=4500
where cidade='São Paulo';

select *from funcionarios
where salario<300;
update funcionarios
set salario=399
where salario<300;

select *from funcionarios
where codigo=51;
update funcionarios
set codigo=101
where codigo=51;

select *from funcionarios
where codigo=52;
update funcionarios
set codigo=102
where codigo=52;

select *from funcionarios
where codigo=53;
update funcionarios
set codigo=103
where codigo=53;

select *from funcionarios
where codigo=54;
update funcionarios
set codigo=104
where codigo=54;

select *from funcionarios
where codigo=55;
update funcionarios
set codigo=105
where codigo=55;

select *from funcionarios;
update funcionarios
set salario=salario*1.10;

select *from funcionarios
where estado='GO';
update funcionarios
set salario=salario*1.25
where estado='GO';

select *from funcionarios
where estado='BA';
update funcionarios
set salario=salario-(salario*0.14)
where estado='BA';

select *from funcionarios
where codigo=16;
update funcionarios
set salario=2000
where codigo=16;

select *from funcionarios
where codigo=20;
update funcionarios
set salario=2000
where codigo=20;

select *from funcionarios
where codigo=24;
update funcionarios
set salario=2000
where codigo=24;

select *from funcionarios
where codigo=30;
update funcionarios
set salario=2000
where codigo=30;

select *from funcionarios
where codigo=40;
update funcionarios
set salario=2000
where codigo=40;

select *from funcionarios
where codigo=1;
delete from funcionarios
where codigo=1;

select *from funcionarios
where codigo=7;
delete from funcionarios
where codigo=7;

select *from funcionarios
where codigo=10;
delete from funcionarios
where codigo=10;

select *from funcionarios
where codigo=54;
delete from funcionarios
where codigo=54;

select *from funcionarios
where codigo=79;
delete from funcionarios
where codigo=79;

select *from funcionarios
where estado='GO';
delete from funcionarios
where estado='GO';

select *from funcionarios
where estado='MG';
delete from funcionarios
where estado='MG';

select *from funcionarios
where salario>1000;
delete from funcionarios
where salario>1000;

select *from funcionarios
where salario<100;
delete from funcionarios
where salario<100;

select *from funcionarios
where nome='Jose Da Silva';
delete from funcionarios
where nome='Jose da Silva';

select *from funcionarios;
delete from funcionarios;