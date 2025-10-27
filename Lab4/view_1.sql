CREATE OR REPLACE VIEW v_exhibit_info AS
SELECT 
  e.id,
  e.inventory_no,
  e.name           AS exhibit,
  e.material,
  e.period_title,
  e.value,
  a.full_name      AS archaeologist,
  h.name           AS hall,
  e.date_found
FROM exhibit e
LEFT JOIN archaeologist a ON a.id = e.archaeologist_id
LEFT JOIN hall          h ON h.id = e.hall_id;
