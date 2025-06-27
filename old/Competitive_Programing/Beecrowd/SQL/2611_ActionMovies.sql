create table genres(
    id int primary key auto_increment,
    description varchar(255) not null
);

create table movies(
    id int primary key auto_increment,
    name varchar(255) not null,
    id_genres int not null,  foreign key (id_genres) references genres(id)
);

insert into genres(description)
	values
	("Animation"),
        ("Horror"),
        ("Action"),
        ("Drama"),
        ("Comedy");
        
insert into movies(name, id_genres)
	values
	("Batman", 3),
        ("The Battle of the Dark River", 3),
        ("White Duck", 1),
        ("Breaking Barriers", 4),
        ("The Two Hours", 2);
        
select * from movies;

select m.id, m.name from movies m join genres g on m.id_genres = g.id
	where g.description = 'Action';

/*
	A video store contractor hired her services to catalog her movies. They need you to select
    the code and the name of the movies whose description of the genre is 'Action'.
*/
