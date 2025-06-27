create table categories (
    id int primary key auto_increment,
    name varchar(255)
);

alter table categories 
    modify name varchar(255) not null;

create table providers (
    id int primary key auto_increment,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2)
);

alter table providers 
    modify name varchar(255) not null,
    modify street varchar(255) not null,
    modify city varchar(255) not null,
    modify state char(2) not null;

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price int not null,
    id_providers int not null, foreign key (id_providers) references providers(id),
    id_categories int not null,  foreign key (id_categories) references categories(id)
);

select * from products;

describe products;

insert into categories(name)
	values
	('old stock'),
        ('new stock'),
        ('modern'),
        ('commercial'),
        ('recyclable'),
        ('executive'),
        ('superior'),
        ('wood'),
        ('super luxury'),
        ('vintage');

select * from categories;

insert into providers(name, street, city, state)
	values
	('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
        ('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
        ('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
        ('Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
        ('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
        ('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

select * from providers;

insert into products(name, amount, price, id_providers, id_categories)
	values
	('Two-door wardrobe', 100, 800, 6, 8),
        ('Dining table', 1000, 560, 1, 9),
        ('Towel holder', 10000, 25.50, 5, 1),
        ('Computer desk', 350, 320.50, 4, 6),
        ('Chair', 3000, 210.64, 3, 6),
        ('Single bed', 750, 460, 1, 2);

select p.name, pp.name from products p inner join providers pp on p.id_providers = pp.id
	where p.id_categories = 6;
	

/*
	The financial sector needs a report on the providers of the products we sell. The reports include all categories, but for some reason, providers of products whose
	category is the executive, are not in the report.
	Your job is to return the names of the products and providers whose category ID is 6.
*/
