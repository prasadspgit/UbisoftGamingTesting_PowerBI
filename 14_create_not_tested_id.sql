-- CREATE TABLE not_tested_id
SELECT DISTINCT cj.date, cj.ldtitid
FROM cross_join cj
LEFT JOIN game_hero_data ghd
ON ghd.date = cj.date AND
   ghd.ldtitid = cj.ldtitid
WHERE ghd.ldtitid IS NULL;