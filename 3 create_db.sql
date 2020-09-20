create schema if not exists distribution;

create table if not exists distribution.teacher (
    teacher_id	serial primary key,
    fio_nm	varchar(50),
    rank_nm	varchar(50),
    phone_no varchar(20)
);

create table if not exists distribution.group (
    group_id serial primary key,
    group_nm varchar(15),
    course_no integer
);

create table if not exists distribution.group_teacher (
    teacher_id	integer not null,
    group_id	integer not null
);

create table if not exists distribution.subject (
    subject_id	serial primary key,
    subject_nm	varchar(100)
);

create table if not exists distribution.type (
    type_id	serial primary key,
    type_nm	varchar(30)
);

create table if not exists distribution.lesson (
    teacher_id	integer not null,
    subject_id	integer not null,
    type_id integer not null,
    course_no integer
);

create table if not exists distribution.distribution (
    teacher_id	integer,
    subject_id	integer not null,
    type_id integer not null,
    group_id integer not null,
    hour_cnt integer not null
);

