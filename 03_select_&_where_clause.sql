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

--To use more than one conditions in the where clause , we apply(or use) Operators

--In SQl, the words or characters , which are reserved are called Operators
--4 types:
--Arithmetic Operators- for arithmetic operations on integer or numerical values
--eg:  + , - , * , / , % 

--Comparison Operators - for comparing any two data
--eg: = , != , > , >=

--Logical Operators - for performing Boolean Operations
--eg: ALl , IN , BETWEEN , LIKE, AND, OR, NOT, ANY
-- If it is false, it will not give data
--If it is true, it will output the data

--Bitwise Operators-- for performing bit operations on integer values
--eg: Bitwise AND(&) , Bitwise OR (|)

SELECT name FROM classroom
WHERE grade = 'A' AND rollno > 3
--it will only show the name

SELECT * FROM classroom
WHERE grade = 'A' AND rollno > 3
--All data of the student will come
---------------------------------------------------------------------------------

--LIMIT CLause
-- Limit Clause helps us to get, how many number of rows we want to see in Output.
SELECT column_name FROM table_name
LIMIT 5;
-- Here , now it will show only 5 rows of data. (the top 5)


----------------------------------------------------------------------------------------

--ORDER BY Clause
--ORDER BY clause will help us to sort the data
SELECT column_name FROM table_name
ORDER BY column_name ASC ;
--Here we are sorting the name column(in alphabet) in ascending order.(like: a,b,c,d,...)
--If we want in ascending order, we write ASC
--If we want by descending order, we write DESC
