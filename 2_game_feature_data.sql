-- DROP TABLE IF EXISTS game_feature_data;

CREATE TABLE game_feature_data AS
SELECT DISTINCT d1.build, d1.playtime, d1.fps, d1.date,
		d1.subfeature AS mode_data,
        d2.subfeature AS map_data,
        d3.subfeature AS skill_data
FROM game_mode_data d1
INNER JOIN game_map_data d2
ON d2.build = d1.build AND
	d2.date = d1.date
INNER JOIN game_skill_data d3
ON d3.build = d1.build AND
	d3.date = d1.date;