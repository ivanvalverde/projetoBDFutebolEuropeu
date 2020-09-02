

/*cartões amarelos por temporada*/

select season, count(card_type) as yellow_cards from cards_match
where card_type like 'y%' group by season;

/*cartões vermelhos por temporads */

select season, count(card_type) as yellow_cards from cards_match
where card_type like 'r' group by season;
