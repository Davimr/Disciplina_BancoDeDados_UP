create table motorista
   (id_mot int,
   nome_mot varchar(50)not null,
   filiaçao_mot varchar(50),
   data_nasc_mot real not null,
   sexo varchar(6)not null,
   cpf_mot int not null,
   email_mot varchar(50)not null,
   rg_mot real not null,
   telefone_mot int not null,
   primary key(id_mot));
                                  alter table motorista
								     add cnh_mot real;

                                  alter table motorista
								     alter column cnh_mot real not null;
                                  



create table carro
   (id_car int,
   id_mot int,
   placa varchar(7)not null,
   modelo varchar(20),
   ano int not null,
   cor varchar(20) not null,
   marca varchar (15)not null,
   primary key(id_car),
   foreign key(id_mot)references motorista);

                                              alter table carro
											     alter column modelo varchar(20) not null;



create table cliente
   (id_client int,
   nome_client varchar(50) not null,
   data_nasc_client real not null,
   rg_client real not null,
   sexo varchar (10) not null,
   email_client varchar(50) not null,
   telefone_client int not null,
   cpf_client int not null,
   nacionalidade varchar(30) not null,
   Primary key (id_client));
                    
					                        alter table cliente
										       drop column nacionalidade;
									     
									  	    alter table cliente
										       add nacionalidade varchar(30) not null;


create table cartoes
   (id_cart int,
   nome_titular varchar(50) not null,
   numero_cart int not null,
   bandeira_cart varchar(20) not null,
   codigo_seg int not null,
   Primary key (id_cart));


create table corrida
   (id_corrida int,
   id_mot int,
   id_car int,
   id_cart int,
   valor_corrida money,
   duração_corrida real,
   distancia_corrida real,
   numero_passageiros int,
   primary key (id_corrida),
   foreign key (id_mot) references motorista,
   foreign key (id_car) references carro,
   foreign key (id_cart) references cartoes);



create table feedback
   (id_aval int,
   id_client int,
   id_mot int,
   id_corrida int,
   comentarios_corrida varchar(100),
   nota_atribuida int not null,
   primary key (id_aval),
   foreign key (id_client) references cliente,
   foreign key (id_mot) references motorista,
   foreign key (id_corrida) references corrida);
                                                        
														alter table feedback
														   alter column comentarios_corrida varchar(100) not null;

													    alter table feedback
														   drop column nota_atribuida;

													    alter table feedback
														   add nota_atribuida int not null;



create table duracaocorrida
   (id_durc int,
   duracao_corrida real not null,
   primary key (id_durc));
    
	                               drop table duracaocorrida



create table cnh
   (id_cnh int,
   nome_tit varchar(50),
   numero_cn int,
   estado_cnh varchar(25),
   primary key (id_cnh));

                            drop table cnh