SELECT COALESCE(h.name, '[без залу]') AS hall, COUNT(e.id) AS exhibit_count
FROM hall h
FULL OUTER JOIN exhibit e ON e.hall_id = h.id
GROUP BY COALESCE(h.name, '[без залу]');
