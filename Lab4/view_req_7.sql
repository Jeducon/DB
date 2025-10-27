CREATE OR REPLACE VIEW v_q7_exhibitions_total_value AS
SELECT ex.name AS exhibition, SUM(e.value) AS total_value
FROM exhibition ex
FULL OUTER JOIN exhibition_exhibit ee ON ex.id = ee.exhibition_id
FULL OUTER JOIN exhibit e            ON e.id  = ee.exhibit_id
GROUP BY ex.name
HAVING SUM(e.value) IS NULL OR SUM(e.value) >= 100000;
