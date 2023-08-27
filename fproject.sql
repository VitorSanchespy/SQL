create database if not exists inicio;
show databases;
use inicio;
create table if not exists person(
	person_id smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	gender enum('M', 'F'),
	birth_date Date,
	street varchar(30),
	city varchar(20),
	state varchar(20),
	country varchar(20),
	postal_code varchar(20),
    constraint pk_person primary key (person_id)
);
desc person;
create table if not exists favorite_food(
	person_id smallint unsigned,
	food varchar(20),
    constraint pk_favorite_food primary key(person_id, food),
    constraint fk_favorite_food_person_id foreign key (person_id) 
    references person(person_id)
);
desc favorite_food;
show databases;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where table_name = 'person';
desc person;
insert into person values('2', 'Carolina', 'Silva', 'F', '1979-08-21',
	'Rua atual', 'Cidade J', 'Rj', 'Brasil','2605-89');
select * from person;
delete from person  where person_id=2;
select * from person;
desc favorite_food;
insert into favorite_food values(1, 'Lasanha');
select * from favorite_food;