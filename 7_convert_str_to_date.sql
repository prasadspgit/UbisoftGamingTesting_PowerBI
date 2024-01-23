ALTER TABLE game_hero_data
ADD COLUMN testing_cnt INT;

UPDATE game_hero_data
SET testing_cnt = STR_TO_DATE(serverdateid, '%Y%m%d');
