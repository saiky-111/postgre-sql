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

-------------------------------------------------------------------

--If you forgot to add a column as a Primary Column, 
-- you can use the below query to make it primary key column.

ALTER TABLE table_name
ADD CONSTRAINT pk_column_name PRIMARY KEY (column_name);

-- Example:
ALTER TABLE payment
ADD CONSTRAINT pk_customer_id PRIMARY KEY (customer_id);

--To drop the constraint, from a column , you can use:
-- Eg:

ALTER TABLE payment
DROP CONSTRAINT pk_customer_id;

-- Payment_table:https://drive.google.com/file/d/1tHtBOdb4Rdx5IC7ftzuXgrgMGPihkpzL/view
-- Customer_table:https://drive.google.com/file/d/1_KcS9eSw3uMITC2lyfqqd26yongFDM8P/view


----------------------------------------------------------------------------------------

--TO CHANGE THE DATA TYPE OF SOME YOU CAN USE THE FOLLOWING COMMAND:

ALTER TABLE your_table_name
    ALTER COLUMN column_name1 SET DATA TYPE INTEGER[],
    ALTER COLUMN column_name2 SET DATA TYPE INTEGER[];

---------------------------------

--ADD COLUMNS:

ALTER TABLE emp
    ADD COLUMN temp_empid INTEGER,
    ADD COLUMN temp_manager_id INTEGER;

--DROP COLUMNS:

ALTER TABLE emp
    DROP COLUMN empid,
    DROP COLUMN manager_id;

--RENAME COLUMNS:

ALTER TABLE emp
    RENAME COLUMN temp_empid TO empid;
    
ALTER TABLE emp
    RENAME COLUMN temp_manager_id TO manager_id;

