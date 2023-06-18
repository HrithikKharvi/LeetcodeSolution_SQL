SELECT a.employee_id
FROM Employees a
LEFT JOIN
Employees b
ON a.manager_id = b.employee_id
WHERE a.manager_id is not null
and b.employee_id is null
and a.salary < 30000

ORDER BY employee_id;
