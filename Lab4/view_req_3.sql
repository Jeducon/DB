CREATE OR REPLACE VIEW v_q3_total_restoration_cost AS
SELECT COALESCE(SUM(r.cost),0)::numeric(12,2) AS total_restoration_cost
FROM restoration r;