create table providers(
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null
);

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price decimal(9, 2) not null,
    id_providers int not null, foreign key (id_providers) references providers(id)
);

show tables;

drop table providers, products;

insert into providers(name, street, city, state)
values
    ("Ajax SA", "Rua Presidente Castelo Branco", "Porto Alegre", "RS"),
    ("Sansul SA", "Av Brasil", "Rio de Janeiro", "RJ"),
    ("Pr Sheppard Chairs", "Rua do Moinho", "Santa Maria", "RS"),
    ("Elon Electro", "Rua Apolo", "São Paulo", "SP"),
    ("Mike Electro", "Rua Pedro da Cunha", "Curitiba", "PR");
    
insert into products(name, amount, price, id_providers)
values
    ("Blue Chair", 30, 300.00, 5),
    ("Red Chair", 50, 2150.00, 2),
    ("Disney Wardrobe", 400, 829.50, 4),
    ("Executive Chair", 17, 9.90, 3),
    ("Solar Panel", 30, 3000.25, 4);
    
-- Response -------------------------------------------------------
    
select p.name from products p join providers pp on p.id_providers = pp.id
    where p.amount between 10 and 20
    and pp.name like 'P%';
   
-- alternativa ao join
select products.name from products, providers where products.id_providers = providers.id
    and products.amount between 10 and 20
    and providers.name like 'P%';
    
-- ----------------------------------------------------------------
    
/*
	When it comes to delivering the report on how many products the company has in stock, a part of the report has become corrupted, so the stock keeper asked for help,
	he wants you to display the following data for him.
	Display the name of products whose amount are between 10 and 20 and whose name of the supplier starts with the letter 'P'.
*/
