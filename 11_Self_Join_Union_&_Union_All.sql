
--SELF JOIN:

• A self join is a regular join in which a table is joined to itself.

• SELF Joins are powerful for comparing values in a column of rows with the same table.

Syntax:

SELECT column_name (s)
FROM Table AS T1      --By default, JOIN is considered as INNER JOIN
JOIN Table AS T2     --T1 and T2 table names should be same.
ON T1.col_name = T2.col_name

-----------------------------------------------------------------------
Q. Let this be the table:

"empid"	"empname"	"manager_id"
1	     "Agni"	       3
2	    "Akash"	       4
3	   "Dharti"	       2
4	    "Vayu"	       3

In output, we want the empname to get mapped with the manager_id column,
means beside empname the name corresponds on manager_id should come.

Ans:

--SOLUTION:1
SELECT *
FROM emp AS T1      
JOIN emp AS T2    
ON T2.emp_id = T2.manager_id

Output:
"empid"	"empname"	"manager_id"  	"empid-2"	"empname-2"	"manager_id-2"
1	      "Agni"	     3	            3	       "Dharti"	    2
2	      "Akash"	     4	            4	       "Vayu"	    3
3	      "Dharti"	     2	  - - ->    2	       "Akash"	    4
4	      "Vayu"	     3	            3	       "Dharti"	    2

--But, we don't want like this:

--We want: only Employee Name and Manager Name.


--SOLUTION:2

SELECT T1.empname AS employee_name, T2.empname AS manager_name
FROM emp AS T1      
JOIN emp AS T2      
ON T1.manager_id = T2.empid;  --IMPORTANT 

Output:

"employee_name"	"manager_name"
"Agni"	         "Dharti"
"Akash"	         "Vayu"
"Dharti"	     "Akash"
"Vayu"	         "Dharti"


-------------------------------------------------------------

--UNION

The SQL UNION clause/operator is used to combine/concatenate the results
of two or more SELECT statements without returning any duplicate rows and
keeps unique records.

To use this UNION clause, each SELECT statement must have:

• The same number of columns selected and expressions
• The same data type and
• Have them in the same order

• Syntax:
SELECT column_name (s) FROM TableA
UNION 
SELECT column_name (s) FROM TableB

• Example:
SELECT cust_name , cust_amount from custA
UNION
SELECT cust_name , cust_amount from custB


-----------------------------------------------------------------

--UNION ALL

In UNION ALL everything is same as UNION , it
combines/concatenate two or more table but keeps all
records, including duplicates.

• Syntax:

SELECT column_name (s) FROM TableA
UNION ALL
SELECT column_name (s) FROM TableB

• Example:

SELECT cust_name , cust_amount from custA
UNION ALL
SELECT cust_name , cust_amount from custB


--Example:

Table: custA
--------------------------------
| cust_name    | cust_amount    |
|-------------|----------------|
| Madan Mohan  | 2100           |
| Raju Nath    | 1200           |
| Govind Dev   | 5000           |
--------------------------------
Table: custB
--------------------------------
| cust_name    | cust_amount    |
|-------------|----------------|
| Gopal Bhat   | 1500           |
| Madan Mohan  | 2100           |
--------------------------------

--Solution:

SELECT cust_name , cust_amount FROM custA
UNION
SELECT cust_name , cust_amount FROM custB

--Output:

"cust_name"	"cust_amount"
"Gopal Bhat"	1500
"Madan Mohan"	2100
"Govind Dev"	5000
"Gopi Nath"	    1200

--But , if we do UNION ALL


--Solution:

SELECT cust_name , cust_amount FROM custA
UNION ALL
SELECT cust_name , cust_amount FROM custB

--Output:

"cust_name"	"cust_amount"
"Madan Mohan"	2100
"Gopi Nath" 	1200
"Govind Dev"	5000
"Gopal Bhat"	1500
"Madan Mohan"	2100

--So, UNION will give unique values
--But UNION ALL will give even the duplicate values.