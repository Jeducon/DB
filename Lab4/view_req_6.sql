CREATE OR REPLACE VIEW v_q6_exhibition_item_counts AS
SELECT ex.name AS exhibition, COUNT(ee.exhibit_id) AS items
FROM exhibition ex
RIGHT JOIN exhibition_exhibit ee ON ex.id = ee.exhibition_id
GROUP BY ex.name;