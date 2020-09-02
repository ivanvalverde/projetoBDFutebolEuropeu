
/* 10 melhores zagueiros*/

(select max(overall_rating) as avaliacao, player_name from (select m.away_player_2, pa.overall_rating, p.player_name from player as p
inner join `match` as m on p.player_id = m.away_player_2
inner join player_attributes as pa on p.player_id = pa.player_api_id) as jogador2 group by player_name order by avaliacao desc
limit 7) union
(select max(overall_rating) as avaliacao, player_name from (select m.away_player_5, pa.overall_rating, p.player_name from player as p
inner join `match` as m on p.player_id = m.away_player_5
inner join player_attributes as pa on p.player_id = pa.player_api_id) as jogador5 group by player_name order by avaliacao desc
limit 6);
