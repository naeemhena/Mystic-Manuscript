--SQL 8 
-- Checking for nulls in column crucial to analysis - Customer_id
SELECT
    COUNT(customer_id)
FROM all_2509.group_by
WHERE customer_id IS NULL;


--SQL 9 
-- Checking expected range
-- Cost price values should be greater than or equal to zero
SELECT COUNT(cost_of)
FROM all_2509.group_by
WHERE cost_of < 0;

--SQL 10
-- Checking categorical fields use consistent values
SELECT COUNT(gender)
FROM all_2509.group_by
WHERE gender NOT IN ('M', 'F');


--SQL 11
-- Data timeliness
SELECT
    MAX(purchase_date) AS most_recent_date,
    MIN(purchase_date) AS least_recent_date
FROM all_2509.group_by;
