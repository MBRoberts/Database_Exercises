USE codeup_test_db;

UPDATE albums
	SET sales = sales * 10\G

SELECT * FROM albums\G

UPDATE albums
	SET release_date = release_date - 100
	WHERE release_date < 1980\G

SELECT name FROM albums
	WHERE release_date < 1980\G

UPDATE albums
	SET artist = 'Peter Jackson'
	WHERE artist = 'Michael Jackson'\G

SELECT name FROM albums
	WHERE artist = 'Michael Jackson'\G