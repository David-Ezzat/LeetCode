SELECT b.id
FROM Weather a, Weather b 
WHERE DATEDIFF(DAY, a.recordDate, b.recordDate) = 1 AND b.temperature > a.temperature 
