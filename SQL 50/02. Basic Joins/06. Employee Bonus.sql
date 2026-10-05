SELECT Emp.name, b.bonus
FROM Employee Emp LEFT OUTER JOIN Bonus b
ON Emp.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL
