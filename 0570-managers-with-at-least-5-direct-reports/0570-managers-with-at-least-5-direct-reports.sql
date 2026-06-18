# Write your MySQL query statement below
SELECT a.name FROM Employee as a
INNER JOIN Employee as b
ON a.id=b.managerId
GROUP BY a.id
HAVING COUNT(*)>=5
