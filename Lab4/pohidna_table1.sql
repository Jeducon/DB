CREATE TABLE employee_restorer (
  specialization   varchar(150),
  certification_no varchar(50)
) INHERITS (employee);


CREATE TABLE exhibit_valuable (
  insurance_value  numeric(12,2),
  security_level   varchar(20)
) INHERITS (exhibit);
