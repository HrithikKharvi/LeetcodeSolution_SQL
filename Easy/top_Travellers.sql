# Write your MySQL query statement below
SELECT  name, CASE WHEN SUM(distance) IS NULL THEN  0 ELSE SUM(distance) END AS travelled_distance
FROM
Users
LEFT JOIN
Rides
ON Users.id = user_id
GROUP BY Users.id
ORDER BY travelled_distance DESC, name;
