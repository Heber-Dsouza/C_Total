create table categories(
    id int primary key auto_increment,
    name varchar(255) not null
);

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
    id_providers int not null, foreign key (id_providers) references providers(id),
    id_categories int not null, foreign key (id_categories) references categories(id)
);

insert into categories(name)
values
    ("Super Luxury"),
    ("Imported"),
    ("Tech"),
    ("Vintage"),
    ("Supreme");
    
insert into providers(name, street, city, state)
values
    ("Ajax SA", "Rua Presidente Castelo Branco", "Porto Alegre", "RS"),
    ("Sansul SA", "Av Brasil", "Rio de Janeiro", "RJ"),
    ("South Chairs", "Rua do Moinho", "Santa Maria", "RS"),
    ("Elon Electro", "Rua Apolo", "São Paulo", "SP"),
    ("Mike Electro", "Rua Pedro da Cunha", "Curitiba", "PR");

insert into products(name, amount, price, id_providers, id_categories)
values
    ("Blue Chair", 30, 300.00, 5, 5),
    ("Red Chair", 50, 2150.00, 2, 1),
    ("Disney Wardrobe", 400, 829.50, 4, 1),
    ("Blue Toaster", 20, 9.90, 3, 1),
    ("TV", 30, 3000.25, 2, 2);
    
select p.name, pp.name, p.price from products p 
join providers pp on p.id_providers = pp.id
join categories c on p.id_categories = c.id
where p.price > 1000 and c.name = 'Super Luxury';
        
/*
	Our company is looking to make a new contract for the supply of new super luxury products, and for this we need some data of our products.
	Your job is to display the name of the products, the name of the providers and the price, for the products whose price is greater than 1000 and its category is' Super Luxury.
*/
