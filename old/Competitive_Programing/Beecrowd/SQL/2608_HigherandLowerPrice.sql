create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price int not null
);

alter table products
    modify price decimal(19, 2) not null;
    
drop table products;

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price decimal(19, 2) not null
);
    
describe products;

insert into products(name, amount, price)
	values
	('Two-door wardrobe', 100, 800),
        ('Dining table', 1000, 560),
        ('Towel holder', 10000, 25.50),
        ('Computer desk', 350, 320.50),
        ('Chair', 3000, 210.64),
        ('Single bed', 750, 460);

select max(price) as price, min(price) as price from products;

/*
	The financial sector of our company, wants to know the smaller and higher values of the products, which we sell.
	For this you must display only the highest and lowest price of the products table.
*/
