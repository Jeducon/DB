CREATE OR REPLACE VIEW v_q2_exhibit_age_and_vat AS
SELECT e.inventory_no,
       e.name,
       h.name AS hall,
       (CURRENT_DATE - e.date_found) AS days_since_found,
       e.value,
       (e.value * 1.20)              AS value_vat20
FROM exhibit e
INNER JOIN hall h ON h.id = e.hall_id
WHERE e.date_found IS NOT NULL;