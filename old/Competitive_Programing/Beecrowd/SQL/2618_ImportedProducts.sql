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
    id_providers int not null, foreign key (id_providers ) references providers(id),
    id_categories int not null, foreign key (id_categories ) references categories(id)
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

select p.name, pp.name, c.name from products p 
    join providers pp on p.id_providers = pp.id
    join categories c on p.id_categories = c.id
    where pp.name = 'Sansul SA' and c.name = 'Imported';
        
/*
	Our company's import sector needs a report on the import of products from our Sansul providers.
	Your task is to display the name of the products, the name of the supplier and the name of the category,
    	for the products supplied by the supplier 'Sansul SA' and whose category name is 'Imported'.
*/
