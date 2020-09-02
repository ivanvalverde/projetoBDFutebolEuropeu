
/*5 jogadores que melhor batem falta */

select max(pa.free_kick_accuracy) as 'batedor de falta', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `batedor de falta` desc
limit 5;
