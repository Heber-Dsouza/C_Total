create table customers(
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    credit_limit int not null
);

insert into customers(name, street, city, state, credit_limit)
values
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Cecília Olivia Rodrigues", "Rua Sizuka Usuy", "Cianorte", "PR", 3170),
    ("Augusto Fernando Carlos Eduardo Cardoso", "Rua Baldomiro Koerich", "Palhoça", "SC", 1067),
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Sabrina Heloisa Gabriela Barros", "Rua Engenheiro Tito Marques Fernandes", "Porto Alegre", "RS", 4312),
    ("Joaquim Diego Lorenzo Araújo", "Rua Vitorino", "Novo Hamburgo", "RS", 2314);
    
-- Response -------------------------------------------------------
    
select count(distinct city) count from customers;

-- ----------------------------------------------------------------
    
/*
	The company board asked you for a simple report on how many cities the company has already reached.
	To do this you must display the number of distinct cities in the customers table.
*/
