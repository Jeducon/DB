SELECT 
    e.inventory_no,
    e.name AS exhibit_name,
    (
        SELECT emp.full_name
        FROM restoration r
        JOIN employee emp ON emp.id = r.employee_id
        WHERE r.exhibit_id = e.id AND r.cost > 1000
        ORDER BY r.work_date DESC
        LIMIT 1
    ) AS restorer_name,
    (
        SELECT r.cost
        FROM restoration r
        WHERE r.exhibit_id = e.id AND r.cost > 1000
        ORDER BY r.work_date DESC
        LIMIT 1
    ) AS restoration_cost
FROM exhibit e
WHERE EXISTS (
    SELECT 1 
    FROM restoration r
    WHERE r.exhibit_id = e.id AND r.cost > 1000
);

