-- Select Solution --
SELECT Emp2.name
FROM Employee Emp1 INNER JOIN Employee Emp2
ON Emp1.managerId = Emp2.id
GROUP BY Emp2.id, Emp2.name
HAVING COUNT(Emp2.id) >= 5

-- SubQuery Solution (Better performance) --
SELECT name
FROM Employee
WHERE id IN (
    SELECT managerId
    FROM Employee  
    GROUP BY managerId
    HAVING COUNT(id) >= 5
)
