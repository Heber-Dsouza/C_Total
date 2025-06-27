create table customers(
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    credit_limit int not null
);

create table orders(
    id int primary key auto_increment,
    orders_date date not null,
    id_customers int not null, foreign key (id_customers) references customers(id)
);

insert into customers(name, street, city, state, credit_limit)
values
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Cecília Olivia Rodrigues", "Rua Sizuka Usuy", "Cianorte", "PR", 3170),
    ("Augusto Fernando Carlos Eduardo Cardoso", "Rua Baldomiro Koerich", "Palhoça", "SC", 1067),
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Sabrina Heloisa Gabriela Barros", "Rua Engenheiro Tito Marques Fernandes", "Porto Alegre", "RS", 4312),
    ("Joaquim Diego Lorenzo Araújo", "Rua Vitorino", "Novo Hamburgo", "RS", 2314);
    
insert into orders(orders_date, id_customers)
values
    ('2016-05-13', 3),
    ('2016-01-12', 2),
    ('2016-04-18', 5),
    ('2016-09-07', 4),
    ('2016-02-13', 6),
    ('2016-08-05', 3);
    
select * from orders;

-- Response -------------------------------------------------------
-- obs.: any of the queries below are working correct.
    
select c.name, o.id from customers c join orders o on c.id = o.id_customers
    where date_format(o.orders_date, '%Y%m%d') between date_format('2016-01-01', '%Y%m%d')  and date_format('2016-06-30', '%Y%m%d')
    order by o.id;
    
select c.name, o.id from customers c join orders o on c.id = o.id_customers
    where date(o.orders_date) between '2016-01-01' and '2016-06-30'
    order by o.id;
    
select c.name, o.id from customers c join orders o on c.id = o.id_customers
    where extract(year from o.orders_date) = 2016 and extract(month from o.orders_date) between 1 and 6
    order by o.id;
    
-- ----------------------------------------------------------------
    
/*
	The company's financial audit is asking us for a report for the first half of 2016.
	Then display the customers name and order number for customers who placed orders in the first half of 2016.
    
    references:
		https://stackoverflow.com/questions/16657202/filter-by-datetime-mysql-formatting
*/
