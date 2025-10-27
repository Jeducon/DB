SELECT ex.name AS exhibition, COUNT(ee.exhibit_id) AS items
FROM exhibition_exhibit ee
JOIN exhibition ex ON ex.id = ee.exhibition_id
GROUP BY ex.name
ORDER BY items DESC;
