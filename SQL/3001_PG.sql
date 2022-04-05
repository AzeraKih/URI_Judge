

-- Seu amigo Zé Maria se encontra em uma emboscada porque fez um update sem where e
-- acabou zerando todos os valores da coluna price. Para sua sorte, o preço pode ser
-- calculado novamente sabendo o tipo do produto.

--   Se o tipo do produto é igual A, o preço será 20.0
--   Se o tipo do produto é igual B, o preço será 70.0
--   Se o tipo do produto é igual C, o preço será 530.5

-- O seu trabalho é mostrar o nome e o preço de todos os produtos. Você também deve mostrar os produtos em conjuntos
-- com a seguinte ordem: primeiro todos os produtos do tipo A, segundo o tipo B, e por último o tipo C. Além disso,
-- os produtos de cada um dos conjuntos (A,B,C), devem está ordenados pelo seu ID de forma decrescente.

create table products(
    id numeric,
    name varchar (50),
    type char,
    price numeric
);

insert into products (id, name, type, price) VALUES (1, 'Monitor', 'B', 0);
insert into products (id, name, type, price) VALUES (2, 'Headset', 'A', 0);
insert into products (id, name, type, price) VALUES (3, 'PC Case', 'A', 0);
insert into products (id, name, type, price) VALUES (4, 'Computer Desk', 'C', 0);
insert into products (id, name, type, price) VALUES (5, 'Gaming Chair', 'C', 0);
insert into products (id, name, type, price) VALUES (6, 'Mouse', 'A', 0);

select name,REPLACE(REPLACE(REPLACE(type,'A','20.0'),'B','70.0'),'C','530.5')price from products order by type,id desc;

select name,REPLACE(TRANSLATE(type,'ABC','275')||0.0,'50.0','530.5')price from products order by type,id desc
select name,case type when'A'then 20.0 when'B'then 70.0 else 530.5 end price from products order by 2,id desc

select regexp_replace('d','\md\M','X','gi')