# Write your MySQL query statement below
SELECT r.contest_id, ROUND((COUNT(r.user_id)/(SELECT COUNT(*) FROM Users))*100,2) as percentage
FROM Users as u
INNER JOIN Register as r
ON u.user_id=r.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC 