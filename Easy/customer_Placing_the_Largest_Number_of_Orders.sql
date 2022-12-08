# Write your MySQL query statement below

SELECT customer_number from(
SELECT customer_number, COUNT(*) as count from Orders GROUP BY customer_number
) t 
ORDER BY count DESC LIMIT 1;
