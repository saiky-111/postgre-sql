
-- Payment_table:https://drive.google.com/file/d/1tHtBOdb4Rdx5IC7ftzuXgrgMGPihkpzL/view
-- Customer_table:https://drive.google.com/file/d/1_KcS9eSw3uMITC2lyfqqd26yongFDM8P/view

--INNER JOIN - Returns records that have
--             matching values in both tables

-- • Syntax Of Inner Join

SELECT column_name (s)
FROM TableA
INNER JOIN TableB
ON TableA .col_name = TableB .col_name -- here if we interchange TableA and TableB , output will be same.
--Since, we are extracting common values, interchanging won't affect.
--Also, both col_name's should be same. 

• Example

SELECT * FROM customer AS c  --AS is called Alias in SQL, which gives a temporary name for easy representation
INNER JOIN payment AS p
ON c.customer_id = p.customer_id

-- The output shown will be common customer_id rows between both the tables.

-----------------------------------------------------------------------

--Suppose, we want to select only specified columns, we'll use:

SELECT c.first_name, p.amount , p.mode
FROM customer AS c 
INNER JOIN payment AS p
ON c.customer_id = p.customer_id

--In output, only 3 columns will come.

------------------------------------------------------------------------------

--LEFT JOIN - Returns all records from the
--             left table, and the matched
--             records from the right table

-- • Syntax of Left Join

SELECT column_name (s)
FROM TableA
LEFT JOIN TableB
ON TableA .col_name = TableB .col_name

-- Syntax same as Inner Join
--But, here table A should be at left and Table B should be at right.

• Example

SELECT * FROM customer AS c
LEFT JOIN payment AS p
ON c.customer_id = p.customer_id

--In output, the id's which will be common in table c and table p , will get attached.
--Table p gets attached to the right of table c (which are common)
--In the right table, which does not match will give null values.

-------------------------------------------------------------------------------------

--RIGHT JOIN - Returns all records from the
--             right table, and the matched
--             records from the left table

-- • Syntax of Right Join

SELECT column_name (s)
FROM TableA
RIGHT JOIN TableB
ON TableA .col_name = TableB .col_name

• Example

SELECT * FROM customer AS c
RIGHT JOIN payment AS p
ON c.customer_id = p.customer_id


---------------------------------------------------------------------------------

--FULL JOIN - Returns all records when
--             there is a match in either left
--             or right table.

-- • Syntax of Right Join

SELECT column_name (s)
FROM TableA
FULL OUTER JOIN TableB
ON TableA .col_name = TableB .col_name

• Example

SELECT * FROM customer AS c
FULL OUTER JOIN payment AS p
ON c.customer_id = p.customer_id


--Output is combination of Table A and Table B.