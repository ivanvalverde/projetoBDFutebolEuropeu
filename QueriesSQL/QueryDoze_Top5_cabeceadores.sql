
/*5 melhores cabeceadores */

select max(pa.heading_accuracy+pa.shot_power+pa.finishing) as 'cabeceadores', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `cabeceadores` desc
limit 5;
