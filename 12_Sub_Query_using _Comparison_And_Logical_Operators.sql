
--SUBQUERY

A Subquery or Inner query or a Nested query allows us to
create complex query on the output of another query.

• Sub query syntax involves two SELECT statements:

• Syntax:

SELECT column_name(s)
FROM table_name
WHERE column_name operator
(SELECT column_name FROM table_name WHERE ...);

-- (SELECT column_name FROM table_name WHERE ...)  --> this is the subquery or inner query.

-------------------------------------------------------------------------------------------

Question:
Find the details of customers, whose payment
amount is more than the average of total amount paid by all
customers.


SOLUTION:
--To Make the question easy, 
Divide above question into two parts:
1. Find the average amount.
2. Filter the customers whose amount > average amount.

customer_id | amount | mode           | payment_date
------------|--------|----------------|--------------
1           | 60     | Cash           | 2020-09-24
8           | 110    | Cash           | 2021-01-26
10          | 70     | mobile Payment | 2021-02-28
11          | 80     | Cash           | 2021-03-01
2           | 500    | Credit Card    | 2020-04-27



Actual Solution:

SELECT AVG(AMOUNT) FROM PAYMENT
--STEP1 -> Find the average value
--STEP2 -> Filter the customer data > avg value (SUB QUERY using Comparison Operator )

Output:

avg
164.00000000000000000000000
---------------------------------------------------------

SELECT AVG(AMOUNT) FROM PAYMENT
SELECT * 
FROM payment
WHERE amount > 164


OUTPUT:

customer_id | amount | mode           | payment_date
------------|--------|----------------|--------------
2           | 500    | Credit Card    | 2020-04-27

-- -> THis can be One Approach, but it is  not Dynamic.
-- -> The average value that came out to be 164 , is the average of the amount column in the table.
-- -> But if some new data arises, or if we have to delete some data, then we have to change the value 164 in the query manually.
-- -> So, it should be dynamic, thats why we use SUBQUERY.
-- -> Here in this solution, we hard coded the solution, manually.

--SUBQUERY SOLUTION:

SELECT * 
FROM payment
WHERE amount > (SELECT AVG(amount) FROM payment)

-- -> Here the solution is dynamic.

-- -> Since, here our output answer came in single value, 
--    that is why we used comparison operator here.(>)

-- -> But, if more than one value comes in output we would have used,
--   logical operators i.e IN statement.

---------------------------------------------------------------------------------------------
                    --    IN Operator (Logical Operator)

CUSTOMER
+-------------+-----------+-----------+------------+
| customer_id | first_name| last_name | address_id |
+-------------+-----------+-----------+------------+
|      1      |    Mary   |   Smith   |      5     |
|      3      |    Linda  | Williams  |      7     |
|      4      |  Barbara  |   Jones   |      8     |
|      2      |   Madan   |   Mohan   |      6     |
+-------------+-----------+-----------+------------+

-> Query: select customer_id from customer
-> Output: 
+-------------+
| customer_id |
+-------------+
|      1      |
|      3      |     ----> i.e Now we Got Multiple Outputs.(4 values)
|      4      |     -----> So, we will use logical operator (IN) operator.
|      2      |
+-------------+

---Using Subquery solution:
--(taking data from payment table)

SELECT customer_id, amount, mode
from payment
where customer_id IN (select customer_id from customer)

--> means if the customer_id is there in payments table, among these 4 values of customer's table,
--> Then only it will give output. Otherwise it will not give output.
--> Means it's a Kind of a JOIN.

Output:
customer_id | amount | mode           |
------------|--------|----------------|
1           | 60     | Cash           |
2           | 500    | Credit Card    |

-- ->Means in Customer and payment table , only these two customer id's are common.
---> I.e why we used the IN operator, so that we will get what is common in them.


---------------------------------------------------------------------------------------
                    --    EXISTS Operator (Logical Operator)
-- -> To get the first name and last name, in payments table from, customer table, by:
--> Using Join or by Using SUBQUERY , i.e EXISTS OPerator.

SELECT customer_id, amount
FROM payment
WHERE amount > 100

Output:
customer_id | amount |
------------|--------|
8           | 110    |
2           | 500    |


Actual Compete Query:

SELECT first_name, last_name
FROM customer c
WHERE EXISTS ( SELECT customer_id, amount
               FROM payment p
               WHERE p.customer_id = c.customer_id
               AND amount > 100)

               -->So, if customer id is common in both tables, and amount > 100 , then
            --    we want the customer's first name and last name in output.

Output:
+-----------+-----------+
| first_name| last_name |
+-----------+-----------+
|   Madan   |   Mohan   |
+-----------+-----------+

--> SUBQUERY is an easy and alternative way to bring the same result as by using JOINS.