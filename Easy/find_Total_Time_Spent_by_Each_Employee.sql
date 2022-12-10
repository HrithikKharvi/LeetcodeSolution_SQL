SELECT event_day AS day, emp_id, SUM(total_time) AS total_time
FROM(
SELECT emp_id, event_day, (out_time - in_time) AS total_time FROM Employees
) t GROUP BY emp_id, day;
