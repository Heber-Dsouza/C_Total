create table products (
    id int primary key auto_increment,
    name varchar(100) not null,
    amount int not null,
    price decimal(9, 2) not null
);

drop table products;

insert into products(name, amount, price)
	values
	("Two-doors wardrobe", 100, 800),
        ("Dining table", 1000, 560),
        ("Towel holder", 10000, 25.50),
        ("Computer desk", 350, 320.50),
        ("Chair", 3000, 210.64),
        ("Single bed", 750, 460);
        
select * from products;

select truncate(avg(price), 2) price from products;
-- PostgreSQL
-- select avg(price):: numeric(10, 2) price from products;

/*
	In the company that you work is being done a survey on the values of the products that are marketed.
	To help the industry that is doing this survey you should calculate and display the average value of the price of the products.
	OBS: Show the value with two numbers after the period.
*/
