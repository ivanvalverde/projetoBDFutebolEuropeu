
/*Os times que mais sofreram gols entre 2008 e 2016 nas ligas europeias*/

select team_long_name, sum(gols_sofridos) as gols_sofridos from ((select t.team_long_name, sum(m.home_team_goal) as gols_sofridos from `match` as m
inner join team as t on m.away_team_id = t.team_api_id
group by t.team_long_name
order by gols_sofridos desc) union
(select t.team_long_name, sum(m.away_team_goal) as gols_sofridos from `match` as m
inner join team as t on m.home_team_id = t.team_api_id
group by t.team_long_name
order by gols_sofridos desc)) as gols_sofridos
group by team_long_name
order by gols_sofridos desc;
