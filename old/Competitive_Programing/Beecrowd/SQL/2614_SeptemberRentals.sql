create table customers(
    id int primary key auto_increment,
    name varchar(80) not null,
    street varchar(100) not null,
    city varchar(80) not null
);

create table rentals(
    id int primary key auto_increment,
    rentals_date date not null,
    id_customers int not null, foreign key (id_customers) references customers(id)
);

drop table rentals;

insert into customers (name, street, city)
values
  ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
  ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
  ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
  ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
  ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
  ('Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');
  
insert into rentals (rentals_date, id_customers)
values
  ('2016-09-10', 3),
  ('2016-02-09', 1),
  ('2016-02-08', 4),
  ('2016-02-09', 2),
  ('2016-02-03', 6),
  ('2016-04-04', 4);
  
select * from rentals;

select c.name, r.rentals_date from customers c join rentals r on r.id_customers = c.id
    where year(r.rentals_date) = 2016 and month(r.rentals_date) = 9; 
    
select c.name, r.rentals_date from customers c join rentals r on r.id_customers = c.id
    where extract(year from r.rentals_date) = 2016 and extract(month from r.rentals_date) = 9;

  
  /*
	The video store is making its semi-annual report and needs your help. All you have to do is select the name of the clients and the date of rental,
	from the rentals made in September 2016.
    
    	references: 
		https://stackoverflow.com/questions/9104704/select-mysql-based-only-on-month-and-year
  */
