SELECT e.inventory_no, e.name
FROM exhibit e
WHERE e.id IN (
  SELECT ce.exhibit_id
  FROM collection_exhibit ce
  JOIN collection c ON c.id = ce.collection_id
  WHERE c.theme IN ('Містичні артефакти', 'Демонічні предмети')
);
