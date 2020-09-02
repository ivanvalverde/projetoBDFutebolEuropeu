
/*Os times que mais fizeram gols entre 2008 e 2016 nas ligas europeias*/

select team_long_name, sum(gols_feitos) as gols_feitos from ((select t.team_long_name, sum(m.home_team_goal) as gols_feitos from `match` as m
inner join team as t on m.home_team_id = t.team_api_id
group by t.team_long_name
order by gols_feitos desc) union
(select t.team_long_name, sum(m.away_team_goal) as gols_feitos from `match` as m
inner join team as t on m.away_team_id = t.team_api_id
group by t.team_long_name
order by gols_feitos desc)) as gols_feitos
group by team_long_name
order by gols_feitos desc;
