 CREATE TABLE customer (      -- Create a table named 'customer'
    "ID" int8 PRIMARY KEY,     -- 'ID' column of type int8, set as the primary key -- defining integer upto 8 digits
    Name varchar(50) NOT NULL, -- 'Name' column of type varchar with a maximum length of 50, cannot be NULL
    "Age" int NOT NULL,        -- 'Age' column of type int, cannot be NULL
    "City" char(50),           -- 'City' column of type char with a fixed length of 50
    "Salary" numeric           -- 'Salary' column of type numeric
);

--Unquoted Identifiers (ID):

   -- When you use unquoted identifiers like ID, PostgreSQL automatically converts them to lowercase.
   -- Therefore, ID is treated as id.

-- Quoted Identifiers ("ID"):

--     When you use quoted identifiers like "ID", PostgreSQL preserves the exact case you used.
--     Therefore, "ID" is treated as ID exactly as you typed it, with the case preserved.

--To see the table you created, right click on customer table,
--Then Query Tool , then write the query:
--   SELECT * FROM customer.

--If you don't want to create table by query, you can
--right click on table-> then Create -> then table
-- then type the name of the table, then -> then type the name of the columns

-- To view the table, either you run the query: --   SELECT * FROM cust
-- OR you can right click on table cust -> then view/edit data -> all rows or firsi 100 rows
-- or as you wish, to see how many rows of the table you wanna see.

--LIMIT word is used to filter top 100 or bottom 100 rows