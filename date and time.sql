
SELECT * from products;


-- 1. NOW() – Get Current Date and Time
select now() as current_date_time;

-- 2. CURRENT_DATE() – Get Current Date
select current_date as current_datee;


-- 3. EXTRACT() – Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.

select product_name ,
	extract(year from added_date) as yearr,
	extract(month from added_date) as monthh,
	extract(day from added_date) as dayy
from products;



-- 4. AGE() – Calculate Age Between Dates
-- Calculate the time difference between added_date and today’s date.

select added_date,current_date , age(current_date, added_date) from
products; 	

-- 5. TO_CHAR() – Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).

select product_name,
to_char(added_date,'DD-Mon-YYYY') as text
from products;


-- 6. DATE_PART() – Get Specific Date Part
-- Extract the day of the week from added_date.

select product_name, added_date,
date_part('year', added_date) as yearr from products;


select product_name, added_date,
date_part('month', added_date) as monthh from products;


select product_name, added_date,
date_part('day', added_date) as dayy from products;


select product_name, added_date,
date_part('dow', added_date) as doww from products; --dow-> day of week (0to 6)



-- 7. DATE_TRUNC() – Truncate Date to Precision
-- Truncate added_date to the start of the month.


select product_name, added_date,
date_trunc('week', added_date) as week_starts,
date_trunc('day', added_date) as day_starts,
date_trunc('year', added_date) as year_starts,
extract('isodow' from  added_date) as day_of_week
from products;

-- 8. INTERVAL – Add or Subtract Time Intervals
-- Add 6 months to the added_date.

select product_name, added_date,
       added_date+interval '6 months' as interval 
from products;


-- 9. CURRENT_TIME() – Get Current Time
--Retrieve only the current time.

select current_time as current_times ;

-- 10. TO_DATE() – Convert String to Date
-- Convert a string to a date format.

select  to_date('28-11-2026', 'DD-MM-YYYY') as converted_string_to_text;