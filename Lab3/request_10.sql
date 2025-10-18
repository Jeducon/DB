SELECT e.inventory_no, e.name
FROM exhibit e
WHERE EXISTS (
  SELECT 1 FROM restoration r
  WHERE r.exhibit_id = e.id AND r.cost > 1000
);
