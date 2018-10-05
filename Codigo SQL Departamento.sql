create database departamento
use departamento




create table departamento
    (id_dept int,
	nome_dept varchar(20),
	predio varchar(15),
	orcamento numeric(12,2),
    primary key(id_dept));

insert into departamento (id_dept, nome_dept, predio) values (01, 'Vendas', 'amarelo')
insert into departamento (id_dept, nome_dept, predio) values (02, 'Estoque', 'amarelo')
insert into departamento (id_dept, nome_dept, predio) values (03, 'T.I', ' verde')


create table pessoas
    (id int,
    id_dept int,
    nome varchar(20)not null,
    sobrenome varchar (50) not null,
    salario numeric(8,2),
    primary key(id),
    foreign key(id_dept)references departamento);



insert into pessoas (id, nome, sobrenome) values (1, 'joão', 'souza')
insert into pessoas (id, nome, sobrenome) values (2, 'ana', 'correia')
insert into pessoas (id, nome, sobrenome) values (3, 'silvia', 'silva')
insert into pessoas (id, nome, sobrenome) values (4, 'marcos', 'jesus')  



   select * from departamento order by id_dept;

   select * from pessoas order by id;

   select * from pessoas order by id desc;