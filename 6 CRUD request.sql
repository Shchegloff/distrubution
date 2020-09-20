-- Create
insert into distribution.distribution (teacher_id, subject_id, type_id, group_id, hour_cnt)
    select teacher_id,
           (select subject_id from distribution.subject where subject_nm = 'Математика для ГМУ'),
           2,
           (select group_id from distribution."group" where group_nm = 'ГМУ-81'),
            30
    from distribution.teacher
    where fio_nm = 'Щеглова С.Н.';

-- Read
select t.fio_nm, s.subject_nm, sum(d.hour_cnt)
from distribution.distribution d
left join distribution.teacher t on t.teacher_id = d.teacher_id
left join distribution.subject s on d.subject_id = s.subject_id
where d.teacher_id != 0
group by t.teacher_id, s.subject_nm
order by t.fio_nm, s.subject_nm;

-- Update
update distribution.subject
set subject_nm = 'Обобщающий курс высшей математики'
where subject_nm = 'Обощающий курс высшей математики';

-- Delete
delete from distribution.type
where type_nm = 'Практика';