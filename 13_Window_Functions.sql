--> In windows functions, it gives values in columns , and not a single value.

• Window functions
applies aggregate, ranking and analytic functions
over a particular window (set of rows).

• And OVER clause is used with window functions to define that
window.


--> When we use Aggregate Functions: It Gives output one row per aggregation

--> When we use Winndow Functions: The rows maintain their separate identities
-- (Here we want to do sum in a group of rows , so it gives values in a column, and not a single value.)


-- WINDOWS FUNCTION SYNTAX:
SELECT column_name (s)
fun( ) OVER ( [ <PARTITION BY Clause> ]
              [ <ORDER BY Clause> ]
              [ <ROW or RANGE Clause> ] )

FROM table_name

--In place of fun() , we can use and Select any of the function:
-- •Aggregate functions
-- •Ranking functions
-- •Analytic functions( VAlue Functions)


-- In the OVER clause we define a window.
--Means on which set of rows we want to apply the function.
-- Since, we the aggregation of the set of rows.
--In OVER Clause: there are three parts: (Define a Window)

-- • PARTITION BY -in which columns we want to do partition .( Actually it groups the column.)
-- • ORDER BY - according to which column's value we want to sort the data.
-- • ROWS - range of the rows we want to apply the window function

--------------------------------------------------------------------------------

--WINDOW FUNCTION TERMS:
/*
Let’s look at some definitions:
• Window function : 
applies aggregate, ranking and analytic functions
over a particular window; for example, sum, avg, or row_number

• Expression :
is the name of the column that we want the window
function operated on. This may not be necessary depending on what
window function is used

• OVER:
is just to signify that this is a window function

• PARTITION BY :
divides the rows into partitions so we can specify which
rows to use to compute the window function

• ORDER BY:
is used so that we can order the rows within each partition.
This is optional and does not have to be specified

• ROWS:
can be used if we want to further limit the rows within our
partition. This is optional and usually not used
*/


-- There is no official division of the SQL window functions into
-- categories but high level we can divide into three types:

--Window Functions:
-- Aggregate:
-- •SUM
-- •AVG
-- •COUNT
-- •MIN
-- •MAX

-- Ranking:
-- •ROW_NUMBER
-- •RANK
-- •DENSE_RANK
-- •PERCENT_RANK

-- Value/Analytic:
-- •LEAD
-- •LAG
-- •FIRST_VALUE
-- •LAST_VALUE

-------------------------------------------------------------

Q. Data in our table:
+--------+---------+
| new_id | new_cat |
+--------+---------+
|  100   |  Agni   |
|  200   |  Agni   |
|  500   | Dharti  |
|  700   | Dharti  |
|  200   |  Vayu   |
|  300   |  Vayu   |
|  500   |  Vayu   |
+--------+---------+

-- Window Function Query we are running:
-- AGGREGATE FUNCTION Example:

SELECT new_id , new_cat,
SUM (new_id ) OVER ( PARTITION BY new_cat ORDER BY new_id ) AS "Total",  -- Partition by : groups the data in the column as three parts as: Agni, Dharti , Vayu
AVG (new_id ) OVER ( PARTITION BY new_cat ORDER BY new_id ) AS "Average",
COUNT (new_id ) OVER ( PARTITION BY new_cat ORDER BY new_id ) AS "Count",
MIN (new_id ) OVER ( PARTITION BY new_cat ORDER BY new_id ) AS "Min",
MAX (new_id ) OVER ( PARTITION BY new_cat ORDER BY new_id ) AS "Max"
FROM test_data


--Output:
+--------+---------+-------+----------+-------+-----+-----+
| new_id | new_cat | Total |  Average | Count | Min | Max |
+--------+---------+-------+----------+-------+-----+-----+
|  100   |  Agni   |  300  |   150    |   2   | 100 | 200 |
|  200   |  Agni   |  300  |   150    |   2   | 100 | 200 |
|  500   | Dharti  | 1200  |   600    |   2   | 500 | 700 |
|  700   | Dharti  | 1200  |   600    |   2   | 500 | 700 |
|  200   |  Vayu   | 1000  | 333.333  |   3   | 200 | 500 |
|  300   |  Vayu   | 1000  | 333.333  |   3   | 200 | 500 |
|  500   |  Vayu   | 1000  | 333.333  |   3   | 200 | 500 |
+--------+---------+-------+----------+-------+-----+-----+
