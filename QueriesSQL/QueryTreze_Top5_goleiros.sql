
/*os 5 melhores goleiros*/

select max(overall_rating) as avaliacao, player_name from (select m.home_player_1, pa.overall_rating, p.player_name from player as p
inner join `match` as m on p.player_id = m.home_player_1
inner join player_attributes as pa on p.player_id = pa.player_api_id) as goleiros group by player_name order by avaliacao desc
limit 5;
