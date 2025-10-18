CREATE TABLE employee (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name VARCHAR(200) NOT NULL,
  position VARCHAR(120) NOT NULL,
  department VARCHAR(120),
  contacts VARCHAR(255),
  start_date DATE
);

CREATE TABLE archaeologist (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  full_name VARCHAR(200) NOT NULL,
  specialization VARCHAR(120),
  organization VARCHAR(150),
  degree_name VARCHAR(80),
  start_date DATE
);

CREATE TABLE hall (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  hall_number VARCHAR(20) NOT NULL,
  name VARCHAR(150) NOT NULL,
  floor VARCHAR(20),
  area_m2 DECIMAL(10,2),
  theme VARCHAR(150)
);

CREATE TABLE excavation_site (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  country VARCHAR(100),
  region VARCHAR(120),
  coordinates VARCHAR(120),
  description TEXT,
  excavation_date DATE
);

CREATE TABLE collection (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  theme VARCHAR(150),
  period_title VARCHAR(120),
  item_count INT,
  curator_id INT,
  CONSTRAINT fk_collection_curator FOREIGN KEY (curator_id)
    REFERENCES employee(id)
);

CREATE TABLE exhibit (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  inventory_no VARCHAR(50) UNIQUE,
  name VARCHAR(200) NOT NULL,
  material VARCHAR(120),
  period_title VARCHAR(120),
  condition_note VARCHAR(120),
  date_found DATE,
  location_note VARCHAR(200),
  value NUMERIC(12,2),
  archaeologist_id INT,
  site_id INT,
  hall_id INT,
  CONSTRAINT fk_exhibit_arch FOREIGN KEY (archaeologist_id) REFERENCES archaeologist(id),
  CONSTRAINT fk_exhibit_site FOREIGN KEY (site_id) REFERENCES excavation_site(id),
  CONSTRAINT fk_exhibit_hall FOREIGN KEY (hall_id) REFERENCES hall(id)
);

CREATE TABLE collection_exhibit (
  collection_id INT NOT NULL,
  exhibit_id INT NOT NULL,
  PRIMARY KEY (collection_id, exhibit_id),
  CONSTRAINT fk_ce_collection FOREIGN KEY (collection_id) REFERENCES collection(id),
  CONSTRAINT fk_ce_exhibit FOREIGN KEY (exhibit_id) REFERENCES exhibit(id)
);

CREATE TABLE exhibition (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(200) NOT NULL,
  theme VARCHAR(150),
  start_date DATE,
  end_date DATE
);

CREATE TABLE hall_exhibition (
  hall_id INT NOT NULL,
  exhibition_id INT NOT NULL,
  PRIMARY KEY (hall_id, exhibition_id),
  CONSTRAINT fk_he_hall FOREIGN KEY (hall_id) REFERENCES hall(id),
  CONSTRAINT fk_he_exhibition FOREIGN KEY (exhibition_id) REFERENCES exhibition(id)
);

CREATE TABLE exhibition_exhibit (
  exhibition_id INT NOT NULL,
  exhibit_id INT NOT NULL,
  PRIMARY KEY (exhibition_id, exhibit_id),
  CONSTRAINT fk_ee_exhibition FOREIGN KEY (exhibition_id) REFERENCES exhibition(id),
  CONSTRAINT fk_ee_exhibit FOREIGN KEY (exhibit_id) REFERENCES exhibit(id)
);

CREATE TABLE restoration (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  exhibit_id INT NOT NULL,
  employee_id INT NOT NULL,
  work_date DATE,
  description TEXT,
  result_note VARCHAR(150),
  cost NUMERIC(10,2),
  CONSTRAINT fk_restoration_exhibit FOREIGN KEY (exhibit_id) REFERENCES exhibit(id),
  CONSTRAINT fk_restoration_employee FOREIGN KEY (employee_id) REFERENCES employee(id)
);
