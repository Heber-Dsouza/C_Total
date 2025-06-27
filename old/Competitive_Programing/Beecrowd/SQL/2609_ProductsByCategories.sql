create table categories (
    id int primary key auto_increment,
    name varchar(255) not null
);

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    amount int not null,
    price decimal(9, 2) not null,
    id_categories  int not null, foreign key (id_categories) references categories(id)
);

drop table products;

select * from products;

insert into categories(name)
	values
	('wood'),
        ('luxury'),
	('vintage'),
	('modern'),
        ('super luxury');
        
insert into products(name, amount, price, id_categories)
	values
	('Two-door wardrobe', 100, 800, 1),
        ('Dining table', 1000, 560, 3),
        ('Towel holder', 10000, 25.50, 4),
        ('Computer desk', 350, 320.50, 2),
        ('Chair', 3000, 210.64, 4),
        ('Single bed', 750, 460, 1);
   
select sum(amount) from products;
   
select c.name, p.amount sum from categories c inner join products p group by p.name;

select id_categories, sum(amount) sum from products p inner join categories c on p.id_categories = c.id
    group by id_categories;
    
select c.name, sum(p.amount) from products p inner join categories c on p.id_categories = c.id
    group by p.id_categories
    order by c.name;
    
select c.name, sum(p.amount) sum from categories c inner join products p on p.id_categories = c.id
    group by c.id
    order by c.name;
    
select c.name, sum(p.amount) sum, sum(p.price) price from products p inner join categories c on p.id_categories = c.id
    group by p.id_categories
    order by price;
  
select c.name, sum(p.amount) sum from categories c inner join products p on p.id_categories = c.id
    group by c.name;
    
select c.name, sum(amount) sum from products p join categories c on p.id_categories = c.id
    group by c.name;
    
/*
	As usual the sales industry is doing an analysis of how many products we have in stock, and you can help them.
	Then your job will display the name and amount of products of each category.
*/
