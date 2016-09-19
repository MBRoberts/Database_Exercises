USE codeup_test_db;

SELECT 'PINK FLOYD ALBUMS' AS 'info'\G

SELECT name FROM albums 
	WHERE artist = 'Pink Floyd'\G

SELECT 'Sgt. Peppers Lonely Hearts Club Band release year' AS 'info'\G

SELECT release_date FROM albums
	WHERE name = 'Sgt. Peppers Lonely Hearts Club Band'\G

SELECT 'Nevermind''s genre' AS 'info'\G

SELECT genre FROM albums
	WHERE name = 'Nevermind'\G

SELECT '90''s Albums' AS 'info'\G

SELECT name FROM albums
	WHERE release_date BETWEEN 1990 AND 1999\G

SELECT 'ALBUMS THAT SOLD LESS THAN 20MIL' AS 'info'\G

SELECT name FROM albums
	WHERE sales <= 20000000\G

SELECT 'ALL ROCK ALBUMS' AS 'info'\G

SELECT name FROM albums
	WHERE genre LIKE '%rock%'\G