create table virus(
	id int primary key auto_increment,
    name varchar(100) not null
);

insert into virus(name)
values
	("H1RT"),
    ("H7H1"),
    ("HUN8"),
    ("XH1HX"),
    ("XXXX");
    
-- -------------------------------------------------------
-- Resposta:

select
	replace(name, 'H1', 'X') as name
from virus;
    
/*
	Viruses are evolving, but new research has proven that by switching some proteins the vaccine becomes unbeatable.
	The protein H1(Hemagglutinin) when replaced by the X protein (Xenomorphina) has interesting effects against almost every viral disease. 
	Some conspiracists say that after the vaccine’s discovery some strange 3 meters tall creatures were found in the surroundings of the laboratories, but this is clearly a lie.
	Therefore, you must replace every string “H1”( Hemagglutinin ) by 'X' ( Xenomorphina ).
*/