
create database school		-- creating database "school" in server

/*  Creating and dropping database from server using below commands   */
CREATE DATABASE temporarySchool	
DROP DATABASE temporarySchool



CREATE TABLE students		-- creating table "students in database
(
	name VARCHAR,		-- decalring variables with their data Types
	roll_no INT,
	email VARCHAR,
	standard INT,
	division VARCHAR
);

SELECT * FROM students;		-- displaying all the records in table

/*	
	multiple ways to insert data into table
*/

--	Way 1	:: inserting single record at a time
INSERT INTO students VALUES('Pranav' , 7 , 'pranav@gmail.com' , 10 , 'B');
INSERT INTO students VALUES('Pranali' , 26 , 'pranali@gmail.com' , 10 , 'A');
INSERT INTO students VALUES('Sakshi' , 28 , 'sakshi@gmail.com' , 10 , 'A');


-- Way 2 ::  inserting multiple records at a time
INSERT INTO students VALUES
('Shreya' , 22 , 'shreya@gmail.com' , 8 , 'C'),
('Samir' , 25 , 'samir@gmail.com' , 5 , 'D')

-- way 3 :: inserting partial data in records in database
INSERT INTO students (name , email)
values('Ramesh' , 'ramesh@gmail.com');



-- Creating table "trial" for tying command drop table
CREATE TABLE trial
(
	roll INT,
	name VARCHAR
);

DROP TABLE trial		-- droping table from database


