SELECT reg.contest_id, ROUND(COUNT(reg.user_id) * 100.0/ (SELECT COUNT(*) FROM Users) , 2) [percentage]
FROM Register reg
GROUP BY reg.contest_id
ORDER BY COUNT(reg.user_id) DESC, reg.contest_id
