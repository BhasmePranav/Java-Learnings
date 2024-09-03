
/* Implementation of DDL (Data Defination Language) schema Modification Queries */

-- ALTER operations on database and tables

CREATE TABLE employees
(
	emp_id INT PRIMARY KEY,
	PAN VARCHAR(9) UNIQUE,
	name VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL
)

INSERT INTO employees VALUES(11023 , 'QWER1234H' , 'Ram' , 'ram@gmail.com'),
(11035 , 'AGSF7634K' , 'Shyam' , 'shyam@gmail.com')

INSERT INTO employees VALUES(11012 , 'VNBM9843T' , 'Sunil' , 'sunil@gmail.com'),
(11087 , 'OKTH3687K' , 'Anil' , 'anil@gmail.com')

SELECT * FROM employees

--Adding new Column in existing table
ALTER TABLE employees ADD COLUMN salary INT DEFAULT 27000



-- Removing column from existing table : To remove column use DROP query not DELETE
ALTER TABLE employees DROP COLUMN salary


-- Removing row from table
DELETE FROM employees
WHERE emp_id = 11012


/* NOTE : DELETE use to remove row  , DROP use to remove column, table, database */


--Updating data type of Attribute in table using MODIFY keyword
--In postgresSQL to modify column data type use command  ALTER COLUMN column_name TYPE new_datatype
ALTER TABLE employees ALTER COLUMN salary TYPE INT				


--Deleting all records from databsae : ths command will delete all data but maintain all the table schema as it is
DELETE FROM employees


-- Rename column name : query Syntax : change name old_name new_name new_datatype
ALTER TABLE employees RENAME COLUMN salary TO emp_salary


--Rename table name
ALTER TABLE employees RENAME TO employee_Details


