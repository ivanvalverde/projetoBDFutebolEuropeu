
/* 5 jogadores que mais sobressairam na ponta */

select max(pa.acceleration+pa.sprint_speed+pa.crossing) as 'ponta', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `ponta` desc
limit 5;
