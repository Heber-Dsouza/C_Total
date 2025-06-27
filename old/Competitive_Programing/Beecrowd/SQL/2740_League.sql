create table league(
	position int primary key auto_increment,
    team varchar(100) not null
);

insert into league(team)
values
	("The Quack Bats"),
    ("The Responsible Hornets"),
    ("The Bawdy Dolphins"),
    ("The Abstracted Sharks"),
    ("The Nervous Zebras"),
    ("The Oafish Owls"),
    ("The Unequaled Bison"),
    ("The Keen Kangaroos"),
    ("The Left Nightingales"),
    ("The Terrific Elks"),
    ("The Lumpy Frogs"),
    ("The Swift Buffalo"),
    ("The Big Chargers"),
    ("The Rough Robins"),
    ("The Silver Crocs");
  
-- O primeiro caso aqui não funciona pois o where é sempre executado antes do select, então não vai existir nenhum registro onde a coluna name será null.
select
	case
		when position between 1 and 3 then concat("Podium: ", team)
        when position between 14 and 15 then concat("Demoted: ", team)
        else null 
    end as name
from league
where name is not null;

-- Por isso foi implementado uma subquery:
select *
from (
	select
	case
		when position between 1 and 3 then concat("Podium: ", team)
        when position between 14 and 15 then concat("Demoted: ", team)
        else null 
    end as name
    from league
) name
where name is not null;

-- -------------------------------------------------------
-- Resposta:
select 
	concat('Podium: ', team)
from league 
where position in (1, 2, 3)

union all 

select 
	concat('Demoted: ', team)
from league 
where position in (14, 15);


/*
	The International Underground Excavation League is a success between alternative sports, however the staff responsible for organizing the events doesn’t understand computers at all,
	they only know how to dig and the sport rule set. As such, you were hired to solve the League’s problem.
	Select the three first placed with the initial phrase "Podium: " and select the last two, which will be demoted to a lower league with the initial phrase “Demoted:".
*/