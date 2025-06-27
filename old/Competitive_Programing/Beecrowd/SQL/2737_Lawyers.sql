create table lawyers(
    register int primary key,
    name varchar(100) not null,
    customers_number int not null
);

insert into lawyers
values
    (1648, "Marty M. Harrison", 5),
    (2427, "Jonathan J. Blevins", 15),
    (3365, "Chelsey D. Sanders", 20),
    (4153, "Dorothy W. Ford", 16),
    (5525, "Penny J. Cormier", 6);
    
select name, customers_number from lawyers
    where customers_number = min(customers_number)
    or customers_number = avg(customers_number)
    or customers_number = max(customers_number);
    
select floor(avg(customers_number)) from lawyers;

select name, customers_number from lawyers
	where customers_number in (
		select max(customers_number) from lawyers
        union
        select min(customers_number) from lawyers
        union
        select round(avg(customers_number)) from lawyers
    );
    
-- Response -------------------------------------------------------
-- A primeira não funciona no PostgreSQL, a segunda dá erro de compilação no site.
    
(select name, customers_number from lawyers
	where customers_number in (
		select max(customers_number) from lawyers
        union
        select min(customers_number) from lawyers
        order by customers_number desc
    ))
    union all
		select 'Average', round(avg(customers_number), 0) from lawyers;
        
(select name, customers_number from lawyers
	where customers_number = (select max(customers_number) from lawyers)
    or customers_number = (select min(customers_number) from lawyers)
    order by customers_number desc)
	union all
		select 'Average' name, round(avg(customers_number), 0) customers_number from lawyers;
        
(select name, customers_number from lawyers
	where customers_number = (select max(customers_number) from lawyers)
    or customers_number = (select min(customers_number) from lawyers)
    order by customers_number desc)
	union all
		select 'Average', round(avg(customers_number), 0) from lawyers;
        
-- ----------------------------------------------------------------
    
/*
	The manager of Mangojata Lawyers requested a report on the current lawyers.
	The manager wants you to show him the name of the lawyer with the most clients, the one with the fewest and the client average considering all lawyers.
	OBS: Before presenting the average, show a field called Average to make the report more readable. The average must be presented as an integer.
    
    Obs.: O segundo parametro da função round determina o número de casas decimais.
*/
