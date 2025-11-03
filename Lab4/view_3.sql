CREATE OR REPLACE VIEW v_expensive_restorations AS
SELECT 
  r.id,
  e.inventory_no,
  e.name AS exhibit,
  emp.full_name AS restorer,
  r.work_date,
  r.cost
FROM restoration r
JOIN exhibit   e  ON e.id  = r.exhibit_id
JOIN employee  emp ON emp.id = r.employee_id

