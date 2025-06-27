create table prices(
    id int primary key auto_increment,
    categorie varchar(70) not null,
    value decimal(9, 2) not null
);

create table movies(
    id int primary key auto_increment,
    name varchar(100) not null,
    id_prices int not null, foreign key (id_prices) references prices(id)
);

insert into prices(categorie, value)
	values
  	("Releases", 3.50),
        ("Bronze Seal", 2.00),
        ("Silver Seal", 2.50),
        ("Gold Seal", 3.00),
        ("Promotion", 1.50);
        
insert into movies(name, id_prices)
	values
	("Batman", 3),
        ("The Battle of the Dark River", 3),
        ("White Duck", 5),
        ("Breaking Barriers", 4),
        ("The Two Hours", 2);
     
select m.id, m.name from movies m join prices p on m.id_prices = p.id
	where p.value < 2.00;
     
/*
	In the past the studio has made an event where several movies were on sale, we want to know what movies these were.
	Your job to help us is to select the ID and name of movies whose price is less than 2.00.
*/
