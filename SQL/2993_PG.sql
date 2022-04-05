create table value_table(
    amount integer
)

insert into value_table values (4);
insert into value_table values (6);
insert into value_table values (7);
insert into value_table values (1);
insert into value_table values (1);
insert into value_table values (2);
insert into value_table values (3);
insert into value_table values (2);
insert into value_table values (3);
insert into value_table values (1);
insert into value_table values (5);
insert into value_table values (6);
insert into value_table values (1);
insert into value_table values (7);
insert into value_table values (8);
insert into value_table values (9);
insert into value_table values (10);
insert into value_table values (11);
insert into value_table values (12);
insert into value_table values (4);
insert into value_table values (5);
insert into value_table values (5);
insert into value_table values (3);
insert into value_table values (6);
insert into value_table values (2);
insert into value_table values (2);
insert into value_table values (1);

select amount as most_frequent_value from value_table group by amount order by count(1) desc limit 1;

select mode() within group (order by amount)
from value_table