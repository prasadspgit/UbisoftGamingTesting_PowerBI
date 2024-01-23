DROP TABLE IF EXISTS skill_feature_avg_fps;

CREATE TABLE skill_feature_avg_fps
SELECT skill_feature,
		ROUND(sum(fps) / NULLIF(sum(skill_feature_cnt),0),2) AS avg_fps,
		ROUND((sum(fps) / NULLIF(sum(skill_feature_cnt),0))-(SELECT AVG(fps)
			FROM game_feature_data),2) AS lag_from_avg_FPS
FROM ubisoft_game.game_feature_data
GROUP BY skill_feature
ORDER BY lag_from_avg_fps;