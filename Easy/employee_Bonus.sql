SELECT 
*
FROM
(SELECT 
e.name, b.bonus
FROM 
Employee e
LEFT JOIN
Bonus b
ON e.empId = b.empId) t
WHERE bonus is null || bonus <1000;
