create table loan(
	id int primary key auto_increment,
    name varchar(100) not null,
    value decimal(9, 2) not null,
    payday date not null
);

insert into loan(name, value, payday)
values
	("Cristian Ghyprievy", 3000.50, '2017-10-19'),
    ("John Serial", 10000, '2017-10-10'),
    ("Michael Seven", 5000.40, '2017-10-17'),
    ("Joana Cabel", 2000, '2017-10-05'),
    ("Miguel Santos", 4050, '2017-10-20');

-- Response -------------------------------------------------------   
--  A terceira resposta funcionou no postgreSQL (comentado para não dar erro de sintax no mysql)
select 
	name,
    extract(day from payday) day
from loan
order by id;

select 
	name,
    day(payday) day
from loan;

/*
select 
	name,
    cast(extract(day from payday) as int) as day
from loan;
*/

/*
	The Central Bank of Financing lost many registers after a server failure that happened last October. The collection dates for the parcels where lost.
	The bank requested your help to select the names and day of month in which each client must pay theirs parcel.
	OBS: The day of month must be an integer.
*/