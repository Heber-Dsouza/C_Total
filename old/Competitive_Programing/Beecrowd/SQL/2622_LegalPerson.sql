create table customers(
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    credit_limit int not null
);

create table legal_person(
    id_customers int not null, foreign key (id_customers) references customers(id),
    cnpj char(18) not null,
    contact varchar(10) not null
);

insert into customers(name, street, city, state, credit_limit)
values
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Cecília Olivia Rodrigues", "Rua Sizuka Usuy", "Cianorte", "PR", 3170),
    ("Augusto Fernando Carlos Eduardo Cardoso", "Rua Baldomiro Koerich", "Palhoça", "SC", 1067),
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Sabrina Heloisa Gabriela Barros", "Rua Engenheiro Tito Marques Fernandes", "Porto Alegre", "RS", 4312),
    ("Joaquim Diego Lorenzo Araújo", "Rua Vitorino", "Novo Hamburgo", "RS", 2314);
    
insert into legal_person
values
    (4, "85883842000191", "99767-0562"),
    (5, "47773848000117", "99100-8965");
  
-- Esses funcionam também, mas o compilador do site não aceitou
select name from customers c join legal_person lp on lp.id_customers = c.id
    group by lp.id_customers;
    
select c.name from customers c join legal_person lp on lp.id_customers = c.id
    where lp.id_customers;
    
-- Response -------------------------------------------------------
    
select c.name from legal_person lp join customers c on lp.id_customers = c.id;

-- ----------------------------------------------------------------
    
-- The sales industry wants to make a promotion for all clients that are legal entities. For this you must display the name of the customers that are legal entity.
