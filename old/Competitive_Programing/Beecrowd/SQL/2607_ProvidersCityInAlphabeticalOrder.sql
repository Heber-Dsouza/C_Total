create table providers (
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null
);

insert into providers(name, street, city, state)
	values
	('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
        ('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
        ('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
        ('Guilerme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
        ('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
        ('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');
        
select distinct city from providers order by city;

/*
	Every month the company asks for a report from the cities that providers are registered. So, do a query that returns all the cities of the providers, but in alphabetical order.
	OBS: You must not show repeated cities.
*/
