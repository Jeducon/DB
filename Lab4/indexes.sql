CREATE INDEX IF NOT EXISTS idx_exhibit_hall          ON exhibit(hall_id);
CREATE INDEX IF NOT EXISTS idx_exhibit_archaeologist ON exhibit(archaeologist_id);
CREATE INDEX IF NOT EXISTS idx_exhibit_site          ON exhibit(site_id);
CREATE INDEX IF NOT EXISTS idx_exhibit_value         ON exhibit(value);        
CREATE INDEX IF NOT EXISTS idx_exhibit_date_found    ON exhibit(date_found);   

CREATE INDEX IF NOT EXISTS idx_restoration_exhibit   ON restoration(exhibit_id);
CREATE INDEX IF NOT EXISTS idx_restoration_employee  ON restoration(employee_id);

CREATE INDEX IF NOT EXISTS idx_restoration_exhibit_workdate ON restoration(exhibit_id, work_date DESC);
CREATE INDEX IF NOT EXISTS idx_restoration_cost_gt1000 ON restoration(cost) WHERE cost > 1000;

CREATE INDEX IF NOT EXISTS idx_ee_exhibit            ON exhibition_exhibit(exhibit_id);
CREATE INDEX IF NOT EXISTS idx_ce_exhibit            ON collection_exhibit(exhibit_id);

CREATE INDEX IF NOT EXISTS idx_collection_theme      ON collection(theme);
