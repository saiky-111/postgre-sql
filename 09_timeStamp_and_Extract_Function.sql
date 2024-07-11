-- TIMESTAMP

-- TIMESTAMP data type is used for values that
-- contain both date and time parts
-- • TIME         -- contains only time, format HH:MI:SS
-- • DATE         -- contains on date, format YYYY-MM-DD 
-- • YEAR         -- contains on year, format YYYY or YY
-- • TIMESTAMP    -- contains date and time, format YYYY-MM-DD  HH:MI:SS
-- • TIMESTAMPTZ  -- contains date, time and time zone


-- TIMESTAMP functions/operators

-- Below are the TIMESTAMP functions and operators
-- in SQL:
-- • SHOW TIMEZONE  - tells in which time server our SQL Server RUns.
-- • SELECT NOW() - date time
-- • SELECT TIMEOFDAY()
-- • SELECT CURRENT_TIME
-- • SELECT CURRENT_DATE

--Most of the time, these TIMESTAMP functions/operators
--are used when we create a new database, of our own, 
-- and we want to store date , time, then use these functions/operators.

Q.

--When the below query was run:
SHOW TIMEZONE

Output:

"TimeZone"--Table Name
"Asia/Calcutta" -- Table Value

--When the below query was run:
SELECT NOW()

Output:

"now"
"2024-07-10 20:54:58.255725+05:30" -- date, time, then Timezone.

--When the below query was run:
SELECT TIMEOFDAY()

Output:

"timeofday"
"Wed Jul 10 21:00:59.409058 2024 IST"

--When the below query was run:
SELECT CURRENT_TIME

Output:

"current_time"
"21:03:52.760513+05:30"

--When the below query was run:
SELECT CURRENT_DATE

Output:

"current_date"
"2024-07-10"


-----------------------------------------------------------------------------

--EXTRACT Function

-- The EXTRACT() function extracts a part from a given date value.
-- Syntax:
-- SELECT EXTRACT ( MONTH FROM date_field ) FROM Table
-- • YEAR
-- • QUARTER
-- • MONTH
-- • WEEK
-- • DAY
-- • HOUR
-- • MINUTE
-- • DOW -- day of week
-- • DOY -- day of year

-- (SYNTAX for Extracting Month)
-- SELECT EXTRACT (MONTH FROM payment_date) AS payment_month, payment_date
-- FROM payment

-- Written the payment_date at the last, because we wanted to compare the
-- date with  month.


-- (SYNTAX for Extracting Year)
-- SELECT EXTRACT (YEAR FROM payment_date) AS payment_year, payment_date
-- FROM payment


-- (SYNTAX for Extracting the Day Of Week)
-- SELECT EXTRACT (DOW FROM payment_date) AS payment_dow, payment_date
-- FROM payment
-- 0 will show Sunday, 1 will sho Monday, and so on...


-- (SYNTAX for Extracting the Day i.e Date)
-- SELECT EXTRACT (DATE FROM payment_date) AS payment_day, payment_date
-- FROM payment
-- output: 1 for 1st day, 21 for 21st day, 29 for 29th day.


-- (SYNTAX for Extracting the Quarter)
-- SELECT EXTRACT (QUARTER FROM payment_date) AS pay_quarter, payment_date
-- FROM payment
-- output: 3 months is 1 quarter.
--So, 1 : if upto March,
-- 2: if upto June, and so on..