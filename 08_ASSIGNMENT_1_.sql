-- Order of execution in SQL:
-- SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT

--Example Query:
--SELECT column1, COUNT(*)
-- FROM table1
-- WHERE condition
-- GROUP BY column1
-- HAVING COUNT(*) > 1
-- ORDER BY column1
-- LIMIT 10;



Ans:

--  The order of execution of the clauses in a SQL query is different from the order in which they are written. 
--  Here is the logical order of execution for the clauses:

--     FROM: Determine the source of the data, including joins.
--     WHERE: Filter rows based on conditions.
--     GROUP BY: Group rows that have the same values in specified columns into aggregate data.
--     HAVING: Filter groups based on conditions.
--     SELECT: Select columns or expressions.
--     ORDER BY: Sort the result set.
--     LIMIT: Limit the number of rows returned.

