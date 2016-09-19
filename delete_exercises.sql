USE codeup_test_db;

SELECT 'ALBUMS RELEASED BEFORE 1991' AS 'INFO'\G
SELECT name FROM albums
	WHERE release_date > 1991;

DELETE FROM albums
	WHERE release_date > 1991;

SELECT 'DISCO ALBUMS' AS 'INFO'\G
SELECT name FROM albums
	WHERE genre LIKE '%disco%';
DELETE FROM albums
	WHERE genre LIKE '%disco%';

SELECT 'WHITNEY HOUSTON ALBUMS' AS 'INFO'\G
SELECT name FROM albums
	WHERE artist LIKE '%Whitney Houston%';

DELETE FROM albums
	WHERE artist LIKE '%Whitney Houston%';

SELECT * FROM albums\G