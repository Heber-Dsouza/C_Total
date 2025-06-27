create table people(
	id int primary key auto_increment,
    name varchar(100) not null
);

insert into people(name)
values
	("Karen"),
    ("Manuel"),
    ("Ygor"),
    ("Valentine"),
    ("Jo");
    
-- -------------------------------------------------------
-- Resposta:
select
	name,
	char_length(name) as length
from people
order by 2 desc;
    
/*
	The Global Organization of Characters at People’s Names (GOCPN) made a census to figure how many characters people have in theirs names.
	To help OMCNP, you must show the number of characters of each name sorted by decreasing number of characters.
*/