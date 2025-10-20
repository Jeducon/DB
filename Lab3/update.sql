INSERT INTO hall (hall_number, name, floor, area_m2, theme) VALUES
('A77', 'Зал печатей', '2', 72.0, 'Апокаліпсис та печаті'),
('Z99', 'Резервний порожній зал', '9', 60.0, 'Резерв');   


INSERT INTO employee (full_name, position, department, contacts, start_date) VALUES
('Донна Хенске', 'Куратор польових надходжень', 'Колекції', 'donna@museum.com', '2016-04-02'),
('Адам Мілліган', 'Охоронець', 'Безпека', 'adam@museum.com', '2021-10-10');  


INSERT INTO exhibition (name, theme, start_date, end_date) VALUES
('Печаті Апокаліпсису', 'Артефакти, що відкривають ворота', '2024-03-01', '2024-06-01');

INSERT INTO collection (name, theme, period_title, item_count, curator_id) VALUES
('Артефакти чистилища', 'Містичні артефакти', 'Середньовіччя–XXI', 0, NULL);


INSERT INTO excavation_site (country, region, coordinates, description, excavation_date) VALUES
('США', 'Монтана', '46.9,-110.6', 'Печери Жнеців', '2017-09-07');


INSERT INTO exhibit (inventory_no, name, material, period_title, condition_note, date_found, location_note, value,
                     archaeologist_id, site_id, hall_id)
VALUES
('SPN901', 'Печаті Левіафанів', 'Камінь, метал', 'Стародавність', 'Нестабільний', '2021-06-06', 'Сейф-13', 35000,
 NULL, NULL, NULL);


INSERT INTO exhibit (inventory_no, name, material, period_title, condition_note, date_found, location_note, value,
                     archaeologist_id, site_id, hall_id)
VALUES
('SPN902', 'Коса Жнеця', 'Метал', 'XIX ст.', 'Добрий', '2018-10-31', 'Вітрина A77-1', 120000,
 NULL, (SELECT id FROM excavation_site ORDER BY id DESC LIMIT 1),
 (SELECT id FROM hall WHERE hall_number='A77'));


INSERT INTO collection (name, theme, period_title, item_count, curator_id)
VALUES ('Містичні артефакти — спецвипуск', 'Містичні артефакти', 'Різні епохи', 1,
        (SELECT id FROM employee WHERE full_name='Донна Хенске' LIMIT 1));

INSERT INTO collection_exhibit (collection_id, exhibit_id)
SELECT c.id, e.id
FROM collection c, exhibit e
WHERE c.name='Містичні артефакти — спецвипуск' AND e.inventory_no='SPN902';


INSERT INTO restoration (exhibit_id, employee_id, work_date, description, result_note, cost)
SELECT e.id, emp.id, '2022-12-12', 'Консервація леза коси', 'Відмінно', 2200
FROM exhibit e
JOIN employee emp ON emp.full_name IN ('Боббі Сінгер','Донна Хенске')
WHERE e.inventory_no='SPN902'
LIMIT 1;
