CREATE OR REPLACE VIEW v_q5_halls_total_value_gt_200k AS
SELECT h.name AS hall, SUM(e.value) AS total_value
FROM hall h
LEFT JOIN exhibit e ON e.hall_id = h.id
GROUP BY h.name
HAVING SUM(e.value) > 200000;