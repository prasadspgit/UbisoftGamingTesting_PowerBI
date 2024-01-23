-- CREATE TABLE cross_join AS
SELECT DISTINCT dt.date, ldtitid
FROM date_table dt
CROSS JOIN game_hero_data;