USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

#INNER JOIN
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;

#LEFT JOIN
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;

#RIGHT JOIN
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

#FULL JOIN NÃO EXISTE EM SQL
#SELECT * FROM funcionarios f FULL JOIN veiculos v ON v.funcionario_id = f.id;
#EQUIVALENTE É A UNIÃO ENTRE LEFT E RIGHT
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION all
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

#INSERINDO UM CARRO EM VEICULOS
INSERT INTO veiculos  (funcionario_id, veiculo, placa) VALUES (3, 'MOTO', 'BRQ1911');

#criei tabela
create table cpfs
(
id int unsigned not null,
cpf varchar(14) not null,
PRIMARY KEY(id),
constraint fk_cpf foreign key(id) references funcionarios (id) 
);
#preenchi a tabela
insert into cpfs (id, cpf) values (1, '111.111.111-11');
insert into cpfs (id, cpf) values (2, '211.111.111-11');
insert into cpfs (id, cpf) values (3, '311.111.111-11');
insert into cpfs (id, cpf) values (4, '411.111.111-11');
#relacionar ela com uma outra
SELECT*FROM cpfs;

#inner join tradicional
SELECT*FROM funcionarios INNER JOIN cpfs ON funcionarios.id = cpfs.id;
#inner join curto
SELECT*FROM funcionarios INNER JOIN cpfs using(id);

#----------- ------------ ----------- ------------- ---------- self join!
#ceiando tabela

CREATE TABLE clientes 
(
id int unsigned not null auto_increment,
nome varchar(45) not null,
quem_indicou int unsigned,
PRIMARY KEY (id),
constraint fk_quem_indicou foreign key (quem_indicou) references clientes(id)
);
#dados
INSERT INTO clientes (id, nome, quem_indicou) values (1, 'Andre', null);
INSERT INTO clientes (id, nome, quem_indicou) values (2, 'Samuel', 1);
INSERT INTO clientes (id, nome, quem_indicou) values (3, 'Carlos', 2);
INSERT INTO clientes (id, nome, quem_indicou) values (4, 'Rafael', 1);

select * from clientes;

#SELF JOIN 
select c1.nome as cliente, c2.nome as "quem indicou" 
from clientes c1 join clientes c2  on c1.quem_indicou = c2.id;

#RELACIONAMENTOS TRIPLOS
SELECT * FROM funcionarios 
INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id 
INNER JOIN cpfs ON cpfs.id = funcionarios.id;

#---------------------------------------------------------------------------------
#---------------------------------------------------------------------------------
#visoes visoes   visoes  visoes  visoes  visoes  visoes  visoes  visoes  visoes  v
#---------------------------------------------------------------------------------
#---------------------------------------------------------------------------------
#cria
CREATE view funcionarios_a as select * from funcionarios where SALARIO >= 1800;
#olha
SELECT * FROM funcionarios_a;
#muda um dos resultados para poder ver a diferença
update funcionarios set salario = 1999 where id = 4;
#deleta
DROP VIEW funcionarios_a;


