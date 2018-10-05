create table filme
   (id_film int,
   nome_film varchar(50) not null,
   genero_film varchar(15) not null,
   duracao_film real not null,
   classificacao_film int not null,
   primary key (id_film));



create table atendente
   (id_atendent int,
   nome_atendent varchar(50) not null,
   sexo_atendent varchar(10) not null,
   idade_atendent int not null,
   rg_atendent real not null,
   cpf_atendent real not null,
   contabancaria_atendent real not null,
   horarios_atendent real not null,
   primary key (id_atendent));
   



create table sala
   (id_sala int,
   id_film int,
   numero_sala int not null,
   capacidade_sala int not null,
   tela_sala real not null,
   som_sala varchar(50) not null,
   primary key (id_sala),
   foreign key (id_film) references filme);
                                            alter table sala
											  add cor_sala varchar(30);
											alter table sala
											  drop column cor_sala;


create table cliente
   (id_client int,
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
   (id_cart int,
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
   (id_atendiment int,
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