create table customers(
    id int primary key auto_increment,
    name varchar(80) not null,
    street varchar(100) not null,
    city varchar(80) not null
);

insert into customers (name, street, city)
values
  ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
  ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
  ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
  ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia'),
  ('João Almeida Lima',	'Rua Rio Taiuva', 'Ponta Grossa'),
  ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');
  
drop table customers;
  
select distinct city from customers;

/*
	The video store company has the objectives of creating several franchises spread throughout Brazil. For this we want to know in which cities our customers live.
	For you to help us select the name of all the cities where the rental company has clients. But please do not repeat the name of the city.
*/
