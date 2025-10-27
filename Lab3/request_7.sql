SELECT ex.name AS exhibition, SUM(e.value) AS total_value
FROM exhibition ex
JOIN exhibition_exhibit ee ON ex.id = ee.exhibition_id
JOIN exhibit e            ON e.id  = ee.exhibit_id
GROUP BY ex.name
HAVING SUM(e.value) IS NULL OR SUM(e.value) >= 100000
ORDER BY total_value NULLS LAST;
