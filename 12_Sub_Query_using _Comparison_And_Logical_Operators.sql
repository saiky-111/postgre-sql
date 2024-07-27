
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
2           | 30     | Credit Card    | 2020-04-27
8           | 110    | Cash           | 2021-01-26
10          | 70     | mobile Payment | 2021-02-28
11          | 80     | Cash           | 2021-03-01
2           | 500    | Credit Card    | 2020-04-27