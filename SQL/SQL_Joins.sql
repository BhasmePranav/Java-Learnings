/* Implementing Joins */

-- Join : Establishing relationship between two tables
/* For Implementing Joins we will create two tables */


-- Creating left table
CREATE TABLE left_table
(
	serial_no INT PRIMARY KEY,
	name VARCHAR NOT NULL,
	age INT NOT NULL,
	phone_number VARCHAR (20) CONSTRAINT phone_check CHECK(LENGTH(phone_number) = 10)
)

--Inserting values in left_table
INSERT INTO left_table 
VALUES	(10 , 'Pranav' , 23 , '9067683203'),
		(11 , 'Rohit' , 45 , '4567892345'),
		(12 , 'Chris' , 51 , '5645463425'),
		(13 , 'kevin' , 43 , '1235734856'),
		(14 , 'Kane' , 38 , '8633123432'),
		(15 , 'Virat' , 36 , '8698747303')

SELECT * FROM left_table

-- Creating table right table
CREATE TABLE right_table
(
	serial_no INT PRIMARY KEY,
	scored_runs INT NOT NULL,
	centuries INT NOT NULL
)

-- Inserting values in right_table
INSERT INTO right_table
VALUES(12 , 100000 , 5),
	(13 , 2000 , 5),
	(14 , 50000 , 5),
	(21 , 40000 , 5),
	(22 , 56436 , 5),
	(23 , 12879 , 5)

SELECT * FROM right_table



-- INNER JOIN : inner join will retrieve only common records from both table
SELECT l.* , r.* FROM left_table AS l
INNER JOIN right_table AS r
ON l.serial_no = r.serial_no

-- LEFT OUTER JOIN : 
/* retirve all records form left_table 
for records in left-table who dont have matching record in right table at that place it will null values for those records */ 
SELECT l.* , r.* FROM left_table AS l
LEFT OUTER JOIN right_table AS r
ON l.serial_no = r.serial_no



--RIGHT OUTER JOIN
/* retieve all records from right table and matching records from left table
for those record in right table who sont have matching records int left table at that place it will place null values */
SELECT l.* , r.* FROM left_table AS l
RIGHT OUTER JOIN right_table AS r
ON l.serial_no = r.serial_no




--FULL OUTER JOIN
/*It will retireve all records from both table 
and which values are not in another table then it will place null in corresponding data */
SELECT l.* , r.* FROM left_table AS l
FULL JOIN right_table AS r			-- we can write as FULL JOIN or FULL OUTER JOIN
ON l.serial_no = r.serial_no



--CROSS JOIN : create cartesian prouduct of mentioned tables
SELECT * FROM left_table CROSS JOIN right_table











