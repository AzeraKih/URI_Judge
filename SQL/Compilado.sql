2744 - Senhas
SELECT id, password, MD5(password) from account;

2745 - Taxas
SELECT name, Trunc((salary * 0.1), 2) AS tax FROM people
WHERE salary > 3000;

2746 - Virus
select REPLACE(name, 'H1', 'X') as name from virus;

2743 - Quantidade de Caracteres
SELECT name, LENGTH(name) AS length FROM people
ORDER BY 2 desc;

2742 - O Multiverso de Richard
SELECT l.name, trunc((l.omega * 1.618), 3) AS FatorN 
  FROM dimensions d, life_registry l
  WHERE d.id = l.dimensions_id AND 
  l.name LIKE('Richard%') AND
  (d.name LIKE('C875') OR d.name LIKE('C774'))
  ORDER BY omega;


2741 - Notas dos Alunos
select 'Approved: ' || name as name, grade from students where grade >= 7 order by grade desc;

2740 - Liga
(
    select  'Podium: ' || team as name
        from league 
        order by position
        limit 3
)
union all
(
    select 'Demoted: ' || team as name from 
    ( select  team, position
        from league 
        order by position desc
        limit 2 ) as sub
    order by position
);

2739 - Dia de Pagamento
SELECT name, cast(EXTRACT(DAY FROM payday) as integer) as day from loan;

2738 - Concurso
SELECT name, Trunc((((math*2)+(specific*3)+(project_plan*5))/ 10),2) AS avg 
  FROM candidate c, score s 
  WHERE c.id = s.candidate_id
  ORDER BY avg DESC;

2737 - Advogados
(
select name,customers_number from lawyers
order by customers_number desc
limit 1
)
union all
(select name,customers_number from lawyers
order by customers_number
limit 1)
union all
(select 'Average'as name,cast(avg(customers_number)as int)as customers_number from lawyers)

2625 - Máscara de CPF
select CONCAT(substr(cpf,1,3),'.', 
			  substr(cpf,4,3),'.',
			  substr(cpf,7,3),'-',
              substr(cpf,10,2)) from natural_person;

2624 - Quantidades de Cidades por Clientes
select count(distinct(city)) from customers;

2623 - Categorias com Vários Produtos
select p.name,c.name
from products as p
inner join categories as c on p.id_categories=c.id
where p.amount>100
and
p.id_categories in(1,2,3,6,9);

2622 - Pessoas Jurídicas
select c.name from legal_person l, customers c
	where l.id_customers = c.id;

2621 - Quantidades Entre 10 e 20
select p.name from products p
	join providers pv
	on pv.id = p.id_providers
    where p.amount > 10 and
    p.amount < 20 and 
    pv.name like('P%');

2620 - Pedidos no Primeiro Semestre
select c.name, o.id
	from customers c, orders o
	where o.id_customers = c.id and 
    orders_date >= TO_DATE('2016-01-01', 'yyyy-mm-dd') AND orders_date <= TO_DATE('2016-06-30', 'yyyy-mm-dd');

2619 - Super Luxo
select pc.name, p.name, pc.price from products pc
	join providers p on
    p.id = pc.id_providers
	join categories c on
    c.id = pc.id_categories
    where pc.price > 1000 and
    c.name like ('Super Luxury');


2618 - Produtos Importados
select pc.name, p.name, c.name from products pc
	join providers p on
    p.id = pc.id_providers
	join categories c on
    c.id = pc.id_categories
    where c.name like('Imported') and
    p.name like ('Sansul SA');

2617 - Fornecedor Ajax SA
select p.name, pr.name from products p 
	join providers pr on 
    p.id_providers = pr.id
    where pr.name like('Ajax SA');


2616 - Nenhuma Locação
select id, name 
    from customers
    where id not in(select distinct(id_customers) from locations);

2615 - Expandindo o Negocio
select distinct(city) from customers;

2614 - Locações de Setembro
select name, rentals_date 
	from rentals r, customers c 
	where r.id_customers = c.id and 
    rentals_date >= TO_DATE('2016-09-01', 'yyyy-mm-dd') AND rentals_date <= TO_DATE('2016-09-31', 'yyyy-mm-dd');

2613 - Filmes em Promoção
select f.id, f.name from movies f, prices p
where p.id = f.id_prices and
p.value < 2;

2612 - Os Atores Silva
select distinct(m.id), m.name from movies m, actors a, movies_actors ma, genres g
	where m.id = ma.id_movies and
    a.id = ma.id_actors and
    g.id = m.id_genres and
    (a.name like ('Marcelo Silva') OR
    a.name like ('Miguel Silva')) and
    g.description like ('Action');

2611 - Filmes de Ação
select f.id, f.name 
	from movies f, genres 
    where f.id_genres = genres.id and
    f.id_genres = (select max(id) from genres where
						genres.description like('Action'));

2610 - Valor Médio dos Produtos
select trunc(AVG(price),2) from products;

2609 - Produtos por Categorias
select categories.name, sum(products.amount) 
	from products, categories 
    where products.id_categories = categories.id
    group by categories.name;

2608 - Maior e Menor Preço
select max(price), min(price) from products;

2607 - Cidades em Ordem Alfabética
select distinct(city) from providers order by 1;

2606 - Categorias
select p.id, p.name from categories c, products p
where c.name like ('super%') and
c.id = p.id_categories;

2605 - Representantes Executivos
select pd.name, pv.name from products pd, providers pv
where pd.id_categories = 6 and
pd.id_providers = pv.id;

2604 - Menores que 10 ou Maiores que 100
select id, name from products where price < 10 or price > 100;

2603 - Endereço dos Clientes
select name, street from customers where city like('Porto Alegre')

2602 - Select Básico
select name from customers where state like('RS');