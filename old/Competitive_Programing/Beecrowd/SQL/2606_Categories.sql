create table categories (
    id int primary key auto_increment,
    name varchar(255) not null
);

drop table categories;

describe categories;

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price int not null,
    id_categories int not null,  foreign key (id_categories) references categories(id)
);

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
        
insert into products(name, amount, price, id_categories)
	values
	('Lampshade', 100, 800, 4),
        ('Table for painting', 1000, 560, 9),
        ('Notebook desk', 10000, 25.50, 9),
        ('Computer desk', 350, 320.50, 6),
        ('Chair', 3000, 210.64, 9),
        ('Home alarm', 750, 460, 4);
        
select p.name, pp.name from products p inner join providers pp on p.id_providers = pp.id
	where p.id_categories = 6;
    
select p.id, p.name from products p inner join categories c on p.id_categories = c.id
	where c.name like 'super%';
    
/*
	When the data were migrated to the database, there was a small misunderstanding on the DBA.
	Your boss needs you to select the ID and the name of the products, whose categorie name start with 'super'.
*/
