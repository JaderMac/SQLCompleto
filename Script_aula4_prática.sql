use curso_sql;

insert into funcionarios (id, nome, salario, departamento) values (1, 'Fernando', 1400, 'TI');
insert into funcionarios (id, nome, salario, departamento) values (2, 'Guilherme', 2500, 'Juridico');
insert into funcionarios (nome, salario, departamento) values ('FaBIO', 1400, 'TI');
insert into funcionarios (nome, salario, departamento) values ('jOSÉ', 1800, 'JURIDICO');
insert into funcionarios (nome, salario, departamento) values ('ISABELA', 2200, 'MKT');

select * from funcionarios;
select * from funcionarios where salario > 2000;
select * from funcionarios where nome = 'jOSÉ';
select * from funcionarios where id = 1;

update funcionarios set salario = salario * 1.1 where id = 1;

set sql_safe_updates = 0; /*se mudar para 1 ele ativa*/
update funcionarios set salario =  salario * 1.1;
update funcionarios set salario =  round(salario * 1.1, 2);

delete from funcionarios where id = 5;

insert into veiculos (funcionario_id, veiculo, placa) values (1, 'Carro', 'SBT-1234');
insert into veiculos (funcionario_id, veiculo, placa) values (1, 'Carro', 'SBT-1235');

SELECT * FROM veiculos;

insert into salarios (faixa, inicio, fim) values ('anal.jr', 1000, 2000);
insert into salarios (faixa, inicio, fim) values ('anal.pleno', 2000, 4000);

select * from salarios;

select nome as 'funcionario', salario from funcionarios f where f.salario > 2000;

select*from funcionarios where nome = 'Guilherme'
union
select*from funcionarios where id = 2;

update veiculos set funcionario_id = 3 where id = 2;


