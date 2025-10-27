CREATE OR REPLACE VIEW v_q4_exhibit_count_by_hall AS
SELECT COALESCE(h.name, '[без залу]') AS hall,
       COUNT(e.id)                    AS exhibit_count
FROM hall h
JOIN exhibit e ON e.hall_id = h.id
GROUP BY COALESCE(h.name, '[без залу]');