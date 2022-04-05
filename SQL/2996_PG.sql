-- Você trabalha em uma transportadora e precisa mostrar com urgência o ano e o nome de todos os clientes que enviaram 
-- e receberam pacotes azuis ou do ano de 2015 e também que o endereço do seu remetente ou destinatário não seja de Taiwan.
-- Além disso, você deve ordenar o resultado pelo ano de maneira decrescente.


create table users(
    id numeric,
    name varchar (50),
    type char,
    address varchar (50)
);
create table packages (
    id_package numeric,
    id_user_sender integer,
    id_user_receiver integer,
    color varchar (50),
    year integer
);


insert into users (id, name, address) values (1, 'Edgar Codd', 'England');
insert into users (id, name, address) values (2, 'Peter Chen', 'Taiwan');
insert into users (id, name, address) values (3, 'Jim Gray', 'United States');
insert into users (id, name, address) values (4, 'Elizabeth ONeil', 'United States');

insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (1, 1, 2, 'blue', 2015);
insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (2, 1, 3, 'blue', 2019);
insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (3, 2, 4, 'red', 2019);
insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (4, 2, 1, 'green', 2018);
insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (5, 3, 4, 'red', 2015);
insert into packages (id_package, id_user_sender, id_user_receiver, color, year) values (6, 4, 3, 'blue', 2019);

   
select packages.year, sdrs.name sender, rcvrs.name receiver from packages
    join users sdrs
    on sdrs.id = packages.id_user_sender 
    join users rcvrs
    on rcvrs.id = packages.id_user_receiver
where (packages.year = 2015 or packages.color = 'blue')
    and sdrs.address <> 'Taiwan'
    and rcvrs.address <> 'Taiwan'
    order by 1 desc ;