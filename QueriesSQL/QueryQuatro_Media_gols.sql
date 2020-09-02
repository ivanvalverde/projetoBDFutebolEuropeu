
/* Media de gols temporadas de copa do mundo(2010/2014) */

select season, name, avg(gols) as media_gols from 
    (select gm.id_match, count(gm.id) as gols, gm.season, l.name from gols_match as gm
    inner join league as l on gm.league_id = l.id
    where gm.season = '2009/2010'
    group by gm.id_match, gm.season, l.name) as soma_gols_liga_season
    group by season, name;
    
    
    select season, name, avg(gols) as media_gols from 
    (select gm.id_match, count(gm.id) as gols, gm.season, l.name from gols_match as gm
    inner join league as l on gm.league_id = l.id
    where gm.season = '2010/2011'
    group by gm.id_match, gm.season, l.name) as soma_gols_liga_season
    group by season, name;
  
    select season, name, avg(gols) as media_gols from 
    (select gm.id_match, count(gm.id) as gols, gm.season, l.name from gols_match as gm
    inner join league as l on gm.league_id = l.id
    where gm.season = '2013/2014'
    group by gm.id_match, gm.season, l.name) as soma_gols_liga_season
    group by season, name;
    
    select season, name, avg(gols) as media_gols from 
    (select gm.id_match, count(gm.id) as gols, gm.season, l.name from gols_match as gm
    inner join league as l on gm.league_id = l.id
    where gm.season = '2014/2015'
    group by gm.id_match, gm.season, l.name) as soma_gols_liga_season
    group by season, name;
    
	