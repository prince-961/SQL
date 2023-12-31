use cats_app;
CREATE TABLE cats (
  cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  breed VARCHAR(100),
  age INT
);

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

----------------------------------------------
--               READ 
----------------------------------------------

-- Getting all columns

SELECT * FROM cats; 

-- Getting single field

SELECT name FROM cats; 

SELECT age FROM cats; 

SELECT cat_id FROM cats; 

-- Getting multiple fields but not all

SELECT name, age FROM cats; 

SELECT cat_id, name, age FROM cats; 

-- Order matters 

SELECT age, breed, name, cat_id FROM cats; 

SELECT cat_id, name, age, breed FROM cats; 

-- WHERE clause (Condition)

SELECT * FROM cats WHERE age=4;

-- WHERE, by default, case insensitive

SELECT * FROM cats WHERE name='Egg';

SELECT * FROM cats WHERE name='egG';

-- Select by comparing fields

SELECT cat_id, age FROM cats WHERE cat_id=age;

-- Aliases

SELECT cat_id AS id, name FROM cats;

SELECT name AS 'cat name', breed AS 'kitty breed' FROM cats;


----------------------------------------------
--               UPDATE
----------------------------------------------

UPDATE cats SET breed='Shorthair'
WHERE (breed='Tabby' AND cat_id <> 0); #Amazing

UPDATE cats SET age=14 WHERE name='Misty';

UPDATE cats SET name='Jack' WHERE name='Jackson' ;
select * from cats where breed='Maine coon';

UPDATE cats SET age=12 WHERE breed='Maine Coon';
----------------------------------------------
--               DELETE
----------------------------------------------

DELETE FROM cats WHERE name='egg';
select * from cats;
DELETE FROM cats WHERE age=4;

DELETE FROM cats WHERE cat_id=age;

DELETE FROM cats;