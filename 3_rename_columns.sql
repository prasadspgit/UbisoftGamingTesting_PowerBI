ALTER TABLE game_feature_data
RENAME COLUMN mode_data TO mode_feature;

ALTER TABLE game_feature_data
RENAME COLUMN map_data TO map_feature;

ALTER TABLE game_feature_data
RENAME COLUMN skill_data TO skill_feature;