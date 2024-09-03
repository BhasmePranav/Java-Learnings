
/* Implementation of DDL keys and Constraints DDL : Data Defination Language */

CREATE TABLE marksheet
(
	result_ID INT PRIMARY KEY,			-- set it as PRIMARY KEY , automatically posses NOT NULL and UNIQUE contraint
	physics INT	NOT NULL,				-- Using CONSTRAINT NOT NULL to specify value is not null
	CONSTRAINT phy check(physics > 0),
	chemistry INT	NOT NULL,
	CONSTRAINT che check(chemistry > 0),
	Mathematics INT	NOT NULL,
	CONSTRAINT math check(Mathematics > 0),
	Biology INT	NOT NULL,
	--CONSTRAINT bio check(Biology > 0),
	student_email VARCHAR(25),
	constraint fk FOREIGN KEY (student_email) REFERENCES students(email)
);

ALTER TABLE marksheet ALTER COLUMN Biology TYPE FLOAT;			--	Updating Data type of column Biology to float	
ALTER TABLE marksheet ALTER COLUMN Biology TYPE INT;			--	Updating Data type of column Biology to INT

DROP TABLE MarkSheet

ALTER TABLE marksheet DROP CONSTRAINT fk
ALTER TABLE marksheet ADD CONSTRAINT fk_contraint FOREIGN KEY (student_email) REFERENCES students(email)

--Using DEFAULT clause
ALTER TABLE marksheet ADD COLUMN scholorship VARCHAR DEFAULT 'No';
ALTER TABLE marksheet ADD COLUMN status VARCHAR DEFAULT 'Not Declared';
ALTER TABLE marksheet ADD COLUMN average FLOAT DEFAULT 0.0;

INSERT INTO marksheet(result_ID , physics , chemistry , Mathematics , Biology , student_email)
values (101 , 90 , 70 , 92 , 87 , 'pranav@gmail.com'),
(102 , 91 , 72 , 93 , 88 , 'sakshi@gmail.com')

INSERT INTO marksheet(result_ID , physics , chemistry , Mathematics , Biology , student_email)
values(103 , 55 , 53 , 78 , 88 , 'sakshi@gmail.com'),
(104 , 36 , 38 , 92 , 98 , 'sakshi@gmail.com')


--Connecting Tables using foreign key "student_email" of table "marksheet"
SELECT s.* , m.* from students AS s  , marksheet AS m where s.email = m.student_email

-- Using CASE to find average and set status of student pass or not
update marksheet
SET status = CASE WHEN ((physics + chemistry + mathematics + biology)/4) > 70 THEN 'Pass' ELSE 'FAIL' END

-- Updating Average of each student in average column by calulation
UPDATE marksheet
SET average = ((physics + chemistry + mathematics + biology)/4)

-- Adding few new records
UPDATE marksheet
SET student_email = 'samir@gmail.com'
WHERE result_ID = 103

UPDATE marksheet
SET student_email = 'ramesh@gmail.com'
WHERE result_ID = 104


--Updating scholorShip status according to average
UPDATE marksheet
SET scholorship = CASE WHEN (average > 80) THEN 'Applicable' ELSE 'NOT Applicable' END

select * from marksheet
