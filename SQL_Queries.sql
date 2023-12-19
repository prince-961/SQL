create database cats_app;
use cats_app;
show databases;

CREATE TABLE cats(
name VARCHAR(100), 
age INT
);

INSERT INTO cats(name, age)
VALUES ('Blue', 1);

INSERT INTO cats(age, name)
VALUES (11, 'Draco');

INSERT INTO cats(name, age)
VALUES ('Peanut', 2)
,('Butter',4)
,('Jelly',7);

Select * from cats;

# practice time 
create table people(
first_name VARCHAR(20),
last_name VARCHAR(20),
age int);
insert into people(first_name, last_name, age)
values('Tina','Belcher', 13);
insert into people(age, last_name, first_name)
values(42,'Belcher', 'Bob');
insert into people(first_name, last_name, age)
values('Linda','Belcher', 45)
,('phillip','Frond',38)
,('Calvin','Fischoeder',70);

Drop Table people;  #cats
Desc cats;

INSERT INTO cats(name, age)
VALUES ('The cat named charlie which
 is also a human name
 In fact I know a couple of
 charlies. FUN Fact!! john is also a good cat but his name is also
 ', 32);
 select * from cats;
 show warnings; # shows error and warnings
 
#INSERT INTO cats(name, age)
#VALUES ('Lima','hbhjs);

insert into cats(name) values('prince');
select * from cats;

CREATE TABLE cats2(
name VARCHAR(100) NOT NULL, 
age INT NOT NULL
);

desc cats2;
Insert  into cats2(name) values('Texas');
select * from cats2;


CREATE TABLE cats3 (
name VARCHAR(20) DEFAULT 'no name provided',
age INT DEFAULT 99
);

Desc cats3;
insert into cats3(age) values(13);
insert into cats3() values();
insert into cats3(name, age) values('Montana',NULL); #i can still set value as null
select * from cats3;
 
CREATE TABLE cats4 (
name VARCHAR(20) NOT NULL DEFAULT 'no name provided',
age INT NOT NULL DEFAULT 99
);
insert into cats4(name, age) values('Montana',NULL);

#KEY constraint

CREATE TABLE unique_cats( cat_id INT NOT NULL,
name VARCHAR(20),
age INT,
primary key (cat_id)
);
Desc unique_cats;
insert into unique_cats(cat_id,name,age) values(1,'Fred',23);
insert into unique_cats(cat_id,name,age) values(2,'Louis',13);
insert into unique_cats(cat_id,name,age) values(1,'James',13);
#Error Code: 1062. Duplicate entry '1' for key 'unique_cats.PRIMARY'
#Manually entering id is not good approach
select * from unique_cats;

#Auto Increment
CREATE TABLE unique_cats2( cat_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20),
age INT,
primary key (cat_id)
);
DESC unique_cats2;
insert into unique_cats2(name, age) values('Skippy',4);
insert into unique_cats2(name, age) values('Jiff',5);
insert into unique_cats2(name, age) values('Jiff',4);
insert into unique_cats2(name, age) values('Jiff',2);
insert into unique_cats2(name, age) values('Skippy',5);
Select * from unique_cats2;


#practice
CREATE TABLE employees( 
id INT NOT NULL AUTO_INCREMENT,
fisrt_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
middle_name VARCHAR(255),
age INT NOT NULL,
current_status VARCHAR(100) NOT NULL DEFAULT 'employed',
PRIMARY KEY(id)
);
INSERT INTO employees(fisrt_name,last_name,age) 
values('Dora','Smith', 58);
select * from employees;
desc employees;