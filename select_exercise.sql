USE codeup_test_db;

SELECT '\nPINK FLOYD albums\n' AS 'info'\G

SELECT name FROM albums 
	WHERE artist = 'Pink Floyd'\G

SELECT '\nSgt. Peppers Lonely Hearts Club Band release year\n' AS 'info'\G

SELECT release_date FROM albums
	WHERE name = 'Sgt. Peppers Lonely Hearts Club Band'\G

SELECT '\nNevermind''s genre\n' AS 'info'\G

SELECT genre FROM albums
	WHERE name = 'Nevermind'\G

SELECT '\n90''s Albums\n' AS 'info'\G

SELECT name FROM albums
	WHERE release_date BETWEEN 1990 AND 1999\G

SELECT '\nALBUMS THAT SOLD MORE THAN 20MIL\n' AS 'info'\G

SELECT name FROM albums
	WHERE sales >= 20000000\G

SELECT '\nALL ROCK ALBUMS\n' AS 'info'\G

SELECT name FROM albums
	WHERE genre LIKE '%rock%'\G