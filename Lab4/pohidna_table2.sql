SELECT exhibition, items
FROM (
    SELECT ex.name AS exhibition, COUNT(ee.exhibit_id) AS items
    FROM exhibition ex
    LEFT JOIN exhibition_exhibit ee ON ex.id = ee.exhibition_id
    GROUP BY ex.name
) AS ex_count
ORDER BY items DESC
LIMIT 3;
