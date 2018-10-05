-- criando a estrutura

create database departamento;

use departamento;

create table departamentos (
	id_departamento int identity (1,1) primary key,
    nome_departamento varchar(50));
    
create table funcionarios (
	id_funcionario int identity (1,1) primary key ,
    id_departamento int,
    nome_funcionario varchar(50),
    foreign key (id_departamento) references departamentos(id_departamento));
    

-- inserindo os dados    
    
insert into departamentos (nome_departamento) values ('TI');
    
insert into departamentos (nome_departamento) values ('RH');
    
insert into departamentos (nome_departamento) values ('Financeiro');
    
insert into departamentos (nome_departamento) values ('Patrimonio'); 
    
insert into funcionarios (id_departamento, nome_funcionario) values (1, 'Carlos');
    
insert into funcionarios (id_departamento, nome_funcionario) values (1, 'Marcio');
    
insert into funcionarios (id_departamento, nome_funcionario) values (2, 'Marina');
    
insert into funcionarios (id_departamento, nome_funcionario) values (3, 'Bruno');
    
-- selecionando os dados

select * from departamentos;

select * from funcionarios;

SELECT departamentos.*, funcionarios.* FROM departamentos INNER JOIN funcionarios 
	ON departamentos.id_departamento = funcionarios.id_departamento;

SELECT departamentos.*, funcionarios.* FROM departamentos LEFT JOIN funcionarios 
	ON departamentos.id_departamento = funcionarios.id_departamento;



-----------------------------------------------------------------------------------------------------------------------------

create table equipamentos (
    id_equipamentos int identity(1,1) primary key,
	nome_equipamento varchar(50) not null,
	valor_equipamento real,
	tipo_equipamento varchar (50));

create table sala (
    id_sala int identity(1,1) primary key,
	id_equipamentos int,
	numero_sala int,
	predio_sala varchar (50),
	andar_sala int,
	foreign key (id_equipamentos) references equipamentos);


	insert into equipamentos (nome_equipamento, valor_equipamento, tipo_equipamento) values ('vassoura', 433, 'limpeza');
	insert into equipamentos (nome_equipamento, valor_equipamento, tipo_equipamento) values ('rodo', 339.6, 'limpeza');
	insert into equipamentos (nome_equipamento, valor_equipamento, tipo_equipamento) values ('esfregão',445.2, 'limpeza');


	insert into sala (numero_sala, predio_sala, andar_sala) values (1, 'roxo', 13);
	insert into sala (numero_sala, predio_sala, andar_sala) values (2, 'verde', 10);


    SELECT equipamentos.*, sala.* FROM equipamentos INNER JOIN sala
	ON equipamentos.id_equipamentos = sala.id_sala;

	SELECT equipamentos.*, sala.* FROM equipamentos LEFT JOIN sala
	ON equipamentos.id_equipamentos = sala.id_sala;


	
	SELECT sala.*, equipamentos.* FROM sala LEFT JOIN equipamentos
	ON sala.id_sala = equipamentos.id_equipamentos;
	

	
	SELECT equipamentos.*, sala.* FROM equipamentos FULL OUTER JOIN sala
	ON equipamentos.id_equipamentos = sala.id_sala;

    SELECT sala.*, equipamentos.* FROM sala CROSS JOIN equipamentos

	SELECT * FROM sala 
	WHERE predio_sala = 'roxo'

	SELECT nome_equipamento FROM equipamentos
	WHERE nome_equipamento = 'vassoura'

