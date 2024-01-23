CREATE TABLE hero_date
SELECT DISTINCT serverdateid, date, ldtitid, sessionid, buildversion, herogen,herolvl,herornwn
FROM ubisoft_game.game_hero_data;

DROP TABLE game_hero_data;

ALTER TABLE hero_date
RENAME TO game_hero_data;