INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Щеглова С.Н.', 'заведующий кафедрой', '89148262840');
INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Крашенинникова Г.Г.', 'доцент', '86195383423');
INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Логун К.А.', 'доцент', '89445566743');
INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Старикова О.А.', 'доцент', '08487984385');
INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Рось О.Д.', 'старший преподаватель', '23443534534');
INSERT INTO distribution.teacher (fio_nm, rank_nm, phone_no) VALUES ('Феоктистова Н.И.', 'доцент', '89233443434');

INSERT INTO distribution.type (type_nm) VALUES ('Лекция');
INSERT INTO distribution.type (type_nm) VALUES ('Практическое занятие');
INSERT INTO distribution.type (type_nm) VALUES ('Лабораторная работа');
INSERT INTO distribution.type (type_nm) VALUES ('Индивидуальная работа');
INSERT INTO distribution.type (type_nm) VALUES ('Зачет');
INSERT INTO distribution.type (type_nm) VALUES ('Консультация');
INSERT INTO distribution.type (type_nm) VALUES ('Экзамен');
INSERT INTO distribution.type (type_nm) VALUES ('Практика');

--- временно создаем таблицу исходных данных
drop table if exists distribution.data;
create table distribution.data
(
    group_nm      text,
    lec_cnt       float,
    lab_cnt       float,
    prc_cnt       float,
    pers_cnt      float,
    zch_cnt       float,
    exz_cnt       float,
    cons_cnt      float,
    practic_cnt   float,
    hour_cnt      float,
    lecturer_nm   text,
    practician_nm text,
    subject_nm    text
);

insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ЭУЛ-81', null, null, null, '1.8', null, 5, null, null, '6.8', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('САДиА-81', null, null, null, '1.8', null, 4, null, null, '5.8', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('Г-61', null, null, 16, null, '0.25', null, null, null, '16.25', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПРРМ-71', 36, null, 72, '1.8', null, '4.5', 2, null, '116.3', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПРРМ-81', null, null, 72, '1.8', null, 6, null, null, '79.8', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПГС-81', 36, null, 54, '1.8', null, 4, 2, null, '97.8', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОПИ-81', null, null, null, '1.8', null, 5, null, null, '6.8', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОГР-71', null, null, null, '1.8', null, 2, null, null, '3.8', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАР-71', null, null, 72, '1.8', null, '9.5', null, null, '83.3', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАР-81', 36, null, 72, '1.8', null, '6.5', 2, null, '118.3', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ГМ-71', null, null, null, '1.8', null, 2, null, null, '3.8', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ЭУЛ-71', 17, null, 34, '0.85', '1.75', null, null, null, '53.6', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Теория Вероятностей в транспортной отрасли/ Математическая статистика в транспортной отрасли');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ЭУЛ-81', 34, null, 51, '1.7', '2.5', null, null, null, '89.2', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('САДиА-81', null, null, null, '1.6', 2, null, null, null, '3.6', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПРРМ-81', null, null, 72, '1.8', 3, null, null, null, '76.8', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПГС-81', 32, null, 48, '1.6', 2, null, null, null, '83.6', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОПИ-81', null, null, null, '1.8', '2.5', null, null, null, '4.3', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАР-61', 42, null, 28, '2.1', null, '6.5', 2, null, '80.6', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математическая обработка результатов измерений');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАР-71', 32, null, 64, '1.6', '9.5', null, null, null, '107.1', 'Логун К.А.', 'Логун К.А.', 'Математические методы в горном деле');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАР-81', 36, null, 72, '1.8', '3.25', null, null, null, '113.05', 'Логун К.А.', 'Логун К.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 30, null, 30, '1.5', null, '2.5', 2, null, 66, 'Старикова О.А.', 'Старикова О.А.', 'Геометрия');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 0, null, 60, 0, '1.25', null, null, null, '61.25', 'Старикова О.А.', 'Старикова О.А.', 'Практикум по решению задач по математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 30, null, 30, '1.5', '1.25', null, null, null, '62.75', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Методика обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 30, null, 30, '1.5', null, '2.5', 2, null, 66, 'Старикова О.А.', 'Старикова О.А.', 'Теория чисел');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 15, null, 30, '0.75', '1.25', null, null, null, 47, 'Старикова О.А.', 'Старикова О.А.', 'Решение задач на построение');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 15, null, 30, '0.75', '1.25', null, null, null, 47, 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Специальные главы математического анализа');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПИБ-81', 36, null, 36, '1.8', null, 10, 2, null, '85.8', 'Рось О.Д.', 'Рось О.Д.', 'Высшая математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, null, 21, '1.05', null, 2, 2, null, '47.05', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Методика обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, null, 21, '1.05', 1, null, null, null, '44.05', 'Старикова О.А.', 'Старикова О.А.', 'Числовые системы');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, null, 21, '1.05', 1, null, null, null, '44.05', 'Старикова О.А.', 'Старикова О.А.', 'Обощающий курс высшей математики');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, null, 21, '1.05', 1, null, null, null, '44.05', 'Рось О.Д.', 'Рось О.Д.', 'Уравнения математической физики');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, 21, 0, '1.05', 1, null, null, null, '44.05', 'Старикова О.А.', 'Старикова О.А.', 'Численные методы');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 21, null, 21, '1.05', 1, null, null, null, '44.05', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Современные модели обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиФ-41', 0, null, 42, 0, 1, null, null, null, 43, 'Старикова О.А.', 'Старикова О.А.', 'Решение олимпиадных задач по математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МИФ-51', 19, null, 38, '0.95', null, 2, 2, null, '61.95', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Методика обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МИФ-51', 19, null, 38, '0.95', null, 2, 2, null, '61.95', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Теория функции комплексной переменной');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МИФ-51', 19, null, 19, '0.95', 1, null, null, null, '39.95', 'Рось О.Д.', 'Рось О.Д.', 'История математики');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МИФ-51', 19, null, 38, '0.95', 1, null, null, null, '58.95', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математическая статистика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('БиЭ-81', 18, null, 36, '0.9', null, 5, 2, null, '61.9', 'Рось О.Д.', 'Рось О.Д.', 'Математика и математические методы в билогии');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 0, null, 40, 0, '1.25', null, null, null, '41.25', 'Старикова О.А.', 'Старикова О.А.', 'Практикум по решению задач по математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 40, null, 40, 2, '2.5', null, null, null, '84.5', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Методика обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФМОиИКТ-61', 20, null, 40, 1, null, '2.5', 2, null, '65.5', 'Старикова О.А.', 'Старикова О.А.', 'Теория множеств и математическая логика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПИБ-71', 36, null, 18, '1.8', 4, null, null, null, '59.8', 'Рось О.Д.', 'Рось О.Д.', 'Дискретная математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПИБ-81', 36, null, 36, '1.8', null, 10, 2, null, '85.8', 'Рось О.Д.', 'Рось О.Д.', 'Высшая математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МИФ-51', 16, null, 32, '0.8', null, 2, 2, null, '52.8', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Методика обучения математике');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФК-81', 36, null, 36, '1.8', '3.5', null, null, null, '77.3', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Линейная алгебра');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ГМУ-81', 36, null, 36, '1.8', null, 4, 2, null, '79.8', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Математика для ГМУ');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиСБ-81', 36, null, 36, '1.8', null, 4, 2, null, '79.8', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Математический анализ');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФК-81', 38, null, 57, '1.9', null, 7, 2, null, '105.9', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МиСБ-81', 26, null, 26, '1.3', null, 4, 2, null, '59.3', 'Щеглова С.Н.', 'Щеглова С.Н.', 'Дискретная математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПС-81', 19, 38, 0, '0.95', null, 5, 2, null, '64.95', 'Рось О.Д.', 'Рось О.Д.', 'Математическая статистика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ИиОН-81', null, null, 36, '1.8', '2.5', null, null, null, '40.3', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФКС-81', null, null, null, '1.8', 3, null, null, null, '4.8', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ДиНО-81', null, null, 36, '1.8', '2.5', null, null, null, '40.3', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('РЛкИ-81', null, null, null, '1.8', 3, null, null, null, '4.8', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('НА-81', null, null, null, '1.8', 3, null, null, null, '4.8', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('КиЯ-81', null, null, 36, '1.8', 3, null, null, null, '40.8', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('АН-81', 36, null, 36, '1.8', '3.5', null, null, null, '77.3', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПРРМз-81', 8, null, 12, '1.2', null, 4, 2, null, '27.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОГРз-81', null, null, null, '1.2', null, 4, null, null, '5.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАРз-81', null, null, 12, '1.2', null, 4, null, null, '17.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОПИз-81', null, null, null, '1.2', null, 4, null, null, '5.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПРРМз-71', '8.00', null, '8.00', '1.20', null, '9.50', '2.00', null, '28.7', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ОГРз-71', null, null, '8.00', '1.20', null, '7.00', null, null, '16.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАРз-71', null, null, '8.00', '1.20', null, '11.00', null, null, '20.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ГМз-71', null, null, '8.00', '1.20', null, '8.00', null, null, '17.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАРз-61', '4.00', null, '4.00', '0.60', '8.50', null, null, null, '17.1', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математические методы в горном деле');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('МАРз-51', '8.00', null, '8.00', '1.20', null, '11.00', '2.00', null, '30.2', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математическая обработка результатов измерений');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('Гз-81', null, null, '12.00', '1.20', null, '5.00', null, null, '18.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('Гз-71', null, null, '8.00', '1.20', null, '6.00', null, null, '15.2', 'Старикова О.А.', 'Старикова О.А.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ЭУЛз-81', '8.00', null, '6.00', '1.20', null, '5.00', '2.00', null, '22.2', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ЭУЛз-71', '4.00', null, '2.00', '0.60', '4.50', null, null, null, '11.1', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Теория вероятностей');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПГСз-81', null, null, null, '1.20', null, '10.00', null, null, '11.2', 'Крашенинникова Г.Г.', 'Крашенинникова Г.Г.', 'Математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПИБз-71', '4.00', null, '6.00', '0.60', '1.75', null, null, null, '12.35', 'Рось О.Д.', 'Рось О.Д.', 'Дискретная математика');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ПДОз-81', '4.00', null, '4.00', '0.60', '3.00', null, null, null, '11.6', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ДОз-81', null, null, '4.00', '0.60', '3.00', null, null, null, '7.6', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('НОз-81', null, null, null, '0.60', '3.00', null, null, null, '3.6', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('СПДПз-81', '2.00', null, '4.00', '0.30', '3.00', null, null, null, '9.3', 'Рось О.Д.', 'Рось О.Д.', 'Математические методы в психологических и педагогических исследованиях');
insert into distribution.data (group_nm, lec_cnt, lab_cnt, prc_cnt, pers_cnt, zch_cnt, exz_cnt, cons_cnt, practic_cnt, hour_cnt, lecturer_nm, practician_nm, subject_nm) values ('ФКСз-81', null, null, null, '0.60', '3.00', null, null, null, '3.6', 'Рось О.Д.', 'Рось О.Д.', 'Основы математической обработки информации');

-- заполнение списка групп
insert into distribution.group (group_nm, course_no)
select distinct group_nm, (91 - right(group_nm, 2)::int) / 10 as course_no from distribution.data order by group_nm;

-- проверка полноты списка преподователей
select distinct lecturer_nm
from distribution.data
where (lecturer_nm in (select fio_nm from distribution.teacher));

-- заполнение списка предметов
insert into distribution.subject (subject_nm)
select distinct subject_nm from distribution.data;

-- заполнение списка групп преподавателя
insert into distribution.group_teacher (teacher_id, group_id)
select distinct t.teacher_id, g.group_id
from distribution.data d
left join distribution.teacher t on t.fio_nm = d.lecturer_nm
left join distribution."group" g on g.group_nm = d.group_nm;

-- заполнение списка дисциплин по видам занятий у преподавателей
---- лекции
insert into distribution.lesson (teacher_id, subject_id, type_id, course_no)
select distinct t.teacher_id, s.subject_id, 1 as type_id, g.course_no
from distribution.data d
left join distribution.teacher t on t.fio_nm = d.lecturer_nm
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where lec_cnt > 0;
---- практические заняимя
insert into distribution.lesson (teacher_id, subject_id, type_id, course_no)
select distinct t.teacher_id, s.subject_id, 2 as type_id, g.course_no
from distribution.data d
left join distribution.teacher t on t.fio_nm = d.lecturer_nm
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where prc_cnt > 0;

-- заполнение плановой нагрузки преподавателей
---- лекции
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
select 0 as teacher_id, s.subject_id, 1 as type_id, g.group_id, sum(d.lec_cnt)
from distribution.data d
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where lec_cnt > 0
group by teacher_id, s.subject_id, type_id, g.group_id;
---- практические заняимя
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
select 0 as teacher_id, s.subject_id, 2 as type_id, g.group_id, sum(d.prc_cnt)
from distribution.data d
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where prc_cnt > 0
group by teacher_id, s.subject_id, type_id, g.group_id;

-- заполнение распределения нагрузки по преподавателям
---- лекции
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
select t.teacher_id, s.subject_id, 1 as type_id, g.group_id, sum(d.lec_cnt)
from distribution.data d
left join distribution.teacher t on t.fio_nm = d.lecturer_nm
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where lec_cnt > 0
group by t.teacher_id, s.subject_id, type_id, g.group_id;
---- практические заняимя
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
select t.teacher_id, s.subject_id, 2 as type_id, g.group_id, sum(d.prc_cnt)
from distribution.data d
left join distribution.teacher t on t.fio_nm = d.lecturer_nm
left join distribution.subject s on s.subject_nm = d.subject_nm
left join distribution."group" g on g.group_nm = d.group_nm
where prc_cnt > 0
group by t.teacher_id, s.subject_id, type_id, g.group_id;

-- удаляем таблицу исходных данных
drop table if exists distribution.data;
