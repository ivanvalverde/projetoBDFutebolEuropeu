
/* os 5 melhores finalizadores */

select max(pa.finishing+pa.shot_power) as 'matadores', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `matadores` desc
limit 5;
