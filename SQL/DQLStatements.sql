

/* Implementation of All DRL/DQL queries . (Data retrieval Language / Data Query Language
these queries used to display data with different conditions */



--Creating a table "Address" to store students address
CREATE TABLE address
(
	city VARCHAR (25),
	dist VARCHAR (25),
	locality VARCHAR (25),
	pin_code INT
)

--Altering table to add new colum for email we will set it as foreign key afterwards
ALTER TABLE address ADD COLUMN student_email VARCHAR(25)


SELECT * FROM address

--- Dropping entire table
DROP TABLE address

--Adding values in address table
INSERT INTO address(city , dist , locality , pin_code , student_email)
	values('Chiplun' , 'Ratnagiri' , 'Kaviltali' , 415605 , 'pranav@gmail.com'),
	('Chiplun' , 'Ratnagiri' , 'Kaviltali' , 415605 , 'pranali@gmail.com'),
	('Bhandara' , 'Bhandara' , 'Corner' , 409890 , 'sakshi@gmail.com'),
	('Bhandara' , 'Bhandara' , 'Corner' , 409890 , 'samir@gmail.com'),
	('Nagpur' , 'Nagpur' , 'Center' , 499565 , 'shreya@gmail.com')
	
INSERT INTO address	values('Kolhapur' , 'Kolhapur' , 'Kalamba' , 401203 , 'nikhil@gmail.com'),
	('Mahad' , 'Raigad' , 'null' , 456789 , 'aniket@gmail.com')

INSERT INTO address	(city , dist)values('Kolhapur' , 'Kolhapur')

-- Using WHERE conditional statement
SELECT * FROM address where city = 'Chiplun'

--Using BETWEEN clause
SELECT * FROM address WHERE pin_code BETWEEN 410000 AND 480000


-- Using IN clause : use to reduce multiple where conditions , we provide one array
SELECT * FROM address WHERE city IN ('Chiplun' , 'Bhandara');
SELECT * FROM address WHERE city NOT IN ('Chiplun' , 'Bhandara');		-- Checkinh record where city is other than mentioned cities


--Using ISNULL clause
SELECT * FROM address WHERE locality IS NULL

-- Pattern searching or Wildcard using '%' & '_'
SELECT * FROM address WHERE city LIKE '%a%'			-- % used to check multiple characters _ used to check single character
SELECT * FROM address WHERE city LIKE '_h%'			-- _ used to check single character

-- Using ORDER BY clause to Sorting with particular column
SELECT * FROM address ORDER BY city
SELECT * FROM address ORDER BY pin_code DESC		-- For descending sorting use keyword DESC

--Using DISTINCT clause
SELECT DISTINCT city FROM address			-- Display all distinct values

-- USing Group By clause
SELECT city FROM address GROUP BY city			-- It will make a group of similar values in given column

/* if we dont use any aggregation in GROUP BY then SQL will treat it as DISTINCT */

-- Using aggreagtion with GROUP BY
SELECT city , AVG(pin_code) FROM address GROUP BY city	--It will give average of pin_code of all records in same cities



--Using HAVING clause





