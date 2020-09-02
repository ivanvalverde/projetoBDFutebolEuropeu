
/* Os artilheiros dos times campeões de cada liga por temporada*/
/* Foi repetido o mesmo código, só alterando os times para as outras ligas (no caso abaixo, encontram-se todos os artilheiros
dos times campeões da liga Italiana)*/

(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2008/2009'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Inter') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2009/2010'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Inter') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2010/2011'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Inter') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2011/2012'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Juventus') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season ='2012/2013'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Napoli') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2013/2014'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Juventus') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2014/2015'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Juventus') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1) union
(select player_name, team_long_name, season, max(gols) as gols from
(select p.player_name, t.team_long_name, gm.season, count(gm.id) as gols from gols_match as gm
inner join player as p on gm.id_player = p.player_id
inner join team as t on t.team_api_id = gm.team
where gm.season = '2015/2016'
group by p.player_name, t.team_long_name, gm.season
having t.team_long_name = 'Napoli') as max_goals_champion
group by player_name, team_long_name, season
order by gols desc
limit 1);



