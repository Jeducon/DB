SELECT COALESCE(SUM(r.cost),0) AS total_restoration_cost
FROM restoration r
JOIN employee emp ON emp.id = r.employee_id

