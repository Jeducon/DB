SELECT e.inventory_no, e.name, e.value, h.name AS hall
FROM exhibit e
JOIN hall h ON h.id = e.hall_id
WHERE e.value > (
  SELECT AVG(e2.value) FROM exhibit e2
  WHERE e2.hall_id = e.hall_id
);
