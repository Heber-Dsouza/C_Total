create table `account`(
	id int primary key auto_increment,
    name varchar(100) not null,
    login varchar(100) not null,
    password varchar(100) not null
);

insert into `account`(name, login, password)
values
	("Joyce P. Parry", "Promeraw", "noh1Oozei"),
    ("Michael T. Gonzalez", "Phers1942", "Iath3see9bi"),
    ("Heather W. Lawless", "Hankicht", "diShono4"),
    ("Otis C. Hitt", "Conalothe", "zooFohH7w"),
    ("Roger N. Brownfield", "Worseente", "fah7ohNg");
    
-- -------------------------------------------------------
-- Resposta:
select 
	id,
    password,
    md5(password) as MD5
from `account`;
    
/*
	You were hired to be the consultant for a company. 
	Analyzing the database, you noticed that the passwords are stored as text files and, as everyone knows, this is a terrible security practice as they are not encrypted.
	Therefore you must convert every password to the MD5 format. Show the client id, the password before conversion and the new MD5.
*/