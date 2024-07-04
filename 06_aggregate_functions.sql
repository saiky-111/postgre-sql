-- MOST USED AGGREGATE FUNCTIONS:

--Aggregate function performs a calculation on multiple values and
-- returns a single value.
-- And Aggregate functions are often used with GROUP BY & SELECT
-- statement
-- • COUNT() returns number of values(rows)
-- • SUM() returns sum of all values
-- • AVG() returns average value
-- • MAX() returns maximum value
-- • MIN() returns minimum value
-- • ROUND() Rounds a number to a specified number of decimal places 

---------------------------------------------------------------------
SELECT COUNT(column_name) FROM table_name;
--It will return the number of rows , there is in the table.

SELECT COUNT(*) FROM table_name;
--It means we want the count of all the rows in the table.

--------------------------------------------------------------------
SELECT SUM(column_name) FROM table_name;
--It will return the aggregate sum of the corresponding column.

-------------------------------------------------------------------
SELECT MAX(column_name) FROM table_name;
--It will return the highest value in the column.

-------------------------------------------------------------------
SELECT MIN(column_name) FROM table_name;
--It will return the minimum value in the column.

---------------------------------------------------------------------
SELECT AVG(column_name) FROM table_name;
--It will return the average value of the column.
-- Here if data type is numeric, output may come as: 48.000000000000000000
--It doesn't look good, so it's a better practice to round it off.

-----------------------------------------------------------------------
SELECT ROUND(AVG(column_name) , no_of_digits_to_be_rounded_off) FROM table_name;
--It will return the rounded off value, of a particular operation, on the column.

--You can search Aggregate functions postgresql in google for more