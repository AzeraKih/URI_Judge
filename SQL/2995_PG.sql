create table records (
    id integer,
    temperature integer,
    mark integer);

insert into records (id, temperature, mark) VALUES (1, 30, 1);
insert into records (id, temperature, mark) VALUES (2, 30, 1);
insert into records (id, temperature, mark) VALUES (3, 30, 1);
insert into records (id, temperature, mark) VALUES (4, 32, 2);
insert into records (id, temperature, mark) VALUES (5, 32, 2);
insert into records (id, temperature, mark) VALUES (6, 32, 2);
insert into records (id, temperature, mark) VALUES (7, 32, 2);
insert into records (id, temperature, mark) VALUES (8, 30, 3);
insert into records (id, temperature, mark) VALUES (9, 30, 3);
insert into records (id, temperature, mark) VALUES (10, 30, 3);
insert into records (id, temperature, mark) VALUES (11, 31, 4);
insert into records (id, temperature, mark) VALUES (12, 31, 4);
insert into records (id, temperature, mark) VALUES (13, 33, 5);
insert into records (id, temperature, mark) VALUES (14, 33, 5);
insert into records (id, temperature, mark) VALUES (15, 33, 5);

select temperature, count(1) number_of_records from records group by mark, temperature order by mark