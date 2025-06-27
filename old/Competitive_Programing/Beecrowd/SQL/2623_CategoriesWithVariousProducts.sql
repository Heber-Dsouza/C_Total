create table categories(
    id int primary key,
    name varchar(255) not null
);

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price decimal(9, 2) not null,
    id_categories int not null, foreign key (id_categories) references categories(id)
);

drop table categories, products;

insert into categories
values
    (1, "Superior"),
    (2, "Super Luxury"),
    (3, "Modern"),
    (4, "Nerd"),
    (5, "Infantile"),
    (6, "Robust"),
    (9, "Wood");

insert into products(name, amount, price, id_categories)
values
    ("Blue Chair", 30, 300.00, 9),
    ("Red Chair", 200, 2150.00, 2),
    ("Disney Wardrobe", 400, 829.50, 4),
    ("Blue Toaster", 20, 9.90, 3),
    ("Solar Panel", 30, 3000.25, 4);
    
select * from categories;

select * from products;

select p.name, c.name from products p join categories c on c.id = p.id_categories
    where p.amount > 100 
    and c.id not between 4 and 5
    order by c.id asc;
    
select p.name, c.name from products p join categories c on c.id = p.id_categories
    where p.amount > 100 
    and c.id < 4
    or p.amount > 100 
    and c.id > 5
    order by c.id;
    
-- Response -------------------------------------------------------
    
select p.name, c.name from products p join categories c on c.id = p.id_categories
    where p.amount > 100 
    and c.id in(1, 2, 3, 6, 9)
    order by c.id asc;
    
select p.name, c.name from products p join categories c on c.id = p.id_categories
    where p.amount > 100 
    and p.id_categories in(1, 2, 3, 6, 9)
    order by c.id asc;
    
-- ----------------------------------------------------------------
    
/*
	The sales industry needs a report to know what products are left in stock.
	To help the sales industry, display the product name and category name for products whose amount is greater
	than 100 and the category ID is 1,2,3,6 or 9. Show the results in ascendent order by category ID.
*/
