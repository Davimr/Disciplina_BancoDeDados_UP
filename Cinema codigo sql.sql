create database cine

use cine

create table filme
   (id_film int identity (1,1),
   nome_film varchar(50) not null,
   genero_film varchar(15) not null,
   duracao_film real not null,
   classificacao_film int not null);



create table atendente
   (id_atendent int identity (1,1),
   nome_atendent varchar(50) not null,
   sexo_atendent varchar(10) not null,
   idade_atendent int not null,
   rg_atendent real not null,
   cpf_atendent real not null,
   contabancaria_atendent real not null,
   horarios_atendent real not null);
  
   



create table sala
   (id_sala int identity (1,1),
   id_film int,
   numero_sala int not null,
   capacidade_sala int not null,
   tela_sala real not null,
   som_sala varchar(50) not null);
                                            alter table sala
											  add cor_sala varchar(30);
											alter table sala
											  drop column cor_sala;


create table cliente
   (id_client int identity (1,1),
   id_sala int,
   nome_client varchar(50) not null,
   sexo_client varchar(10) not null,
   idade_client int not null,
   cpf_client real,
   aniversario_client real,
   primary key (id_client),
   foreign key (id_sala) references sala);
                                            alter table cliente
											  drop column sexo_client;



create table cartoes
   (id_cart int identity (1,1),
   id_client int,
   titular_cart varchar(50) not null,
   numero_cart int not null,
   bandeira_cart varchar(20) not null,
   codigo_cart int not null,
   vencimento_cart real not null,
   primary key (id_cart),
   foreign key (id_client) references cliente);
                                                alter table cartoes
												  add cor_cart varchar(25);
												alter table cartoes
												  drop column cor_cart;

create table atendimento
   (id_atendiment int identity (1,1),
   id_atendent int,
   id_client int,
   id_cart int,
   id_sala int,
   valor_atendiment real not null,
   data_atendiment real not null,
   horario_atendiment real not null,
   numero_atendiment int not null,
   primary key (id_atendiment),
   foreign key (id_atendent) references atendente,
   foreign key (id_client) references cliente,
   foreign key (id_cart) references cartoes,
   foreign key (id_sala) references sala);
                                                    alter table atendimento
													  add obs_atendiment varchar(100);


create table tapetes
   (id_tapets int,
   marca_tapet varchar(50) not null,
   cor_tapet varchar(40) not null,
   tipo_tapet int not null,
   fio_tapet real not null,
   primary key (id_tapets));
                                     alter table tapetes
									   alter column fio_tapet varchar(30);
								     alter table tapetes
						               alter column tipo_tapet varchar(50) not null;
								     drop table tapetes



create table cadeira
   (id_cadeir int,
   material_cadeir int,
   cor_cadeir varchar(30) not null,
   idade_cadeir real not null,
   obss_cadeir varchar(50) not null,
   primary key (id_cadeir));
                                     alter table cadeira
									   alter column material_cadeir varchar(50) not null;
									 drop table cadeira


------------------------------------------------------------- c4 -----------------------------------------------------------------------

alter table filme
   alter column id_film int not null

alter table filme
   add constraint PK_id_film primary key (id_film)



alter table atendente
   alter column id_atendent int not null

alter table atendente
   add constraint PK_id_atendent primary key (id_atendent)

alter table atendente
   add constraint cpf_atendent unique (cpf_atendent)



alter table sala
   alter column id_sala int not null

alter table sala
   add constraint PK_id_sala primary key (id_sala)

alter table sala 
   add constraint id_film foreign key (id_film) references filme

---------------------------------------------------------- c5 -----------------------------------------------------------------------

insert into filme (nome_film, genero_film, duracao_film, classificacao_film) values ('guerra mundial z', 'acao', 01.48, 16)
insert into filme (nome_film, genero_film, duracao_film, classificacao_film) values ('planeta dos macacos', 'acao', 01.56, 18)
insert into filme (nome_film, genero_film, duracao_film, classificacao_film) values ('ta chovendo hamburguer', 'comedia', 01.30, 06)
insert into filme (nome_film, genero_film, duracao_film, classificacao_film) values ('animais fantasticos', 'aventura', 02.30, 12)
insert into filme (nome_film, genero_film, duracao_film, classificacao_film) values ('o grito', 'terror', 03.00, 18)

update filme
   set nome_film='guerra dos mundos' where classificacao_film=16
update filme
   set nome_film='planeeta animal' where classificacao_film=18
update filme
   set nome_film='mundo de bob' where classificacao_film=06

delete from filme
   where nome_film='guerra dos mundos'



insert into atendente (nome_atendent, sexo_atendent, idade_atendent, rg_atendent, cpf_atendent, contabancaria_atendent, horarios_atendent) values ('Maria', 'feminino', 28, 666.888, 54.34, 0000000000, 17.02)
insert into atendente (nome_atendent, sexo_atendent, idade_atendent, rg_atendent, cpf_atendent, contabancaria_atendent, horarios_atendent) values ('Marta', 'feminino', 19, 546.456, 34.34, 888888, 19.09)
insert into atendente (nome_atendent, sexo_atendent, idade_atendent, rg_atendent, cpf_atendent, contabancaria_atendent, horarios_atendent) values ('Joao', 'masculino', 87, 666.55, 43.43, 33333, 98.09)

update atendente
   set nome_atendent='Marcia' where idade_atendent=28
update atendente
   set nome_atendent='Rita' where idade_atendent=19
update atendente
   set nome_atendent='Marcos' where sexo_atendent='masculino'

delete from atendente
   where nome_atendent='Marcos'


insert into sala (numero_sala,capacidade_sala, tela_sala, som_sala) values (09, 54, 52.2, 'adobe atimos')
insert into sala (numero_sala,capacidade_sala, tela_sala, som_sala) values (06, 76, 87.2, 'adobe atrios')
insert into sala (numero_sala,capacidade_sala, tela_sala, som_sala) values (02, 75, 09.2, 'adobe music')
insert into sala (numero_sala,capacidade_sala, tela_sala, som_sala) values (06, 988, 10.88, 'master adobe')
insert into sala (numero_sala,capacidade_sala, tela_sala, som_sala) values (12, 552, 09.32, 'adobe king')

update sala
   set numero_sala=99 where tela_sala=52.2
update sala
   set numero_sala=88 where tela_sala=87.2
update sala
   set numero_sala=66 where tela_sala=09.2

delete from sala
   where numero_sala=99


insert into cliente (nome_client, idade_client, cpf_client, aniversario_client) values ('fabio', 22, 77.777, 02.05)
insert into cliente (nome_client, idade_client, cpf_client, aniversario_client) values ('francisco', 33, 88.888, 03.09)
insert into cliente (nome_client, idade_client, cpf_client, aniversario_client) values ('paulo', 54, 99.000, 08.07)
insert into cliente (nome_client, idade_client, cpf_client, aniversario_client) values ('olando', 15, 233.33, 06.066)

update cliente
   set nome_client='carlos' where idade_client=22
update cliente
   set nome_client='jose' where idade_client=33
update cliente
   set nome_client='rafael' where idade_client=54

delete from cliente
   where nome_client='rafael'



insert into cartoes (titular_cart, numero_cart, bandeira_cart, codigo_cart, vencimento_cart) values ('fabricio', 7676, 44, 33, 33.33)
insert into cartoes (titular_cart, numero_cart, bandeira_cart, codigo_cart, vencimento_cart) values ('mateus', 7887, 23, 43, 555.5)
insert into cartoes (titular_cart, numero_cart, bandeira_cart, codigo_cart, vencimento_cart) values ('lucas', 9988, 56, 65, 444.44)

update cartoes
   set numero_cart=444 where titular_cart='fabricio'
update cartoes
   set numero_cart=000 where titular_cart='mateus'
update cartoes
   set numero_cart=777 where titular_cart='lucas'

delete from cartoes
   where titular_cart='lucas'


insert into atendimento (valor_atendiment, data_atendiment, horario_atendiment, numero_atendiment) values (55.9, 04.08, 20.04, 6)
insert into atendimento (valor_atendiment, data_atendiment, horario_atendiment, numero_atendiment) values (67.9, 09.09, 09.2, 7)
insert into atendimento (valor_atendiment, data_atendiment, horario_atendiment, numero_atendiment) values (64.0, 54.09, 87.2, 9)

update atendimento
   set valor_atendiment=09 where numero_atendiment=6
update atendimento
   set valor_atendiment=87 where numero_atendiment=7
update atendimento
   set valor_atendiment=76 where numero_atendiment=9

delete from atendimento
   where valor_atendiment=76

------------------------------------------------------------c6--------------------------------------------------------------------------

select nome_film from filme WHERE nome_film <> 'josias'

select nome_atendent from atendente WHERE sexo_atendent = 'feminino'

select numero_sala , nome_client 
from sala inner JOIN cliente 
on sala.id_sala = cliente.id_client

select numero_atendiment , bandeira_cart
from atendimento cross JOIN cartoes

select *from atendimento
where valor_atendiment BETWEEN 1 and 1000

select *from sala
where numero_sala BETWEEN 0 and 90

select *from cliente
where nome_client LIKE 'carlos'

select *from atendente
ORDER BY id_atendent

---------------------------------------------------------c7----------------------------------------------------------------------------

create view nome_cliente_por_sala
as
select c.nome_client, c.idade_client, s.capacidade_sala, s.numero_sala
from cliente as c JOIN sala as s
on c.id_client = s.id_sala;

select nome_client, idade_client, capacidade_sala, numero_sala
from nome_cliente_por_sala
order by nome_client

--------------------------------------------------------c8-------------------------------------------------------------------------------

create table pipocas (
   id_pipoca int identity (1,1) not null constraint PK_id_pipoca primary key (id_pipoca),
   sabor_pipoca varchar (10) not null,
   check (sabor_pipoca in ('doce', 'salgada')));
