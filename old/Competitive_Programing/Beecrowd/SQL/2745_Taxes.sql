create table people(
	id int primary key auto_increment,
    name varchar(100) not null,
    salary int not null
);

insert into people(name, salary)
values
	("James M. Tabarez", 883),
    ("Rafael T. Hendon", 4281),
    ("Linda J. Gardner", 4437),
    ("Nicholas J. Conn", 8011),
    ("Karol A. Morales", 2508),
    ("Lolita S. Graves", 8709);
    
-- -------------------------------------------------------
-- Resposta:
select 
	name,
    case
		when salary > 3000 then round(salary * 0.10, 2)
    end as tax
from people
where salary > 3000;
    
/*
	You are going to the International Personal Tax meeting and your proposal is: 
		every individual with income higher than 3000 must pay a tax to the government, which is 10% of his/her income.
	Show the name and the tax value of each person who earns more than 3000, with two decimal places of precision.
*/