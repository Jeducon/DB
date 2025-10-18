SELECT emp.full_name AS employee, COALESCE(SUM(r.cost),0) AS total_cost
FROM restoration r
RIGHT JOIN employee emp ON emp.id = r.employee_id
GROUP BY emp.full_name;
