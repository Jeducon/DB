SELECT e.name AS exhibit, e.value, h.name AS hall
FROM exhibit e
JOIN (
    SELECT hall_id, AVG(value) AS avg_value
    FROM exhibit
    GROUP BY hall_id
) AS avg_h ON e.hall_id = avg_h.hall_id
JOIN hall h ON e.hall_id = h.id
WHERE e.value > avg_h.avg_value
ORDER BY e.value DESC;
