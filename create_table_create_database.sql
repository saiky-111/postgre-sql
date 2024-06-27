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