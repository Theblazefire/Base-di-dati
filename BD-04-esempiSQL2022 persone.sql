--- questo e' un commento 

drop table if exists paternita; 
drop table if exists maternita; 
drop table if exists persone; 
create table persone(
	nome    	character(20) not null primary key,  
 	eta 	      integer,
    reddito     integer);

insert into persone values('Andrea',27,21);
insert into persone values('Aldo',25,15);
insert into persone values('Maria',55,42);
insert into persone values('Anna',50,35);
insert into persone values('Filippo',26,30);---
insert into persone values('Luigi',50,40);
insert into persone values('Franco',60,20);
insert into persone values('Olga',30,41);
insert into persone values('Sergio',85,35);
insert into persone values('Luisa',75,87);

create table maternita(
	madre    	character(20) not null references persone(nome),  
 	figlio 	character(20) not null primary key references persone(nome)
 	);

insert into maternita values('Luisa','Maria');
insert into maternita values('Luisa','Luigi');
insert into maternita values('Anna','Olga');
insert into maternita values('Anna','Filippo');
insert into maternita values('Maria','Andrea');
insert into maternita values('Maria','Aldo');

create table paternita(
	padre    	character(20) not null references persone(nome),  
 	figlio 	character(20) not null primary key references persone(nome)
 	);
insert into paternita values('Sergio','Franco');
insert into paternita values('Luigi','Olga');
insert into paternita values('Luigi','Filippo');
insert into paternita values('Franco','Andrea');
insert into paternita values('Franco','Aldo');
