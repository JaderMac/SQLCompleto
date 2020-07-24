CREATE DATABASE curso_sql;

USE curso_sql;

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
	nome varchar(45) not null ,
	salario double not null  default '0',
	departamento varchar(45) not null,
	PRIMARY KEY (id)
);

create table veiculos
(
	id int unsigned  not null auto_increment,
    funcionario_id  int unsigned default null,
    veiculo varchar(45) not null default '',
	placa varchar(10) not null default '',
    primary key (id),
    constraint fk_veiculos_funcionarios foreign key (funcionario_id) references funcionarios(id)
);

create table salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    primary key (faixa)
);

alter table funcionarios change column nome nome_func varchar(45) not null;
alter table funcionarios change column nome_func nome varchar(45) not null;

drop table salarios;

create index departamentos on funcionarios (departamento);
create index nomes on funcionarios (nome(6));






