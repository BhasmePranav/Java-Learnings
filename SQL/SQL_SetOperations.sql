/* Implementation of SQL SET operations */

/* for performing set operation on table column  , datatypes amd number of columns should be same */

--creating table
CREATE TABLE table_1
(
	roll_no INT PRIMARY KEY,
	name VARCHAR NOT NULL,
	email VARCHAR NOT NULL  UNIQUE
)

SELECT * FROM table_1

--Inserting values in table_1
INSERT INTO table_1
VALUES	(11 , 'Pranav' , 'pranav@gmail.com'),
		(12 , 'Rohit' , 'rohit@gmail.com'),
		(13 , 'Virat' , 'virat@gmail.com'),
		(14 , 'Hardik' , 'hardik@gmail.com')

--Creating table_2
CREATE TABLE table_2
(
	roll_no INT PRIMARY KEY,
	name VARCHAR NOT NULL,
	email VARCHAR NOT NULL  UNIQUE
)

SELECT * FROM table_2


--Inserting values table_2
INSERT INTO table_2
VALUES	(11 , 'Sakshi' , 'sakshi@gmail.com'),
		(12 , 'Rohit' , 'rohit@gmail.com'),
		(13 , 'Virat' , 'virat@gmail.com'),
		(14 , 'Hardik' , 'hardik@gmail.com')

--UNION operation : give all records from both tables
SELECT * FROM table_1
UNION
SELECT * FROM table_2

--INTERSECT operation : give common records from both tables
SELECT * FROM table_1
INTERSECT
SELECT * FROM table_2

--MINUS : there is no keyword for minus operation so we will emulate this
SELECT * FROM table_1 AS t1
FULL JOIN table_2 AS t2
ON t1.email = t2.email
WHERE t1.roll_no IS NULL