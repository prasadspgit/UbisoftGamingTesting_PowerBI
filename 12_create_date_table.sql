-- CREATE TABLE date_table AS
SELECT DATE_ADD('2023-08-01', INTERVAL seq DAY) AS date
FROM (SELECT seq
      FROM (SELECT ROW_NUMBER() OVER () - 1 AS seq
            FROM information_schema.columns) numbers
WHERE DATE_ADD('2023-08-01', INTERVAL seq DAY) <= '2023-12-09') date_sequence;