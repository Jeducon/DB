CREATE OR REPLACE VIEW v_exhibition_items AS
SELECT 
  ex.id           AS exhibition_id,
  ex.name         AS exhibition,
  e.id            AS exhibit_id,
  e.inventory_no,
  e.name          AS exhibit,
  h.name          AS hall
FROM exhibition ex
LEFT JOIN exhibition_exhibit ee ON ee.exhibition_id = ex.id
LEFT JOIN exhibit e              ON e.id = ee.exhibit_id
LEFT JOIN hall   h               ON h.id = e.hall_id;
