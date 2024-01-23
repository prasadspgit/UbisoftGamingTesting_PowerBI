ALTER TABLE game_feature_data
ADD COLUMN record_cnt INT;

UPDATE game_feature_data
SET record_cnt = (SELECT 
			      CASE WHEN build IS NULL THEN 0 ELSE 1 END);

ALTER TABLE game_feature_data
ADD COLUMN mode_feature_cnt int;

UPDATE game_feature_data
SET mode_feature_cnt = (SELECT 
                          CASE WHEN mode_feature IS NULL THEN 0 ELSE 1 END);
                          
ALTER TABLE game_feature_data
ADD COLUMN map_feature_cnt int;

UPDATE game_feature_data
SET map_feature_cnt = (SELECT 
                          CASE WHEN map_feature IS NULL THEN 0 ELSE 1 END);
						
ALTER TABLE game_feature_data
ADD COLUMN skill_feature_cnt int;

UPDATE game_feature_data
SET skill_feature_cnt = (SELECT 
                          CASE WHEN skill_feature IS NULL THEN 0 ELSE 1 END);