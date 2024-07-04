
-- Customer.csv: https://drive.google.com/file/d/1_KcS9eSw3uMITC2lyfqqd26yongFDM8P/view
-- Payment.csv: https://drive.google.com/file/d/1tHtBOdb4Rdx5IC7ftzuXgrgMGPihkpzL/view


-- To import data from CSV to SQL,
-- First of all we have to make a table in SQL
-- And in Table, same columns (name) will be there as there are in CSV file

CREATE TABLE customer
(
 customer_id int8 PRIMARY KEY,
 first_name varchar(50),
 last_name varchar(50),
 email varchar(100),
 address_id int8
)
--- Created the Table

SELECT * FROM customer
-- To see the blank Table

--For importing we use the Copy Command
-- COPY table_name(column_name1, column_name2, column_name3)
-- FROM '/path/to/data.csv'
-- DELIMITER ','
-- CSV HEADER; (SYNTAX)
-----------------------------
COPY customer (customer_id, first_name, last_name, email, address_id)
FROM 'E:\#NewDownloads\customer.csv'
DELIMITER ','
CSV HEADER;

--Now do this to see all the data gets imported here in SQL from the CSV File.
SELECT * FROM customer
 ----------------------------------------------------------------------
--**************************************************************


--  Without writing query also, we can import the data from the csv file.

--First create the table, by runnig the query
CREATE TABLE payment
(
customer_id int8 PRIMARY KEY,
amount int8 NOT NULL,
mode varchar(50),
payment_date date
);

-- Then go to Schemas -> Then Tables -> Then go to the created table, -> 
-- right click on it -> Import/ Export File -> Import -> 
-- Now give the Path Name , Format will be csv , Encoding will be UTF8,
-- then in options check if header is ON or not. -> Make it ON.
-- -> then see the columns in the table are correct or not, then -> Ok

SELECT * FROM payment
