
/* % jogadores que mais roubaram bola*/

select max(pa.interceptions) as 'ladrão de bola', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `ladrão de bola` desc
limit 5
