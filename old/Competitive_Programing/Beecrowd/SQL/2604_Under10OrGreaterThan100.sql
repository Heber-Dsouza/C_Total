-- Under 10 or Greater Than 100

create table products (
    id int primary key auto_increment,
    name varchar(255),
    amount int,
    price int
);

select * from products;

describe products;

alter table products 
    modify name varchar(255) not null, 
    modify amount int not null,
    modify price int not null;
    
insert into products(name, amount, price)
	values
	('Two-door wardrobe', 100, 80),
        ('Dining table', 1000, 560),
        ('Towel holder', 10000, 5.50),
        ('Computer desk', 350, 100),
        ('Chair', 3000, 210.64),
        ('Single bed', 750, 99);
        
select id, name from products where price < 10 or price > 100;

-- The financial sector of the company needs a report that shows the ID and the name of the products whose price is less than 10 or greater than 100.
