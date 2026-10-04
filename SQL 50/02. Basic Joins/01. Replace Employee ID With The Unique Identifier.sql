SELECT EmpU.unique_id, Emp.name
FROM Employees Emp left outer join EmployeeUNI EmpU
ON Emp.id = EmpU.id
