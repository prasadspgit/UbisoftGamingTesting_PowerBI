CREATE TABLE testing_data
SELECT date,
	   buildversion,
	   COUNT(sessionid) as testing_cnt
FROM ubisoft_game.game_hero_data
GROUP BY date, buildversion
ORDER BY testing_cnt;