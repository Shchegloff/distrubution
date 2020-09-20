-- 1. Вывод суммарной нагрузки по преподавателям
select t.fio_nm, sum(d.hour_cnt)
from distribution.distribution d
left join distribution.teacher t on t.teacher_id = d.teacher_id
where d.teacher_id != 0
group by t.teacher_id;

-- 2. Вывод объема часов лекционных и практических занятий по преподователю Щегловой С.Н.
select t.fio_nm, tp.type_nm, sum(d.hour_cnt)
from distribution.distribution d
left join distribution.teacher t on t.teacher_id = d.teacher_id
left join distribution.type tp on d.type_id = tp.type_id
where t.fio_nm = 'Щеглова С.Н.'
group by t.teacher_id, tp.type_nm;

-- 3. Добавить нагрузку Феоктистовой Н.И. по дисциплине "Геометрия", лекции
--    в объеме 40 часов для группы ФМОиИКТ-61
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
    select teacher_id,
           (select subject_id from distribution.subject where subject_nm = 'Геометрия'),
           1,
           (select group_id from distribution."group" where group_nm = 'ФМОиИКТ-61'),
            40
    from distribution.teacher
    where fio_nm = 'Феоктистова Н.И.';


-- 4. Распределение нагрузки по курсам и преподавателям
select t.fio_nm, g.course_no, sum(d.hour_cnt)
from distribution.distribution d
left join distribution.teacher t on t.teacher_id = d.teacher_id
left join distribution."group" g on d.group_id = g.group_id
where d.teacher_id != 0
group by t.teacher_id, g.course_no
order by t.fio_nm, g.course_no;

-- 5. Проверка полноты распределения нагрузки по дисциплинам
select s.subject_nm as "Дисциплина",
        (select sum(d.hour_cnt) from distribution.distribution d
            where d.teacher_id = 0 and d.subject_id = s.subject_id) as План,
        (select sum(d.hour_cnt) from distribution.distribution d
            where d.teacher_id != 0 and d.subject_id = s.subject_id) as Факт
from distribution.subject s
where (select sum(d.hour_cnt) from distribution.distribution d
        where d.teacher_id = 0 and d.subject_id = s.subject_id) !=
      (select sum(d.hour_cnt) from distribution.distribution d
        where d.teacher_id != 0 and d.subject_id = s.subject_id)
order by s.subject_nm;
