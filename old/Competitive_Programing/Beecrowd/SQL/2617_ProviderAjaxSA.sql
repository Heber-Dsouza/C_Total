create table providers(
    id int primary key auto_increment,
    name varchar(80) not null,
    street varchar(100) not null,
    city varchar(80) not null,
    state char(2) not null
);

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price int not null,
    id_providers  int not null, foreign key (id_providers ) references providers(id)
);

alter table products
    modify price decimal(9, 2) not null;

insert into providers(name, street, city, state)
values
    ("Ajax SA", "Presidente Castelo Branco", "Porto Alegre", "RS"),
    ("Sansul SA", "Av Brasil", "Rio de Janeiro", "RJ"),
    ("South Chairs", "Av Moinho", "Santa Maria", "RS"),
    ("Elon Electro", "Apolo", "São Paulo", "SP"),
    ("Mike Electro", "Pedro da Cunha", "Curitiba", "PR");
    
insert into products(name, amount, price, id_providers)
values
    ("Blue Chair", 30, 300.00, 5),
    ("Red Chair", 50, 2150.00, 1),
    ("Disney Wardrobe", 400, 829.50, 4),
    ("Blue Toaster", 20, 9.90, 3),
    ("Solar Panel", 30, 3000.25, 4);
    
select p.name, pp.name from products p join providers pp on p.id_providers = pp.id
    where pp.name = 'Ajax SA';
    
/*
	The financial sector has encountered some problems in the delivery of one of our providers, the delivery of the products does not match the invoice.
	Your job is to display the name of the products and the name of the provider, for the products supplied by the provider 'Ajax SA'.
*/
    
