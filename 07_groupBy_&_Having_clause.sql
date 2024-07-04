--GROUP BY Statement

-- The GROUP BY statement group rows that have the same values into
-- summary rows.
-- It is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(),
-- AVG()) to group the result-set by one or more columns
-- • Syntax
-- SELECT column_name(s)
-- FROM table_name
-- GROUP BY column_name(s);
-- • Example
-- SELECT mode, SUM(amount) AS total
-- FROM payment
-- GROUP BY mode


--Data in the payment table
"customer_id","amount","mode","payment_date"
1,60,"Cash","2020-09-24"
2,30,"Credit Card","2020-04-27"
3,90,"Credit Card","2020-07-07"
4,50,"Debit Crad","2020-02-12"
5,40,"Mobile Payment","2020-11-20"
6,40,"Debit Crad","2021-06-28"
7,10,"Cash","2021-08-25"
8,30,"Mobile Payment","2021-06-17"
9,80,"Cash","2021-08-25"
10,50,"Mobile Payment","2021-11-03"
11,70,"Cash","2022-11-01"
12,60,"Netbanking","2022-09-11"
13,30,"Netbanking","2022-12-10"
14,50,"Credit Card","2022-05-14"
15,30,"Credit Card","2022-09-25"

Input:
--When this query was made to run on the above data, below is the output
 SELECT mode, SUM(amount) AS total
 FROM payment
 GROUP BY mode

Output:
--GROUP BY is often used with aggregate functions
"mode","total"
"Mobile Payment","120"
"Netbanking","90"
"Debit Crad","90"
"Credit Card","200"
"Cash","220"

Input:
 SELECT mode, SUM(amount) AS total
 FROM payment
 GROUP BY mode
 ORDER BY total ASC

Output:
--On using, ORDER BY , the data got sorted, in ascending order, based on the total column.

"mode","total"
"Netbanking","90"
"Debit Crad","90"
"Mobile Payment","120"
"Credit Card","200"
"Cash","220"
--WIth this data, we can infer, people prefer to do transaction more with cash, and least in NetBanking/DebitCard.

-- --Silly Question:
-- Why did we use GROUP BY clause on Mode only? Why not customer_id? Or other columns?
-- Ans:
-- Coz we want to infer some meaning or derive something out of the data.
--GROUP BY is used so that we can aggregate similar values together.
--If we had used customer_id to group, it would have been of no use,
-- as all the rows are unique. So, before grouping no. of rows=15, after grouping no.of rows=15.

-----------------------------------------------------------------------------------------------------------------

--HAVING CLause

-- The HAVING clause is used to apply a filter on the result of GROUP BY based on the
-- specified condition.
-- The WHERE clause places conditions on the selected columns, whereas the HAVING
-- clause places conditions on groups created by the GROUP BY clause
-- • Syntax :
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition(s)
-- GROUP BY column_name(s)
-- HAVING condition(s)
-- • Example :
-- SELECT mode, COUNT(amount) AS total
-- FROM payment
-- GROUP BY mode
-- HAVING COUNT(amount) >= 3
-- ORDER BY total DESC

-- HAVING condition should be after the GROUP BY clause, otherwise it will throw error.

--Data in the payment table
"customer_id","amount","mode","payment_date"
1,60,"Cash","2020-09-24"
2,30,"Credit Card","2020-04-27"
3,90,"Credit Card","2020-07-07"
4,50,"Debit Crad","2020-02-12"
5,40,"Mobile Payment","2020-11-20"
6,40,"Debit Crad","2021-06-28"
7,10,"Cash","2021-08-25"
8,30,"Mobile Payment","2021-06-17"
9,80,"Cash","2021-08-25"
10,50,"Mobile Payment","2021-11-03"
11,70,"Cash","2022-11-01"
12,60,"Netbanking","2022-09-11"
13,30,"Netbanking","2022-12-10"
14,50,"Credit Card","2022-05-14"
15,30,"Credit Card","2022-09-25"


Input:
--When this query was made to run on the above data, below is the output
 SELECT mode, COUNT(amount) AS total
 FROM payment
 GROUP BY mode
--  HAVING COUNT (amount) >= 3
--  ORDER BY total DESC

Output:
"mode"	        "total"
"Mobile Payment" 3
"Netbanking"	 2
"Debit Crad"	 2
"Credit Card"	 4
"Cash"	         4
        

Input:
--When this query was made to run on the above data, below is the output
 SELECT mode, COUNT(amount) AS total
 FROM payment
 GROUP BY mode
 HAVING COUNT (amount) >= 3
 ORDER BY total DESC


Output:
"mode"	"total"
"Credit Card"	    4
"Cash"	            4
"Mobile Payment"	3



--Putting  multiple conditions, with Having Clause:
 Input:

 SELECT mode, COUNT(amount) AS total
 FROM payment
 GROUP BY mode
 HAVING COUNT (amount) >= 2 AND COUNT(amount) < 4
 ORDER BY total DESC

 Output:
 "mode"	         "total"
"Mobile Payment"	3
"Netbanking"	    2
"Debit Crad"	    2
