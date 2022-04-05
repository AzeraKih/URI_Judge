create table doctors(
  id   integer,
  name varchar
);

create table work_shifts(
  id    integer,
  name  varchar(50),
  bonus numeric​
);

create table attendances(
  id            integer,
  id_doctor     integer,
  hours         integer,
  id_work_shift integer
);


insert into doctors (id, name) values (1, 'Arlino');
insert into doctors (id, name) values (2, 'Tiago');
insert into doctors (id, name) values (3, 'Amanda');
insert into doctors (id, name) values (4, 'Wellington​​​');

insert into work_shifts (id, name, bonus) values (1, 'nocturnal', 15);
insert into work_shifts (id, name, bonus) values (2, 'afternoon', 2);
insert into work_shifts (id, name, bonus) values (3, 'day', 1);

insert into attendances (id, id_doctor, hours, id_work_shift) values (1, 1, 5, 1);
insert into attendances (id, id_doctor, hours, id_work_shift) values (2, 3, 2, 1);
insert into attendances (id, id_doctor, hours, id_work_shift) values (3, 3, 3, 2);
insert into attendances (id, id_doctor, hours, id_work_shift) values (4, 2, 2, 3);
insert into attendances (id, id_doctor, hours, id_work_shift) values (5, 1, 5, 3);
insert into attendances (id, id_doctor, hours, id_work_shift) values (6, 4, 1, 3);
insert into attendances (id, id_doctor, hours, id_work_shift) values (7, 4, 2, 1);
insert into attendances (id, id_doctor, hours, id_work_shift) values (8, 3, 2, 2);
insert into attendances (id, id_doctor, hours, id_work_shift) values (9, 2, 4, 2);



select doc.name, round(CAST(sum((ate.hours * 150) + ((ate.hours * 150) * (wor.bonus/100))) AS NUMERIC), 2) salary from attendances ate
    join doctors doc
  on doc.id = ate.id_doctor
    join work_shifts wor
  on ate.id_work_shift = wor.id
  group by doc.name
order by 2 desc;


WITH fat_hrs as (
select doc.name, ate.hours  + (ate.hours * (wor.bonus/100)) hrs_sal from attendances ate
    join doctors doc
  on doc.id = ate.id_doctor
    join work_shifts wor
  on ate.id_work_shift = wor.id
) 
select name, round(CAST (sum(hrs_sal * 150) AS NUMERIC), 1) salary  from fat_hrs
  group by name
order by 2 desc;





select doc.name, round(CAST(sum((ate.hours * 150) + ((ate.hours * 150) * (wor.bonus/100))) AS NUMERIC), 2) salary from attendances ate
    join doctors doc
  on doc.id = ate.id_doctor
    join work_shifts wor
  on ate.id_work_shift = wor.id
  group by doc.name
order by 2 desc;