--INSERT VALUES IN TABLE

--First create a table with following columns:
--CustID, CustName, Age, City, Salary
--then run the query

 CREATE TABLE customer1 (      -- Create a table named 'customer'
    custid int8 PRIMARY KEY,     -- 'ID' column of type int8, set as the primary key -- defining integer upto 8 digits
    custname varchar(50) NOT NULL, -- 'Name' column of type varchar with a maximum length of 50, cannot be NULL
    age int NOT NULL,        -- 'Age' column of type int, cannot be NULL
    city char(50),           -- 'City' column of type char with a fixed length of 50
    salary numeric           -- 'Salary' column of type numeric
);

--The below whole command is used to enter a entire row in the table
INSERT INTO customer1
(CustID, CustName, Age, City, Salary)
VALUES
(1, 'Sam', 26, 'Delhi', 9000),
(2, 'Ram', 19, 'Bangalore', 11000),
(3, 'Pam', 31, 'Mumbai', 6000),
(4, 'Jam', 42, 'Kolkata', 10000);

--Then run the following command to view the table
SELECT * FROM customer1
----------------------------------------------------------------------
--UPDATE VALUES IN TABLE

UPDATE customer1
SET custname = 'Xam', age = 32
WHERE custid = 4;

--Then run the following command to view the updated values in the table
SELECT * FROM customer1

---------------------------------------------------------------------------
--DELETE VALUES IN TABLE
-- DELETE FROM table_name 
-- WHERE condition; (SYNTAX)
DELETE FROM customer1
WHERE custid = 3;

--Then run the following command to view the remaining values in the table after deleting
SELECT * FROM customer1

--------------------------------------------------------------------------
--ALTER VALUES IN TABLE

--Changing(modifying) the data type of the column
-- ALTER TABLE table_name
-- ALTER COLUMN column_name TYPE new_data_type;(SYNTAX)

ALTER TABLE customer1
ALTER COLUMN salary TYPE integer;

--OR
ALTER TABLE customer1
ALTER COLUMN custname TYPE varchar(40);

----Changing(modifying) the name of the column
-- ALTER TABLE table_name
-- RENAME COLUMN existing_column_name TO new_column_name;(SYNTAX)

ALTER TABLE customer1
RENAME COLUMN salary TO betan;

----Changing(modifying) the specific value in any row of the column
--WE ALREADY SAW IT

UPDATE customer1
SET salary = 7000
WHERE custid = 3;

-------------------------------------------------------------------

--Adding Columns in an Existing Table
--ALTER TABLE table_name
--ADD COLUMN column_name data_type;(SYNTAX)

ALTER TABLE customer1
ADD COLUMN gender varchar(10);

----Changing(updating) the specific value in any row of the column
--WE ALREADY SAW IT

UPDATE customer1
SET gender = 'Male'
WHERE CustID = 1;

UPDATE customer1
SET gender = 'Male'
WHERE CustID = 2;

UPDATE customer1
SET gender = 'Female'
WHERE CustID = 4;

-------------------------------------------------------------------------
--Deleting Columns in an Existing Table
--ALTER TABLE table_name
--DROP COLUMN column_name;(SYNTAX)

ALTER TABLE customer1
DROP COLUMN gender;

----------------------------------------------------------------------

---TO DELETE THE ENTIRE TABLE FROM THE DATABASE
--DROP TABLE table_name;(SYNTAX)
DROP TABLE customer1;

---TO DELETE THE DATA FROM THE ENTIRE TABLE (THE TABLE WILL REMAIN)
--TRUNCATE TABLE table_name;(SYNTAX)
TRUNCATE TABLE customer1;

------------------------------------------------------------------
--The below whole command is used to enter a entire row in the table
--TO ENTER A SPECIFIC ROW

INSERT INTO customer1
(CustID, CustName, Age, City, Salary)
VALUES
(3, 'Pam', 31, 'Mumbai', 6000);