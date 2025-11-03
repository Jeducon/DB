INSERT INTO employee_restorer (full_name, position, department, contacts, start_date,
                               specialization, certification_no)
VALUES ('Боббі Сінгер', 'Реставратор', 'Майстерня', 'bobby@museum', '2012-03-04',
        'Метал і срібло', 'RST-0091');

INSERT INTO exhibit_valuable (inventory_no, name, material, period_title, condition_note,
                              date_found, location_note, value, archaeologist_id, site_id, hall_id,
                              insurance_value, security_level)
VALUES ('SPN011','Печать Люцифера','Камінь','Стародавні часи','Збережений',
        '2019-01-05','Вітрина 10', 1500000, 2, 1, 3,
        2000000,'high');
