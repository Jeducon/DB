SELECT h.name AS hall, e_avg.avg_value
FROM (
    SELECT hall_id, ROUND(AVG(value), 2) AS avg_value
    FROM exhibit
    WHERE value IS NOT NULL
    GROUP BY hall_id
) AS e_avg
JOIN hall h ON h.id = e_avg.hall_id
ORDER BY avg_value DESC;
