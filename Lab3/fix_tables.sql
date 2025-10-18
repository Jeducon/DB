ALTER TABLE employee ADD CONSTRAINT chk_employee_start_date
  CHECK (start_date IS NULL OR start_date <= CURRENT_DATE);

ALTER TABLE archaeologist ADD CONSTRAINT chk_archaeologist_start_date
  CHECK (start_date IS NULL OR start_date <= CURRENT_DATE);

ALTER TABLE hall ADD CONSTRAINT chk_hall_area_nonneg CHECK (area_m2 IS NULL OR area_m2 >= 0);
ALTER TABLE hall ADD CONSTRAINT uq_hall_number UNIQUE (hall_number);

ALTER TABLE excavation_site ADD CONSTRAINT chk_excavation_date_past
  CHECK (excavation_date IS NULL OR excavation_date <= CURRENT_DATE);

ALTER TABLE collection
  ALTER COLUMN item_count SET DEFAULT 0;
ALTER TABLE collection
  ADD CONSTRAINT chk_collection_item_count_nonneg CHECK (item_count >= 0);

ALTER TABLE exhibit
  ALTER COLUMN value SET DEFAULT 0;
ALTER TABLE exhibit
  ADD CONSTRAINT chk_exhibit_value_nonneg CHECK (value >= 0);

ALTER TABLE exhibit
  ADD CONSTRAINT chk_exhibit_date_found CHECK (date_found IS NULL OR date_found <= CURRENT_DATE);

ALTER TABLE exhibition
  ADD CONSTRAINT chk_exhibition_dates CHECK (
    start_date IS NULL OR end_date IS NULL OR end_date >= start_date
  );

ALTER TABLE restoration
  ALTER COLUMN cost SET DEFAULT 0;
ALTER TABLE restoration
  ADD CONSTRAINT chk_restoration_cost_nonneg CHECK (cost >= 0);


ALTER TABLE restoration
  ADD CONSTRAINT chk_restoration_date CHECK (work_date IS NULL OR work_date <= CURRENT_DATE);
