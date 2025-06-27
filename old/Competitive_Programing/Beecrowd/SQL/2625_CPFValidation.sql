create table customers(
    id int primary key auto_increment,
    name varchar(255) not null,
    street varchar(255) not null,
    city varchar(255) not null,
    state char(2) not null,
    credit_limit int not null
);

create table natural_person(
	id_customers int not null, foreign key (id_customers) references customers(id),
    cpf char(14) not null
);

insert into customers(name, street, city, state, credit_limit)
values
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Cecília Olivia Rodrigues", "Rua Sizuka Usuy", "Cianorte", "PR", 3170),
    ("Augusto Fernando Carlos Eduardo Cardoso", "Rua Baldomiro Koerich", "Palhoça", "SC", 1067),
    ("Nicolas Diogo Cardoso", "Acesso Um", "Porto Alegre", "RS", 475),
    ("Sabrina Heloisa Gabriela Barros", "Rua Engenheiro Tito Marques Fernandes", "Porto Alegre", "RS", 4312),
    ("Joaquim Diego Lorenzo Araújo", "Rua Vitorino", "Novo Hamburgo", "RS", 2314);
    
insert into natural_person
values
    (1, "26774287840"),
    (2, "97918477200");
    
-- Response -------------------------------------------------------
    
select 
    INSERT( INSERT( INSERT( cpf, 10, 0, '-' ), 7, 0, '.' ), 4, 0, '.' ) CPF 
    from natural_person;

select 
    CONCAT(SUBSTR(cpf,1,3),'.',SUBSTR(cpf,4,3),'.',SUBSTR(cpf,7,3),'-',SUBSTR(cpf,10,2)) CPF 
    from natural_person;

-- ----------------------------------------------------------------
    
/*
	Your company's communications managers want a report on the natural person customer data that is registered in the database.
	But the old report had a problem. customers CPF data came without validation.
	So your job now is to select all the CPFs of all the customers, and apply a mask on the return of the data.
	The CPF mask looks like: '000.000.000-00'.
    
    references:
		https://pt.stackoverflow.com/questions/113641/formatar-mascarar-cpf-no-mysql-ou-pdo
*/
