
INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN971','Клинок архангела Михаїла','Метал','Біблійні часи','Відмінний','2020-03-15','Вітрина А-1',250000,
        NULL,NULL,(SELECT id FROM hall WHERE name LIKE 'Зал ангельських артеф%'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN972','Гримуар Метатрона','Папір, пергамент','Старозавітні часи','Пошкоджена','2013-10-14','Вітрина К-1',120000,
        NULL,NULL,(SELECT id FROM hall WHERE name='Зал магічних книг'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN973','Печатка Азазеля','Метал','Середньовіччя','Добрий','2021-05-05','Вітрина D-1',65000,
        NULL,NULL,(SELECT id FROM hall WHERE name='Зал демонічних артефактів'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN974','Фіал філософського каменю','Скло','XVII ст.','Добрий','2017-04-12','Вітрина AL-1',42000,
        NULL,NULL,(SELECT id FROM hall WHERE name='Зал алхімії'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN975','Печаті Апокаліпсису (фрагмент)','Камінь, метал','Стародавність','Задовільний','2019-11-11','Вітрина P-1',80000,
        NULL,NULL,(SELECT id FROM hall WHERE name='Зал печатей'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN976','Сфера полонення демона','Скло, руни','XX ст.','Нестабільний','2022-02-02','Вітрина R-1',35000,
        NULL,NULL,(SELECT id FROM hall WHERE name LIKE 'Резервний порожній зал'));


INSERT INTO exhibit (inventory_no,name,material,period_title,condition_note,date_found,location_note,value,
                     archaeologist_id,site_id,hall_id)
VALUES ('SPN977','Амулет проти Левіафанів','Золото','Античність','Добрий','2016-06-06','Вітрина SA-1',90000,
        NULL,NULL,(SELECT id FROM hall WHERE name='Зал стародавніх артефактів'));
