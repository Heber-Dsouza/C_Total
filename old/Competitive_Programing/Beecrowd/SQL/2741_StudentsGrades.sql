create table students(
	id int primary key auto_increment,
    name varchar(100) not null,
    grade decimal(2,1) not null
);

insert into students(name, grade)
values
	("Terry B. Padilla", 7.3),
    ("William S. Ray", 0.6),
    ("Barbara A. Gongora", 5.2),
    ("Julie B. Manzer", 6.7),
    ("Teresa J. Axtell", 4.6),
    ("Ben M. Dantzler", 9.6);
    
-- -------------------------------------------------------
-- Resposta:
select 
	concat('Approved: ', name) as name,
    grade
from students
where grade >= 7
order by grade desc;
    
/*
	The semester is over at South Transylvania University. Every grade was closed, and only Alchemy 104 haven’t published its list of approved students.
	Therefore, you should show the word 'Approved: ' alongisde the the name of a student and the grade, for those who have been approved (grade ≥7).
	Remember to sort the list by grade (higher grades first).
*/