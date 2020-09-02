

/* 5 melhores meia de campo */

select max(pa.short_passing+pa.long_passing+pa.crossing ) as 'motor do meio campo', p.player_name 
from player_attributes as pa
inner join player as p on pa.player_api_id = p.player_id
group by p.player_name
order by `motor do meio campo` desc
limit 5;
