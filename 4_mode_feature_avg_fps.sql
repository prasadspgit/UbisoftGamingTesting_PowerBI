DROP TABLE IF EXISTS mode_feature_avg_fps;

CREATE TABLE mode_feature_avg_fps
SELECT mode_feature,
		ROUND(sum(fps) / NULLIF(sum(mode_feature_cnt),0),2) AS avg_fps,
		ROUND((sum(fps) / NULLIF(sum(mode_feature_cnt),0))-(SELECT AVG(fps)
			FROM game_feature_data),2) AS lag_from_avg_FPS
FROM ubisoft_game.game_feature_data
GROUP BY mode_feature
ORDER BY lag_from_avg_fps;