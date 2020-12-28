--insert into problems(nr_problem, ds_problem, ds_resolution) values()

alter session set current_schema = BDURI;

create table teams(
	id integer,
	name varchar(50)
);

create table matches(
	id integer,
	team_1 integer,
	team_2 integer,
	team_1_goals integer,
	team_2_goals integer
);


insert into teams(id, name) values (1, 'CEARA');
insert into teams(id, name) values (2, 'FORTALEZA');
insert into teams(id, name) values (3, 'GUARANY DE SOBRAL');
insert into teams(id, name) values (4, 'FLORESTA');
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (1, 4, 1, 0, 4);
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (2, 3, 2, 0, 1);
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (3, 1, 3, 3, 0);
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (4, 3, 4, 0, 1);
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (5, 1, 2, 0, 0);
insert into matches(id, team_1, team_2, team_1_goals, team_2_goals) values (6, 2, 4, 2, 1);


select
	name,
	sum(1) as matches,
	sum(case when status = 3 then 1 else 0 end) as victories,
	sum(case when status = 0 then 1 else 0 end) as defeats,
	sum(case when status = 1 then 1 else 0 end) as draws,
	sum(status) as score
from(
	select
		teams.name,
		(case when team_1_goals = team_2_goals then 1
		when team_1_goals > team_2_goals then 3
		else 0 end) as status
	from
		teams,
		matches
	where 
		teams.id = matches.team_1
	union all
	select
		teams.name,
		(case when team_2_goals = team_1_goals then 1
		when team_2_goals > team_1_goals then 3
		else 0 end) as status
	from
		teams,
		matches
	where 
		teams.id = matches.team_2
	) as tabl
group by
	name
order by
	score desc, name;