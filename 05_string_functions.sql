--Functions in SQL

-- Functions are some keywords/funcctions which are alreay feeded in SQL.
-- They help us to achieve some task.

-- Functions in SQL are the database objects that contains a set
-- of SQL statements to perform a specific task. A function
-- accepts input parameters, perform actions, and then return
-- the result.

--Two types of Functions:
-- System Defined Function: which are already defined in the System
-- also called built-in functions.
-- rand(), round(), upper(), lower(), count(), sum(), avg(),  max() , etc.

--User Defined Functions:
--We define our own functions , and when we call the function in the future,
-- it will help us to achieve the task in future.

-- Once you define a user-defined function, you
-- can call it in the same way as the built-in functions

------------------------------------------------------------------------------------
-- Strings are special characters, or, alpha-numeric values

-- • UPPER() converts the value of a field to uppercase
-- • LOWER() converts the value of a field to lowercase
-- • LENGTH() returns the length of the value in a text field
-- • SUBSTRING() extracts a substring from a string
-- • NOW() returns the current system date and time
-- • FORMAT() used to set the format of a field
-- • CONCAT() adds two or more strings together
-- • REPLACE() Replaces all occurrences of a substring within a string, with a new substring
-- • TRIM() removes leading and trailing spaces (or other specified characters) from a string

-- Also search for more String Functions in Google:  String Functions and Operators postgresql

----------------------------------------------------------------------------

SELECT UPPER(column_name) FROM table_name
--This will make all the names in the mentioned column name as CAPITAL LETTERS (UPPERCASE).

-------------------------------------------------------------------------------------------
SELECT LOWER(column_name) FROM table_name
--This will make all the names in the mentioned column name as SMALL LETTERS. (LOWERCASE)

--------------------------------------------------------------------------------------------
SELECT LENGTH(column_name) , column_name FROM table_name
--This would display all the length of the words and the words.
--(written this way above so that it is easy to compare  the words with their corresponding lengths)
-- We could have simply writen : SELECT LENGTH(column_name) ,FROM table_name


--------------------------------------------------------------------------------------------
SELECT SUBSTRING(column_name , starting_index , ending_index) , column_name FROM table_name 

--Another way:
SELECT SUBSTRING(column_name FROM starting_index FOR ending_index) , column_name FROM table_name 

--Means you give me all the subsets of the strings from 1 to 3 in that particular column
--Again, we also could have written: 
-- SELECT SUBSTRING(first_name FROM 1 FOR 3 ) FROM customer
--Extra  column_name was written just to compare , the values with and without the commands.
--Note: It should be 1 based index

-- SELECT SUBSTRING(first_name FROM 1 FOR 3 ) , first_name FROM customer
-- SELECT SUBSTRING(first_name , 1 , 3 ) , first_name FROM customer

--------------------------------------------------------------------------------------
SELECT CONCAT (column_name1 , column_name2) , column_name1 , column_name2
FROM table_name

--Means concatenate (paste) the strings in the first and second column 
--Also we want the first name and last name seperately.
--SELECT CONCAT(first_name , last_name) , first_name ,last_name 
-- FROM customer

--Another way:
SELECT column_name1 || ' ' || column_name2 AS new_column_name
FROM table_name;
--Means concatenate the first and last names and put in a new column of the given name.

--IF COLUMN NAME IS NOT GIVEN: AT THE PLACE OF COLUMN NAME : ?column? : will be shown

-----------------------------------------------------------------------------------
SELECT REPLACE (column_name, from_substring, to_substring)
FROM table_name;

--SELECT REPLACE (first_name, 'Mary', 'Mohan')
-- FROM customer;

--Means wherever Mary is written in the column first_name, replace it with Mohan.
--Another way:
SELECT REPLACE(column_name, 'John', 'Jonathan') AS new_column_name
FROM table_name;
--------------------------------------------------------------------------------------

--TRIM is mostly used in Data Cleaning

SELECT TRIM(' ' FROM column_name) AS new_column_name
FROM table_name;

--Another way:
--Trimming specific characters from both ends:
SELECT TRIM(BOTH '-' FROM '-12345-') AS trimmed_value;
-- Output: '12345'

--Trimming spaces from both ends of the string:
SELECT TRIM('  Hello, world!  ') AS trimmed_string;
-- Output: 'Hello, world!'

--Trimming spaces from the beginning of the string:
SELECT TRIM(LEADING FROM '  Hello, world!  ') AS trimmed_string;
-- Output: 'Hello, world!  '

--Trimming spaces from the end of the string:
SELECT TRIM(TRAILING FROM '  Hello, world!  ') AS trimmed_string;
-- Output: '  Hello, world!'
