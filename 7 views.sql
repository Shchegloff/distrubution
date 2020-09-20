-- distribution
drop view if exists distribution.distribution_vw;

create view distribution.distribution_vw as (
    select t.fio_nm as fio_nm, s.subject_nm, tp.type_nm, g.group_nm, d.hour_cnt
    from distribution.distribution d
    left join distribution.teacher t on t.teacher_id = d.teacher_id
    left join distribution.subject s on s.subject_id = d.subject_id
    left join distribution.type tp on d.type_id = tp.type_id
    left join distribution."group" g on d.group_id = g.group_id
    where d.teacher_id != 0
    );

select * from distribution.distribution_vw;

-- group
drop view if exists distribution.group_vw;

create view distribution.group_vw as (
    select group_nm, course_no
    from distribution."group"
    );

select * from distribution.group_vw;

-- group of teacher
drop view if exists distribution.group_teacher_vw;

create view distribution.group_teacher_vw as (
    select t.fio_nm as fio_nm, g.group_nm, g.course_no
    from distribution.group_teacher gt
    left join distribution.teacher t on t.teacher_id = gt.teacher_id
    left join distribution."group" g on gt.group_id = g.group_id
    );

select * from distribution.group_teacher_vw;

-- lesson
drop view if exists distribution.lesson_vw;

create view distribution.lesson_vw as (
    select t.fio_nm, s.subject_nm, tp.type_nm, l.course_no
    from distribution.lesson l
    left join distribution.teacher t on t.teacher_id = l.teacher_id
    left join distribution.subject s on s.subject_id = l.subject_id
    left join distribution.type tp on l.type_id = tp.type_id
    );

select * from distribution.lesson_vw;

-- teacher
drop view if exists distribution.teacher_vw;

create view distribution.teacher_vw as (
    select fio_nm, rank_nm, left(phone_no, 3) || '****' || right(phone_no, 3) as phone_no
    from distribution.teacher
    );

select * from distribution.teacher_vw;

-- type
drop view if exists distribution.type_vw;

create view distribution.type_vw as (
    select type_nm
    from distribution.type
    );

select * from distribution.type_vw;