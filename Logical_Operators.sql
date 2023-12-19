use book_shop;
use new_testing_db;

## NOT EQUAL (!=)
SELECT title, released_year FROM BOOKS
WHERE released_year != 2017;

SELECT title, author_lname FROM BOOKS
WHERE author_lname != 'harris';

## NOT LIKE 
SELECT title FROM books
WHERE title LIKE 'w%';

SELECT title FROM books
WHERE title NOT LIKE 'w%';

## greater than (>) and (>=)
SELECT title, released_year FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity FROM books
WHERE stock_quantity >= 100;

SELECT 99 < 1;

SELECT 'a' < 'b';
SELECT 'A' = 'a';

## less than (<) and (<=)
SELECT title, released_year FROM books
WHERE released_year <= 2000
ORDER BY released_year;

SELECT 'h' < 'p';
SELECT 'Q' <= 'q';

##------ and(&&) -------##

SELECT * FROM books WHERE author_lname = 'eggers' && released_year > 2000;

SELECT * FROM books WHERE author_lname = 'eggers' AND released_year > 2010;

SELECT * FROM books WHERE author_lname = 'eggers' AND released_year > 2010 AND title LIKE '%novel%';

##-------- OR(||) ------##

SELECT * FROM books WHERE author_lname = 'eggers' || released_year > 2010 OR stock_quantity > 100;

##----------BETWEEN----------##

SELECT * FROM books WHERE released_year >= 2004 AND released_year <= 2015;
SELECT * FROM books WHERE released_year BETWEEN 2004 AND 2015;
SELECT * FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

##----------BETWEEN DATES----------##

SELECT CAST('2017-05-02' AS DATETIME);
SELECT CAST('2017-05-02' AS DATE);

SELECT name, birthdt FROM people WHERE birthdt BETWEEN 
	CAST('1980-01-01' AS DATETIME) AND 
	CAST('2000-01-01' AS DATETIME);
    
##--------IN------##

SELECT title, author_lname FROM BOOKS WHERE
	author_lname = 'carver' ||
	author_lname = 'lahiri' ||
	author_lname = 'smith';

SELECT title, author_lname FROM books WHERE author_lname IN ('carver','lahiri','smith');

SELECT title, released_year FROM books WHERE released_year IN (2017, 1985);



SELECT title, released_year FROM books WHERE released_year >= 2000
AND released_year NOT IN (
	2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016
)
ORDER BY released_year;

SELECT title, released_year
FROM books
WHERE released_year >= 2000
AND released_year % 2 != 0
ORDER BY released_year;
