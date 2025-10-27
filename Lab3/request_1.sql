SELECT e.inventory_no, e.name AS exhibit, a.full_name AS archaeologist,
       e.date_found, e.condition_note
FROM exhibit e
LEFT JOIN archaeologist a ON a.id = e.archaeologist_id
WHERE e.material ILIKE '%метал%'         
  AND (e.date_found IS NULL OR e.date_found <= DATE '2021-01-01');
