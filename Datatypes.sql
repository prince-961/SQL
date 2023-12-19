### Storing Text
## CHAR, VARCHAR ,   DECIMAL(15,2) -->> 15= total no of digits, 2=no of digits after decimal point Eg:- 999.99
create database new_testing_db;
use new_testing_db;

create table dogs(
name char(5),
breed varchar(10)
);

insert into dogs(name, breed) 
values('bob','beagle'),
('robby','corgi');

insert into dogs(name, breed)
values('Princess jane','Retriever');

select * from dogs;

create table items( price decimal(5,2));
Insert into items(price) Values(7);
insert into items(price) values(65657788097);
insert into items(price) values(34.88);
insert into items(price) values(298.99999);
insert into items(price) values(1.9999);
insert into items(price) values(999.99);
select * from items;

##------Float(precision 7 digits) and Double(15 digits) --------##
create table thingies(price float);
insert into thingies(price) values(88.45);
insert into thingies(price) values(8877.45);
insert into thingies(price) values(8877665544.45);
select * from thingies;


###-------DATE('YYYY-MM-DD') AND TIME ('HH:MM:SS')----------###  datetime ('YYYY-MM-DD HH:MM:SS')
# CURDATE()- gives current date
#CURTIME() - gives current time
# now() - gives current datetime
CREATE TABLE people(
name varchar(100),
birthdate DATE,
birthtime TIME,
birthdt DATETIME
);

INSERT INTO people(name,birthdate, birthtime,birthdt)
Values('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'),
('Larry','1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people(name,birthdate, birthtime,birthdt)
Values('Toaster', '2017-04-21', '19:12:43', '2017-04-21 19:12:43');

INSERT INTO people(name,birthdate, birthtime,birthdt)
Values('Jack', CURDATE(), CURTIME(), NOW());
select * from people;

select CURDATE();
select CURTIME();
select now();

##--- FORMATTING DATES------##
## DAY(), DAYNAME(), DAYOFWEEK(), DAYOFYEAR()
SELECT name, DAY(birthdate) from people;

SELECT name, birthdate, DAYNAME(birthdate)
FROM people;

SELECT name, birthdate, DAYOFWEEK(birthdate)
FROM people;

SELECT name, birthdate, DAYOFYEAR(birthdate)
FROM people;

SELECT name, birthdt, DAYOFYEAR(birthdt)
FROM people;

SELECT name, birthtime, HOUR(birthdt)
FROM people;
SELECT name, birthtime, MINUTE(birthdt)
FROM people;


SELECT name, birthdt,
	CONCAT(MONTHNAME(birthdt),' ',DAY(birthdt),', ',YEAR(birthdt)) as 'full date'
FROM people;

SELECT name, birthdt,
	DATE_FORMAT(birthdt, '%M %D, %Y') AS 'full date'
FROM people;

SELECT name, birthdt,
	DATE_FORMAT(birthdt, 'Born on a %W') AS 'birthday'
FROM people;

SELECT
	name, 
	birthdt,
	DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') AS 'full date'
FROM people;

## DATEDIFF,DATE_ADD,DATE_SUB

SELECT
	name,
	birthdate,
	DATEDIFF(NOW(), birthdate)
FROM people;


SELECT
	birthdt,
	DATE_ADD(birthdt, INTERVAL 1 MONTH) AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt - INTERVAL 1 MONTH AS 'add 1 month'
FROM people;

SELECT
	birthdt,
	birthdt + INTERVAL 15 MONTH + INTERVAL 15 HOUR
FROM people;

##--------TIMESTAMPS---------###

CREATE TABLE comments
(
	content VARCHAR(100),
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments(content)
VALUES ('lol what a funny article');

INSERT INTO comments(content)
VALUES ('I found this offensive');

INSERT INTO comments(content)
VALUES ('asdf');

SELECT * FROM comments
ORDER BY created_at DESC;



CREATE TABLE comments2
(
	content VARCHAR(100),
	changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2(content)
VALUES ('lolol');

INSERT INTO comments2(content)
VALUES ('I LIKE CATS AND DOGS');

INSERT INTO comments2(content)
VALUES ('asdf');

UPDATE comments2
SET content = 'THIS IS NOT GIBBERISH'
WHERE content = 'asdf';

SELECT *
FROM comments2
ORDER BY changed_at DESC;

##------EXERCISES-------##

CREATE TABLE inventory
(
	item_name VARCHAR(255),
	price DECIMAL(8,2),
	quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w');

SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets
(
	content VARCHAR(140),
	username VARCHAR(20),
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (content, username)
VALUES ('this is my first tweet', 'coltscat');

INSERT INTO tweets (content, username)
VALUES ('this is my second tweet', 'coltscat');


