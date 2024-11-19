-- Qual é o departamento que mais contrata?
select dp.department_name as departamentos, count(*) as qtd_contratados
from employees as ep
join departments as dp 
on ep.department_id = dp.department_id
group by departamentos
order by qtd_contratados desc;

-- Qual é o salário médio por departamento? 
select dp.department_name as departamentos, avg(ep.salary) as média_salarial
from employees as ep
join departments as dp 
on ep.department_id = dp.department_id
group by departamentos
order by média_salarial desc;

-- Qual é o departamento que mais aprova pedidos de férias?

select dp.department_name as departamento , count(vc.vacation_id) as qtd_ferias 
from  vacations as vc
join employees as em
on em.employee_id = vc.employee_id
join departments as dp
on dp.department_id = em.department_id
where vc.status = "Approved"
group by departamento 
order by qtd_ferias desc;

-- Qual é o total de funcionários ativos atualmente?
select count(*) 
from employees 
where 
	status = "Active";

-- Quantos funcionários foram contratados em cada ano?
select year(date_of_joining) as ano, count(*) as qtd_contratados 
from employees
group by ano
order by qtd_contratados desc;

-- Há um diferença muito grande no salario se tratando do gênero?
select gender, avg(salary) média_salarial 
from employees
group by gender;

-- Quais os funcionário que recebem mais(area de trabalho)?
select ep.first_name as nome, ep.salary as salario, ps.position_name as profissao, dp.department_name as departamento
from employees as ep 
join positions as ps 
on ep.position_id = ps.position_id
join departments as dp 
on ps.department_id = dp.department_id
order by salario desc limit 5;






