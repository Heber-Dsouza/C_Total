create table dimensions(
	id int primary key auto_increment,
    name varchar(100) not null
);

create table life_registry(
	id int primary key auto_increment,
    name varchar(100) not null,
    omega decimal(2,1) not null,
    dimensions_id int not null, foreign key (dimensions_id) references dimensions(id)
);

insert into dimensions(name)
values
	("C774"),
    ("C784"),
    ("C794"),
    ("C824"),
    ("C875");
    
insert into life_registry(name, omega, dimensions_id)
values
	("Richard Postman", 5.6, 2),
    ("Simple Jelly", 1.4, 1),
    ("Richard Gran Master", 2.5, 1),
    ("Richard Turing", 6.4, 4),
    ("Richard Strall", 1.0, 3);

-- -------------------------------------------------------
-- Resposta:
select 
	lg.name,
    truncate((lg.omega * 1.618), 3) as 'The N Factor'
from life_registry lg
	join dimensions d on lg.dimensions_id = d.id
	and d.name in ('C875', 'C774')
    and lg.name like('Richard%')
order by 2 asc;
    
/*
	Richard is a famous scientist because of his multiverse theory, where he describes every hypothetical set of parallel universes by means of a database. 
	Thanks to that you now have a job..
	As your first task, you must select every Richard from dimensions C875 and C774, together with its existence probability (the famous factor N) with three decimal places of precision.
	Remember that the N factor is calculated by multiplying the omega value by 1,618. The data must be sorted by the least omega value.
*/