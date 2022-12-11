# Write your MySQL query statement below
SELECT product_id, product_name
FROM
(SELECT a.product_id, a.product_name, MAX(b.sale_date) AS max_date, MIN(b.sale_date) AS min_date
FROM Product a
INNER JOIN 
Sales b
ON a.product_id = b.product_id
GROUP BY
a.product_id) t
WHERE min_date >= "2019-01-01"
AND
max_date <= "2019-03-31";
