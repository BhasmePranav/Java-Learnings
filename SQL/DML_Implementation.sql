
/* Implementation of DML (Data Modification Language) Queries  */

SELECT * FROM students
SELECT * FROM address
SELECT * FROM marksheet

-- INSERT query for students table
INSERT INTO students VALUES('Aniket' , 3 , 'aniket@gmail.com', 10, 'D'),
('Ritik' , 21 , 'ritik@gmail.com',8 ,  'B'),
('Apurva' , 29 , 'apurva@gmail.com', 10 , 'A')


-- INSERT quert for marksheet table
INSERT INTO marksheet VALUES ()


-- adding new CONSTAINT for roll_no that is should be unique
ALTER TABLE students ADD CONSTRAINT roll_no UNIQUE(roll_no)

-- Updateing data according to condition using UPDATE and SET keyword
UPDATE students 
SET roll_no = 8 , standard = 4 , division = 'C'
where email = 'ramesh@gmail.com'


--Deleting records according to conditions
DELETE FROM students
WHERE roll_no = 21

--Handling PRIMARY KEY & FOREIGN KEY contraints
/* when we are deleting any records having relation in another table using foreign key at time it will arise constraint 
isuues to solve that issue there are two ways */

--- Ways 1 : ON DELETE CASCADE : it will delete all records in child table whicha re related to deleting record in parent table
--WE have already decalred foreign key contraint to add this ON DELETE CASCADE we need to drop this contraint 
ALTER TABLE marksheet 
DROP CONSTRAINT fk_contraint

ALTER TABLE marksheet
ADD CONSTRAINT fk_contraint FOREIGN KEY(student_email) REFERENCES students(email) ON DELETE CASCADE

DELETE FROM students
WHERE email = 'ramesh@gmail.com'		-- now record related to 'ramesh@gmail.com' from table marksheet gets deleted

--Way 2 : ON DELETE SET NULL	 : It will vhild table foreign key column value as null 
-- reason for dropping ad adding constraint again look at way 1
ALTER TABLE marksheet 
DROP CONSTRAINT fk_contraint

ALTER TABLE marksheet
ADD CONSTRAINT fk_contraint FOREIGN KEY(student_email) REFERENCES students(email) ON DELETE SET NULL

DELETE FROM students
WHERE email = 'samir@gmail.com'	--In foregin key column of marksheet table gets marked as null
