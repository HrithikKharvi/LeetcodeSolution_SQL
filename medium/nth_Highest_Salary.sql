CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N-1;
  RETURN (
      # Write your MySQL query statement below.
     SELECT
     CASE WHEN COUNT(DISTINCT salary) = 0 THEN NULL
     WHEN COUNT(DISTINCT salary) = 1 AND N < 0 THEN NULL
     ELSE (SELECT DISTINCT salary FROM Employee ORDER BY salary DESC limit N,1)
     END AS `getNthHighestSalary(2)`
     FROM Employee
  );
END
