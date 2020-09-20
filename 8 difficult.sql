--- 1 Кураторы - определяется по сущности group_teacher для тех случаев когда
---   количество преподователей для группы не более одного.
drop view if exists distribution.curator_vw;

create view distribution.curator_vw as (
    select g.group_nm, t.fio_nm
    from distribution.group_teacher gt
    left join distribution.teacher t on t.teacher_id = gt.teacher_id
    left join distribution."group" g on gt.group_id = g.group_id
    where (select count(*) from distribution.group_teacher where group_id = gt.group_id) = 1
    order by g.group_nm, t.fio_nm
);

select * from distribution.curator_vw;

--- 2 Контроль и вывод расхождений распределения нагрузки
--    списку дисциплин по видам занятий у преподавателей...
drop view if exists distribution.check_vw;

create view distribution.check_vw as (
    select t.fio_nm, s.subject_nm, tp.type_nm, g.group_nm, d.hour_cnt
    from distribution.distribution d
         left join distribution.teacher t on t.teacher_id = d.teacher_id
         left join distribution.type tp on d.type_id = tp.type_id
         left join distribution.subject s on d.subject_id = s.subject_id
         left join distribution."group" g on d.group_id = g.group_id
    where d.teacher_id != 0
            and not ((d.teacher_id, d.subject_id, d.type_id, g.course_no) in
            (select * from distribution.lesson))
    order by t.fio_nm, s.subject_nm, tp.type_nm, g.group_nm
    );

select * from distribution.check_vw;
