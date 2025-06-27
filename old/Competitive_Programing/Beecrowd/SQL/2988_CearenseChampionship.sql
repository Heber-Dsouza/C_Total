create table teams(
	id int primary key auto_increment,
    name varchar(50)
);

create table matches(
	id int primary key auto_increment,
    team_1 int not null, foreign key(team_1) references teams(id),
    team_2 int not null, foreign key(team_2) references teams(id),
    team_1_goals int not null,
    team_2_goals int not null
);

insert into teams(name)
values
	("CEARA"),
    ("FORTALEZA"),
    ("GUARANY DE SOBRAL"),
    ("FLORESTA");
    
insert into matches(team_1, team_2, team_1_goals, team_2_goals)
values
	(4, 1, 0, 4),
    (3, 2, 0, 1),
    (1, 3, 3, 0),
    (3, 4, 0, 1),
    (1, 2, 0, 0),
    (2, 4, 2, 1);
    
-- try 1:
select
	t.name,
    case when m.team_1 = t.id or m.team_2 = t.id then 1 else null end,
    count(
		1
    ) as matches
from teams t
	join matches m on t.id = m.team_1 
    and t.id = m.team_2;
    
-- try 2:
select 
	*
from teams t
	join matches m on t.id = m.team_1 
    or t.id = m.team_2;
  
-- -------------------------------------------------------
-- Resposta 1:
select 
	t.name,
	count(t.name) as `matches`,
    count(
		case
			when m.team_1 = t.id and team_1_goals > team_2_goals then 1
            when m.team_2 = t.id and team_2_goals > team_1_goals then 1
		end
    ) as victories,
    count(
		case
			when m.team_1 = t.id and team_1_goals < team_2_goals then 1
            when m.team_2 = t.id and team_2_goals < team_1_goals then 1
		end
    ) as defeats,
    count(
		case
			when m.team_1 = t.id and team_1_goals = team_2_goals then 1
            when m.team_2 = t.id and team_2_goals = team_1_goals then 1
		end
    ) as draws,
    (
		(count(
			case
				when m.team_1 = t.id and team_1_goals > team_2_goals then 1
				when m.team_2 = t.id and team_2_goals > team_1_goals then 1
			end
		) * 3) + count(
			case
				when m.team_1 = t.id and team_1_goals = team_2_goals then 1
				when m.team_2 = t.id and team_2_goals = team_1_goals then 1
			end
		)
    ) as score
from teams t
	join matches m on t.id = m.team_1 
    or t.id = m.team_2
group by t.name
order by score desc;


-- -------------------------------------------------------
-- Resposta 2:
with results as (
	select
		t.name as name,
		count(t.name) as `matches`,
		count(
			case
				when m.team_1 = t.id and team_1_goals > team_2_goals then 1
				when m.team_2 = t.id and team_2_goals > team_1_goals then 1
			end
		) as victories,
		count(
			case
				when m.team_1 = t.id and team_1_goals < team_2_goals then 1
				when m.team_2 = t.id and team_2_goals < team_1_goals then 1
			end
		) as defeats,
		count(
			case
				when m.team_1 = t.id and team_1_goals = team_2_goals then 1
				when m.team_2 = t.id and team_2_goals = team_1_goals then 1
			end
		) as draws
    from teams t
	join matches m on t.id = m.team_1 
    or t.id = m.team_2
	group by t.name
)

select 
	name,
	`matches`,
    victories,
    defeats,
    draws,
    ((victories * 3) + draws) score
from results
order by score desc;
    

/*
	The Soccer Cearense Championship attracts thousands of fans every year and you work for a newspaper and are in charge to calculate the score table. 
	Show a table with the following rows: the team name, number of matches, victories, defeats, draws, and scores. 
	Knowing that the score is calculated with each victory valuing 3 points, draw valuing 1 and defeat valuing 0.
	In the end, show your table with the score from the highest to the lowest. 
*/