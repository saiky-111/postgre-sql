--Creating a Classroom TABLE
 
 CREATE TABLE classroom (     
    rollno int8 PRIMARY KEY,     
    name varchar(50) NOT NULL, 
    house char(12) NOT NULL,       
    grade char(1)      
);

--Inserting VALUES IN the table classroom

INSERT INTO classroom 
(rollno, name, house, grade)
VALUES
(1, 'Sam', 'Akash', 'B'),
(2, 'Ram', 'Agni', 'A'),
(3, 'Shyam', 'Jal', 'B'),
(4, 'Sundar', 'Agni', 'A'),
(5, 'Ram', 'Yayu', 'B');

--For accessing all the data:
--SELECT * FROM table_name (SYNTAX)
SELECT * FROM classroom

--For accessing some specific columns like : rollno, name, grade
--SELECT column_name FROM table_name (SYNTAX)
SELECT rollno, name, grade FROM classroom

--If we want to see the distinct values in the particular column of table
--SELECT DISTINCT column_name FROM table_name(SYNTAX)
SELECT DISTINCT grade FROM classroom

----------------------------------------------------------------------
--WHERE clause is used when we want to filter the data, by putting some conditions in the table
--WHERE CLAUSE

--Select column_name from table_name
--where conditions;(SYNTAX)

SELECT name FROM classroom  
WHERE grade = 'A';
--It will only show the name of those students whose grades are A

---------------------------------------------------------------------------

--To use more than one conditions in the where clause , we apply Operators
