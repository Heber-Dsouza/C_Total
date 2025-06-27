create table candidate(
    id int primary key auto_increment,
    name varchar(100) not null
);

create table score(
	candidate_id int not null, foreign key (candidate_id) references candidate(id),
    math int not null,
    `specific` int not null,
    project_plan int not null
);

insert into candidate(name)
values
    ("Michael P Cannon"),
    ("Barbra J Cable"),
    ("Ronald D Jones"),
    ("Timothy K Fitzsimmons"),
    ("Ivory B Morrison"),
    ("Sheila R Denis"),
    ("Edward C Durgan"),
    ("William K Spencer"),
    ("Donna D Pursley"),
    ("Ann C Davis");
    
insert into score
values
    (1, 76, 58, 21),
    (2, 4, 5, 22),
    (3, 15, 59, 12),
    (4, 41, 42, 99),
    (5, 22, 90, 9),
    (6, 82, 77, 15),
    (7, 82, 99, 56),
    (8, 11, 4, 22),
    (9, 16, 29, 94),
    (10, 1, 7, 59);
    
-- Response -------------------------------------------------------
-- A primeira não funcionou, a segunda sim já que é a versão postgreSQL (comentado para não dar erro de sintax no mysql)
select 
    c.name,
    truncate((((s.math * 2)+(s.`specific`*3)+(s.project_plan*5))/10), 2) `avg`
from candidate c
    join score s on c.id = s.candidate_id
order by 2 desc;

/*
SELECT
    c.name,
    ROUND(((s.math * 2) + (s.specific * 3) + (s.project_plan * 5)) / 10::numeric, 2) AS avg
FROM
    candidate c
JOIN score s ON c.id = s.candidate_id
ORDER BY
    avg DESC;
*/
    
/*
	The Mars Technology University has Open Positions for researchers. However, the computer responsible for processing the candidates' data is broken.
	You must present the candidate list, containing the name and final score (with two decimal places of precision) of each candidate.
	Remember to show the list ordered by score (highest first).

	The score is given by the weighted average described as: 

	Avg=((math∗2)+(specific∗3)+(project_plan∗5)/10)
*/
