
/*media de faltas por jogo*/

select round(avg(commited_fouls)) as media_faltas from (select match_api_id, count(id) as commited_fouls from foulcommit group by match_api_id) as faltas_por_jogo;
