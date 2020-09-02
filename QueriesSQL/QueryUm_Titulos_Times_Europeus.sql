



/*  Pontos que os times fizeram em cada uma das ligas e nas respectivas temporadas */

select team_long_name, season, `name`, sum(pontos) as soma_pontos from (select `name`,season, team_long_name, sum(case when vitorias = 'vitória' then 3 
				when vitorias = 'derrota' then 0
				else 1 end) as pontos from
(select l.name,m.season, t.team_long_name, 
case when home_team_goal > away_team_goal then 'vitória'
	 when home_team_goal < away_team_goal then 'derrota'
     else 'empate'
     end as vitorias, m.match_id from `match` as m
inner join team as t on m.home_team_id = t.team_api_id
inner join league as l on m.league_id = l.id) as vitorias 
group by `name`,season, team_long_name union
select `name`, season, team_long_name, sum(case when vitorias = 'vitória' then 3 
				when vitorias = 'derrota' then 0
				else 1 end) as pontos from
(select l.name, m.season, t.team_long_name, 
case when away_team_goal > home_team_goal  then 'vitória'
	 when away_team_goal < home_team_goal then 'derrota'
     else 'empate'
     end as vitorias, m.match_id from `match` as m
inner join team as t on m.away_team_id = t.team_api_id
inner join league as l on m.league_id = l.id) as vitorias 
group by `name`,season, team_long_name) as tabela
group by team_long_name, `name`, season;


