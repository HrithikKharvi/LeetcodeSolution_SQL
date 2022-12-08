# Write your MySQL query statement below
select 
case when count(distinct salary) = 1 THEN NULL
when count(distinct salary) > 1 then (select distinct salary as SecondHighestSalary from Employee ORDER BY salary desc limit 1,1)
else NULL end SecondHighestSalary from Employee;
