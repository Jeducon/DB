SELECT c.name AS collection, SUM(e.value) AS total_value
FROM collection c
LEFT JOIN collection_exhibit ce ON ce.collection_id = c.id
LEFT JOIN exhibit e             ON e.id = ce.exhibit_id
GROUP BY c.name
HAVING SUM(e.value) > 200000;

