SELECT prj.project_id, ROUND(AVG(Emp.experience_years * 1.0), 2) [average_years]
FROM Project prj INNER JOIN Employee Emp
ON Emp.employee_id = prj.employee_id
GROUP BY prj.project_id
