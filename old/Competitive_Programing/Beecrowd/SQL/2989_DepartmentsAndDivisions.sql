create table departamento (
	cod_dep int primary key,
    nome varchar(50),
    endereco varchar(50)
);

create table dependente (
	matr int,
    nome varchar(50),
    endereco varchar(50)
);

create table desconto (
	cod_desc int primary key,
    nome varchar(50),
    tipo varchar(10),
    valor numeric
);

create table divisao (
	cod_divisao int primary key,
    nome varchar(50),
    endereco varchar(50),
    cod_dep int not null, foreign key(cod_dep) references departamento(cod_dep)
);

create table emp_desc (
	cod_desc int not null, foreign key(cod_desc) references desconto(cod_desc),
    matr int
);

create table vencimento (
	cod_venc int primary key,
    nome varchar(50),
    tipo varchar(10),
    valor numeric
);

create table empregado (
	matr int primary key,
    nome varchar(50),
    endereco varchar(50),
    data_lotacao datetime,
    lotacao int,
    gerencia_cod_dep int,
    lotacao_div int not null, foreign key(lotacao_div) references divisao(cod_divisao),
    gerencia_div int
);

create table emp_venc (
	cod_venc int not null, foreign key(cod_venc) references vencimento(cod_venc),
    matr int not null, foreign key(matr) references empregado(matr)
);

insert into departamento(cod_dep, nome, endereco)
values
	(1, 'Contabilidade', 'R. X'),
	(2, 'TI', 'R. Y'),
	(3, 'Engenharia', 'R. Y');

insert into dependente(matr, nome, endereco)
values
	(9999, 'Francisco Jose', 'R. Z'),
	(88, 'Maria da Silva', 'R. T'),
	(55, 'Virgulino da Silva', 'R. 31');

insert into desconto(cod_desc, nome, tipo, valor)
values
	(91, 'IR', 'V', 400.00),
	(92, 'Plano de saude', 'v', 300.00),
	(93, NULL, NULL, NULL);

insert into divisao(cod_divisao, nome, endereco, cod_dep)
values
	(11, 'Ativo', 'R. X', 1),
	(12, 'Passivo', 'R. X', 1),
	(21, 'Desenvoilvimento de Projetos', 'R. Y', 2),
	(22, 'Analise de Sistemas', 'R. Y', 2),
	(23, 'Programacao', 'R. W', 2),
	(31, 'Concreto', 'R Y', 3),
	(32, 'Calculo Estrutural', 'R. Y', 3);

insert into emp_desc(cod_desc, matr)
values
	(91, 3),
	(91, 27),
	(91, 9999),
	(92, 27),
	(92, 71),
	(92, 88),
	(92, 9999);

insert into empregado
(matr, nome, endereco, data_lotacao, lotacao, gerencia_cod_dep, lotacao_div, gerencia_div)
values
	(9999, 'Jose Sampaio', 'R Z', '2006-06-06 00:00:00', 1, 1, 12, NULL),
	(33, 'Jose Maria', 'R 21', '2006-03-01 00:00:00', 1, NULL, 11, 11),
	(1, 'Maria Jose', 'R. 52', '2003-03-01 00:00:00', 1, NULL, 11, NULL),
	(7, 'Yasmim', 'R. 13', '210-07-02 00:00:00', 1, NULL, 11, NULL),
	(5, 'Rebeca', 'R. 1', '2011-04-01 00:00:00', 1, NULL, 12, 12),
	(13, 'Sofia', 'R. 28', '2010-09-09 00:00:00', 1, NULL, 12, NULL),
	(27, 'Andre', 'R. Z', '2005-05-01 00:00:00', 2, 2, 22, NULL),
	(88, 'Yami', 'R. T', '2014-02-01 00:00:00', 2, NULL, 21, 21),
	(431, 'Joao da Silva', 'R. Y', '2011-07-03 00:00:00', 2, NULL, 21, NULL),
	(135, 'Ricardo Reis', 'R. 33', '2009-08-01 00:00:00', 2, NULL, 21, NULL),
	(254, 'Barbara', 'R. Z', '2008-01-03 00:00:00', 2, NULL, 22, 22),
	(371, 'Ines', 'R. Y', '2005-01-01 00:00:00', 2, NULL, 22, NULL),
	(476, 'Flor', 'r. Z', '2015-10-28 00:00:00', 2, NULL, 23, 23),
	(25, 'Lina', 'R. 67', '2014-09-01 00:00:00', 2, NULL, 23, NULL),
	(3, 'Jose da Silva', 'R. 8', '2011-01-02 00:00:00', 3, 3, 31, NULL),
	(71, 'Silverio dos Reis', 'r. C', '2009-01-05 00:00:00', 3, NULL, 31, 31),
	(91, 'Reis da Silva', 'R. Z', '2011-11-05 00:00:00', 3, NULL, 31, NULL),
	(55, 'Lucas', 'R 31', '2013-07-01 00:00:00', 3, NULL, 32, 32),
	(222, 'Marina', 'R 31', '2015-01-07 00:00:00', 3, NULL, 32, NULL),
	(725, 'Angelo', 'R. X', '2001-03-01 00:00:00', 2, NULL, 21, NULL);

insert into vencimento(cod_venc, nome, tipo, valor)
values
	(1, 'salario base Analista de Sistemas', 'V', 5000.00),
	(2, 'Salario base Contador', 'V', 3000.00),
	(3, 'Salario Base Engenheiro', 'V', 4500.00),
	(4, 'Salario Base Projetista Software', 'V', 5000.00),
	(5, 'Salario Base Programador de Sistemas', 'V', 3000.00),
	(6, 'Gratificacao Chefia Departamento', 'V', 3750.00),
	(7, 'Gratificacao Chefia Divisao', 'V', 2200.00),
	(8, 'Salario Trabalhador Costrucao Civil', 'V', 800.00),
	(9, 'Auxilio Salario Familia', 'V', 300.00),
	(10, 'Gratificacao Tempo de servico', 'V', 350.00),
	(11, 'Insalubridade', 'V', 800.00),
	(12, 'Gratificacao por titulacao - Doutorado', 'V', 2000.00),
	(13, 'Gratificacao por Titularidade - Mestrado', 'V', 800.00);
    
insert into emp_venc(cod_venc, matr)
values
	(1, 27),
	(1, 88),
	(1, 135),
	(1, 254),
	(1, 431),
	(2, 1),
	(2, 5),
	(2, 7),
	(2, 13),
	(2, 33),
	(2, 9999),
	(3, 3),
	(3, 55),
	(3, 71),
	(3, 222),
	(4, 25),
	(4, 476),
	(5, 371),
	(6, 3),
	(6, 27),
	(6, 9999),
	(7, 5),
	(7, 33),
	(7, 55),
	(7, 71),
	(7, 88),
	(7, 254),
	(7, 476),
	(8, 25),
	(8, 91),
	(9, 1),
	(9, 27),
	(9, 91),
	(9, 135),
	(9, 371),
	(9, 9999),
	(10, 371),
	(10, 9999),
	(11, 91),
	(12, 3),
	(12, 27),
	(12, 254),
	(12, 9999),
	(13, 3),
	(13, 5),
	(13, 7),
	(13, 25),
	(13, 33),
	(13, 88),
	(13, 135);

-- try 1:
-- uniao das tabelas
select 
	dep.nome as departamento,
	di.nome as divisao,
    emp.nome,
    venc.valor
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join empregado emp on di.cod_divisao = emp.lotacao_div
    join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
group by di.nome, dep.nome, emp.nome, venc.valor;

-- try 2:
-- valores dos salarios somados
select 
	dep.nome as departamento,
	di.nome as divisao,
    emp.nome,
    sum(venc.valor)
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join empregado emp on di.cod_divisao = emp.lotacao_div
    join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
group by emp.nome, dep.nome, di.nome;

-- try 3.1:
-- obter com os descontos
select
	emp.nome empregado,
    sum(venc.valor) valor,
    sum(des.valor) desconto
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome, edes.cod_desc;

-- try 3.2:
-- obter a soma dos descontos
select
	emp.nome empregado,
    sum(venc.valor) valor,
    sum(des.valor) desconto
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome;

-- try 4:
-- rapido estudo sobre left e right joins
select 
	des.valor desconto,
    emp.nome empregado,
    evenc.cod_venc
from emp_desc edes
	join desconto des on edes.cod_desc = des.cod_desc
    right join empregado emp on edes.matr = emp.matr
    left join emp_venc evenc on emp.matr = evenc.matr;
    
 -- try 5: 
 -- pequenas correcoes
select
	emp.nome empregado,
	sum(venc.valor)
from empregado emp
	left join emp_venc evenc on emp.matr = evenc.matr
    left join vencimento venc on evenc.cod_venc = venc.cod_venc
group  by 1;

-- try 6:
-- valor do salario por empregado
select
	emp.nome empregado,
    sum(venc.valor) - sum(case when des.valor is null then 0 else des.valor end) salario    
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome;

-- try 7.1:
-- adicionado o codigo de divisao do funcionario
select
	emp.lotacao_div emp_divisao,
	emp.nome empregado,
    sum(venc.valor) - sum(case when des.valor is null then 0 else des.valor end) salario    
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome, emp_divisao;

-- try 7.2:
-- adicionado o codigo de divisao do funcionario (sem calcular desconto)
select
	emp.lotacao_div emp_divisao,
	emp.nome empregado,
    sum(venc.valor) salario    
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome, emp_divisao;

-- try 7.3:
-- adicionado o codigo de divisao do funcionario (com codigo de vencimento restrito a salarios)
select
	emp.lotacao_div emp_divisao,
	emp.nome empregado,
    sum(venc.valor) - sum(case when des.valor is null then 0 else des.valor end) salario    
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc and venc.cod_venc < 6
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome, emp_divisao;

-- try 7.4:
-- adicionado o codigo de divisao do funcionario (com codigo de vencimento restrito a salarios e sem descontos)
select
	emp.lotacao_div emp_divisao,
	emp.nome empregado,
    sum(venc.valor) salario    
from empregado emp
	join emp_venc evenc on emp.matr = evenc.matr
    join vencimento venc on evenc.cod_venc = venc.cod_venc and venc.cod_venc < 6
    left join emp_desc edes on emp.matr = edes.matr
    left join desconto des on edes.cod_desc = des.cod_desc
group by emp.nome, emp_divisao;

-- try 8:
-- aplicando o with
with dados_salario as (
	select
		emp.lotacao_div emp_divisao,
		sum(venc.valor) - sum(case when des.valor is null then 0 else des.valor end) salario    
	from empregado emp
		join emp_venc evenc on emp.matr = evenc.matr
		join vencimento venc on evenc.cod_venc = venc.cod_venc
		left join emp_desc edes on emp.matr = edes.matr
		left join desconto des on edes.cod_desc = des.cod_desc
	group by emp.nome, emp_divisao
)
select
	dep.nome departamento,
    di.nome divisao,
	dados_salario.salario
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join dados_salario on dados_salario.emp_divisao = di.cod_divisao;
    
-- try 9:
-- adicionando o group by e o order by com o round
with dados_salario as (
	select
		emp.lotacao_div emp_divisao,
		sum(venc.valor) - sum(case when des.valor is null then 0 else des.valor end) salario    
	from empregado emp
		join emp_venc evenc on emp.matr = evenc.matr
		join vencimento venc on evenc.cod_venc = venc.cod_venc
		left join emp_desc edes on emp.matr = edes.matr
		left join desconto des on edes.cod_desc = des.cod_desc
	group by emp.nome, emp_divisao
)
select
	dep.nome as departamento,
    di.nome as divisao,
	round(avg(dados_salario.salario), 2) as media,
    round(max(dados_salario.salario), 2) as maior
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join dados_salario on dados_salario.emp_divisao = di.cod_divisao
group by 1, 2
order by 3 desc;

-- try 10:
-- por fim, adicionando o coalesce
with dados_salario as (
	select
		emp.lotacao_div emp_divisao,
		sum(venc.valor) - sum(coalesce(des.valor, 0)) salario    
	from empregado emp
		join emp_venc evenc on emp.matr = evenc.matr
		join vencimento venc on evenc.cod_venc = venc.cod_venc
		left join emp_desc edes on emp.matr = edes.matr
		left join desconto des on edes.cod_desc = des.cod_desc
	group by emp.nome, emp_divisao
)
select
	dep.nome as departamento,
    di.nome as divisao,
	round(avg(dados_salario.salario), 2) as media,
    round(max(dados_salario.salario), 2) as maior
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join dados_salario on dados_salario.emp_divisao = di.cod_divisao
group by 1, 2
order by 3 desc;

-- -------------------------------------------------------
-- Erro nos salarios!
-- recomeçar a partir de aqui:
select
	emp.nome empregado,
	sum(venc.valor) saldo
from empregado emp
	left join emp_venc evenc on emp.matr = evenc.matr
    left join vencimento venc on evenc.cod_venc = venc.cod_venc
group  by 1;

select 
	emp.nome empregado,
    sum(des.valor) desconto
from empregado emp
	left join emp_desc edes on emp.matr = edes.matr
	left join desconto des on edes.cod_desc = des.cod_desc
group by 1;

select
	emp.nome empregado,
	coalesce(sum(distinct venc.valor), 0) saldo,
    coalesce(sum(distinct des.valor), 0) desconto
from empregado emp
	left join emp_venc evenc on emp.matr = evenc.matr
    left join vencimento venc on evenc.cod_venc = venc.cod_venc
    left join emp_desc edes on emp.matr = edes.matr
	left join desconto des on edes.cod_desc = des.cod_desc
group  by emp.nome;

-- try 11:
-- usando as estruturas corretas
with dados_salario as (
	select
		emp.lotacao_div emp_divisao,
		coalesce(sum(distinct venc.valor), 0) - coalesce(sum(distinct des.valor), 0) as salario
	from empregado emp
		left join emp_venc evenc on emp.matr = evenc.matr
		left join vencimento venc on evenc.cod_venc = venc.cod_venc
		left join emp_desc edes on emp.matr = edes.matr
		left join desconto des on edes.cod_desc = des.cod_desc
	group  by emp.nome, emp_divisao
)

select
	dep.nome as departamento,
    di.nome as divisao,
	round(avg(dados_salario.salario), 2) as media,
    round(max(dados_salario.salario), 2) as maior
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join dados_salario on dados_salario.emp_divisao = di.cod_divisao
group by 1, 2
order by 3 desc;

-- ainda deu errado por causa do distinct, ja que existe registros com valores iguais que acabam nao sendo somados corretamente
-- usar metodo de subqueries

-- try 12:
-- saldos

select 
	evenc.matr,
    sum(venc.valor) as saldo
from emp_venc evenc
	left join vencimento venc on evenc.cod_venc = venc.cod_venc
group by evenc.matr;

select 
	emp.nome,
    coalesce(saldo.saldo, 0) saldo
from empregado emp
	left join (
		select 
			evenc.matr,
			sum(venc.valor) as saldo
		from emp_venc evenc
			left join vencimento venc on evenc.cod_venc = venc.cod_venc
		group by evenc.matr
    ) as saldo on emp.matr = saldo.matr
order by emp.nome;

-- try 13:
-- descontos

select
	edes.matr,
    sum(des.valor) desconto
from emp_desc edes
	left join desconto des on edes.cod_desc = des.cod_desc
group by edes.matr;

select 
	emp.nome,
    coalesce(desconto.desconto, 0) as desconto
from empregado emp 
	left join (
		select
			edes.matr,
			sum(des.valor) desconto
		from emp_desc edes
			left join desconto des on edes.cod_desc = des.cod_desc
		group by edes.matr
    ) as desconto on emp.matr = desconto.matr
order by emp.nome;

-- try 14
-- unindo as duas subqueries

select
	emp.nome,
    coalesce(saldo.saldo, 0) - coalesce(desconto.desconto, 0) salario
from empregado emp 
	left join (
		select 
			evenc.matr,
			sum(venc.valor) as saldo
		from emp_venc evenc
			left join vencimento venc on evenc.cod_venc = venc.cod_venc
		group by evenc.matr
    ) as saldo on emp.matr = saldo.matr
	left join (
		select
			edes.matr,
			sum(des.valor) desconto
		from emp_desc edes
			left join desconto des on edes.cod_desc = des.cod_desc
		group by edes.matr
    ) as desconto on emp.matr = desconto.matr
order by emp.nome;

-- try 15:
-- resposta final

with dados_salario as (
	select
		emp.lotacao_div emp_divisao,
		coalesce(saldo.saldo, 0) - coalesce(desconto.desconto, 0) salario
	from empregado emp 
		left join (
			select 
				evenc.matr,
				sum(venc.valor) as saldo
			from emp_venc evenc
				left join vencimento venc on evenc.cod_venc = venc.cod_venc
			group by evenc.matr
		) as saldo on emp.matr = saldo.matr
		left join (
			select
				edes.matr,
				sum(des.valor) desconto
			from emp_desc edes
				left join desconto des on edes.cod_desc = des.cod_desc
			group by edes.matr
		) as desconto on emp.matr = desconto.matr
)

select
	dep.nome as departamento,
    di.nome as divisao,
	round(avg(dados_salario.salario), 2) as media,
    round(max(dados_salario.salario), 2) as maior
from divisao di
	join departamento dep on di.cod_dep = dep.cod_dep
    join dados_salario on dados_salario.emp_divisao = di.cod_divisao
group by 1, 2
order by 3 desc;
    
/*
	For each department, show the department name, your divisions' name, with your respective average salary and the highest salary for each division.
	The result must be ordered in a descending way using the average salary.

	Tip: You can use the function COALESCE(check_expression, 0) to substitute some value null for zero;
	Furthermore, you also can use the function ROUND(value, 2) to show the values with 2 decimal places.
*/

-- 1, 6, 9, 12
-- 91, 92







