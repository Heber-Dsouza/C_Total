create table customers(
    id int primary key auto_increment,
    name varchar(80) not null,
    street varchar(100) not null,
    city varchar(80) not null
);

create table locations(
    id int primary key auto_increment,
    locations_date date not null,
    id_customers int not null, foreign key (id_customers) references customers(id)
);

select * from locations;

insert into customers (name, street, city)
values
  ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
  ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
  ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
  ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
  ('João Almeida Lima',	'Rua Rio Taiuva', 'Ponta Grossa'),
  ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');
  
insert into locations (locations_date, id_customers)
    values
	('2016-10-09', 3),
	('2016-09-02', 1),
	('2016-08-02', 4),
	('2016-09-02', 2),
	('2016-03-02', 6),
	('2016-04-04', 4);
  
select c.id, c.name from customers c join locations l on c.id = l.id_customers
    where c.id not in(l.id_customers);
  
select id, name from customers
    where id not in(select id_customers from locations);
    
/*
	The video store company intends to do a promotion for customers who have not yet done any rental.
	Your job is to deliver us the ID and the name of the customers who have not done any rental. Sort the output by ID.
*/
