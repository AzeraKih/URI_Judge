drop table empregados;
drop table departamentos;
drop table trabalha;
drop table projetos;

create table empregados(
    cpf             varchar(15),
    enome           varchar(60),
    salario         float,
    cpf_supervisor  varchar(15),
    dnumero         integer
);

create table departamentos(
    dnumero     integer,
    dnome       varchar(60),
    cpf_gerente varchar(15)  
);

create table trabalha(
    cpf_emp varchar(15),
    pnumero integer 
);

create table projetos(
    pnumero integer,
    pnome   varchar(45),
    dnumero integer
);



insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (049382234322, 'João Silva',        2350, 2434332222, 1010);
insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (586733922290, 'Mario Silveira',    3500, 2434332222, 1010);
insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (2434332222,   'Aline Barros',      2350, null,       1010);
insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (1733332162,   'Tulio Vidal',       8350, null,       1020);
insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (4244435272,   'Juliana Rodrigues', 3310, null,       1020);
insert into empregados (cpf, enome, salario, cpf_supervisor, dnumero) VALUES (1014332672,   'Natalia Marques',   2900, null,       1010);

insert into departamentos (dnumero, dnome, cpf_gerente) VALUES (1010, 'Pesquisa', 049382234322);
insert into departamentos (dnumero, dnome, cpf_gerente) VALUES (1020, 'Ensino',   2434332222  );

insert into trabalha (cpf_emp, pnumero) VALUES (49382234322,  2010);
insert into trabalha (cpf_emp, pnumero) VALUES (586733922290, 2020);
insert into trabalha (cpf_emp, pnumero) VALUES (49382234322,  2020);

insert into projetos (pnumero, pnome, dnumero) VALUES (2010, 'Alpha', 1010);
insert into projetos (pnumero, pnome, dnumero) VALUES (2020, 'Beta',  1020);


--     cpf    |        enome      |  dnome	
-- -----------+-------------------+------------
-- 1014332672 | Natalia Marques   | Pesquisa	
-- 1733332162 | Tulio Vidal       | Ensino	
-- 2434332222 | Aline Barros      | Pesquisa	
-- 4244435272 | Juliana Rodrigues | Ensino


-- Mostrar o CPF, nome dos empregados e o nome do departamento dos empregados que não trabalham em nenhum projeto. O resultado deve estar ordenado por cpf

select cpf, enome, dnome
    from empregados, departamentos
    where departamentos.dnumero in( empregados.dnumero)
    and cpf not in (select cpf_emp from trabalha)
order by cpf;


