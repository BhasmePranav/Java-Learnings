/* Implementation of SQL views */
/* NOTE : SQL view is creating different temporary schema according to which data you want to show to user */

--EXAMPLE 1 : 
--creating view 1 for table studetns
CREATE VIEW students_view_1
AS SELECT email , name , roll_no FROM students

-- executing view
SELECT * FROM students_view_1


-----------------------------------------------------------------------------------------

--EXAMPLE 2 : 
CREATE VIEW students_view_2
AS SELECT email , division , standard FROM students

SELECT * FROM students_view_2