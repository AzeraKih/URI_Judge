--insert into problems(nr_problem, ds_problem, ds_resolution) values()

alter session set current_schema = BDURI;

create table departamento (
	cod_dep number,
	nome varchar2(50),
	endereco varchar2(50)
);
create table dependente(
	matr number,
	nome varchar2(50),
	endereco varchar2(50)
);
create table desconto(
	cod_desc number,
	nome varchar2(50),
	tipo varchar2(10),
	valor number
);
create table divisao(
	cod_divisao number,
	nome varchar2(50),
	endereco varchar2(50),
	cod_dep number
);
create table emp_desc(
	cod_desc number,
	matr number
);
create table emp_venc(
	cod_venc number,
	matr number
);
create table empregado(
	matr number,
	nome varchar2(50),
	endereco varchar2(50),
	data_lotacao timestamp,
	lotacao number,
	gerencia_cod_dep number,
	lotacao_div number,
	gerencia_div number
);
create table vencimento(
	cod_venc number,
	nome varchar2(50),
	tipo varchar2(10),
	valor number
);

INSERT INTO DEPARTAMENTO(COD_DEP, NOME, ENDERECO) VALUES (1, 'Contabilidade', 'R. X');
INSERT INTO DEPARTAMENTO(COD_DEP, NOME, ENDERECO) VALUES (2, 'TI',            'R. Y');
INSERT INTO DEPARTAMENTO(COD_DEP, NOME, ENDERECO) VALUES (3, 'Engenharia',    'R. Y');

INSERT INTO DEPENDENTE (MATR, NOME, ENDERECO) VALUES (9999, 'Francisco Jose',     'R. Z');
INSERT INTO DEPENDENTE (MATR, NOME, ENDERECO) VALUES (88,   'Maria da Silva',     'R. T');
INSERT INTO DEPENDENTE (MATR, NOME, ENDERECO) VALUES (55,   'Virgulino da Silva', 'R. 31');

INSERT INTO desconto(cod_desc, nome, tipo, valor) VALUES (91, 'IR',             'V', 400);
INSERT INTO desconto(cod_desc, nome, tipo, valor) VALUES (92, 'Plano de saude', 'V', 300);
INSERT INTO desconto(cod_desc, nome, tipo, valor) VALUES (93, NULL, NULL, NULL);

INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (11, 'Ativo',                        'R. X', '1');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (12, 'Passivo',                      'R. X', '1');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (21, 'Desenvoilvimento de Projetos', 'R. Y', '2');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (22, 'Analise de Sistemas',          'R. Y', '2');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (23, 'Programacao',                  'R. W', '2');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (31, 'Concreto',                     'R. Y', '3');
INSERT INTO divisao(cod_divisao, nome, endereco, cod_dep) VALUES (32, 'Calculo Estrutural',           'R. Y', '3');

INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (91, 3);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (91, 27);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (91, 9999);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (92, 27);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (92, 71);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (92, 88);
INSERT INTO EMP_DESC(COD_DESC, MATR) VALUES (92, 9999);

INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (1,  27);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (1,  88);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (1,  135);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (1,  254);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (1,  431);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  1);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  5);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  7);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  13);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  33);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (2,  9999);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (3,  3);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (3,  55);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (3,  71);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (3,  222);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (4,  25);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (4,  476);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (5,  371);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (6,  3);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (6,  27);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (6,  9999);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  5);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  33);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  55);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  71);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  88);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  254);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (7,  476);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (8,  25);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (8,  91);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  1);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  27);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  91);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  135);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  371);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (9,  9999);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (10, 371);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (10, 9999);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (11, 91);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (12, 3);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (12, 27);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (12, 254);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (12, 9999);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 3);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 5);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 7);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 25);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 33);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 88);
INSERT INTO EMP_VENC(COD_VENC, MATR) VALUES (13, 135);

INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (9999, 'Jose Sampaio',      'R. Z',  TO_DATE('06/06/2006'), 1, 1,    12, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (33,   'Jose Maria',        'R. 21', TO_DATE('01/03/2006'), 1, NULL, 11, 11);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (1,    'Maria Jose',        'R. 52', TO_DATE('01/03/2003'), 1, NULL, 11, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (7,    'Yasmim',            'R. 13', TO_DATE('02/07/2010'), 1, NULL, 11, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (5,    'Rebeca',            'R. 1',  TO_DATE('01/04/2011'), 1, NULL, 12, 12);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (13,   'Sofia',             'R. 28', TO_DATE('09/09/2010'), 1, NULL, 12, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (27,   'Andre',             'R. Z',  TO_DATE('01/05/2005'), 2, 2,	  22, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (88,   'Yami',              'R. T',  TO_DATE('01/02/2014'), 2, NULL, 21, 21);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (431,  'Joao da Silva',     'R. Y',  TO_DATE('03/07/2011'), 2, NULL, 21, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (135,  'Ricardo Reis',      'R. 33', TO_DATE('01/08/2009'), 2, NULL, 21, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (254,  'Barbara',           'R. Z',  TO_DATE('03/01/2008'), 2, NULL, 22, 22);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (371,  'Ines',              'R. Y',  TO_DATE('01/01/2005'), 2, NULL, 22, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (476,  'Flor',              'R. Z',  TO_DATE('28/10/2015'), 2, NULL, 23, 23);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (25,   'Lina',              'R. 67', TO_DATE('01/09/2014'), 2, NULL, 23, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (3,    'Jose da Silva',     'R. 8',  TO_DATE('02/01/2011'), 3, 3,    31, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (71,   'Silverio dos Reis', 'R. C',  TO_DATE('05/01/2009'), 3, NULL, 31, 31);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (91,   'Reis da Silva',     'R. Z',  TO_DATE('05/11/2011'), 3, NULL, 31, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (55,   'Lucas',             'R. 31', TO_DATE('01/07/2013'), 3, NULL, 32, 32);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (222,  'Marina',            'R. 31', TO_DATE('07/01/2015'), 3, NULL, 32, NULL);
INSERT INTO EMPREGADO (MATR, NOME, ENDERECO, DATA_LOTACAO, LOTACAO, GERENCIA_COD_DEP, LOTACAO_DIV, GERENCIA_DIV) VALUES (725,  'Angelo',            'R. X',  TO_DATE('01/03/2001'), 2, NULL, 21, NULL);

INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (1,  'Salario base Analista de Sistemas',        'V', 5000);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (2,  'Salario base Contador',                    'V', 3000);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (3,  'Salario Base Engenheiro',                  'V', 4500);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (4,  'Salario Base Projetista Software',         'V', 5000);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (5,  'Salario Base Programador de Sistemas',     'V', 3000);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (6,  'Gratificacao Chefia Departamento',         'V', 3750);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (7,  'Gratificacao Chefia Divisao',              'V', 2200);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (8,  'Salario Trabalhador Costrucao Civil',      'V', 800);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (9,  'Auxilio Salario Familia',                  'V', 300);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (10, 'Gratificacao Tempo de servico',            'V', 350);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (11, 'Insalubridade',                            'V', 800);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (12, 'Gratificacao por titulacao - Doutorado',   'V', 2000);
INSERT INTO VENCIMENTO (COD_VENC, NOME, TIPO, VALOR) VALUES (13, 'Gratificacao por Titularidade - Mestrado', 'V', 800);





























/*


create table departamento (
	cod_dep integer
	nome varchar (50)
	endereco varchar (50) 
)
create table dependente(
	matr integer
	nome varchar (50)
  endereco varchar (50) 
  )
create table desconto(
	cod_desc integer
	nome varchar (50)
	tipo varchar (10)
	valor numeric 
)
create table divisao(
	cod_divisao integer
	nome varchar (50)
	endereco varchar (50)
	cod_dep numeric 
)
create table emp_desc(
	cod_desc integer
	matr integer 
)
create table emp_venc(
	cod_venc integer
	matr integer 
)
create table empregado(
	matr integer
	nome varchar (50)
	endereco varchar (50)
	data_lotacao timestamp
	lotacao integer
	gerencia_cod_dep integer
	lotacao_div integer
	gerencia_div integer 
)
create table vencimento(
	cod_venc integer
	nome varchar (50)
	tipo varchar (10)
	valor numeric
)
*/