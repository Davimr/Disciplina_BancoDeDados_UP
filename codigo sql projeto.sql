create table funcionario
   (Cpf_func int,
   Nome_func varchar(50)not null,
   Primary key(Cpf_func));



create table projeto
   (Cod_proj int,
   Nome_proj varchar(30)not null,
   Uf_proj varchar(10)not null,
   Primary key(Cod_proj));



create table FuncionarioProjeto
   (Id_funcproj int,
   Cpf_func int,
   Cod_proj int,
   Horas_trab int,
   Primary key(Id_funcproj),
   Foreign key(Cpf_func)references funcionario,
   Foreign key(Cod_proj)references projeto);