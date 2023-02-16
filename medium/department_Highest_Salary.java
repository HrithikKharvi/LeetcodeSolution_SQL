# Write your MySQL query statement below
SELECT 
t.Department, e.name as Employee, t.Salary
FROM
Employee e
INNER JOIN
(SELECT d.id, d.name as Department, MAX(e.salary) as Salary from Employee e
INNER JOIN
Department d
ON e.departmentId = d.id
GROUP BY d.name) t
ON
t.id = e.departmentId
and
t.Salary = e.salary;
