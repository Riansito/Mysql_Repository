-- Qual é o saldo total de todas as contas?
select sum(balance) as total from accounts;

-- Quantas transações foram realizadas por cada conta?
select acc.account_name as Conta, count(*) as total_transacoes
from transactions as trc 
join accounts as acc
on acc.id = trc.account_id
group by Conta 
order by total_transacoes desc;

-- qual cliente gasta mais?
select us.name as Nome, acc.account_name as Conta, sum(trc.amount) as total_despesas
from transactions as trc 
join accounts as acc
on acc.id = trc.account_id
join users as us
on acc.id = us.id
where trc.transaction_type = "Expense"
group by Nome, Conta
order by total_despesas;

-- Qual é o total de despesas e receitas por categoria?
select ct.category_name as Categoria, 
sum(case when trc.amount >= 0 then trc.amount else 0 end) as receita,
sum(case when trc.amount < 0 then trc.amount else 0 end) as despesas
from transactions as trc
join categories as ct 
on trc.category_id = ct.id
group by Categoria 
order by receita desc;

-- Quais contas têm maior frequência de receitas do que de despesas?
select conta, A.receitas, A.despesas
from (select acc.account_name as Conta, 
sum(case when trc.amount >= 0 then 1 else 0 end) as receitas,
sum(case when trc.amount < 0 then 1 else 0 end) as despesas
from transactions as trc 
join accounts as acc 
on acc.id = trc.account_id
group by Conta) as A 
where A.receitas > A.despesas;

-- Existe algum padrão sazonal nos gastos ou receitas? 
select year(transaction_date) as Ano, month(transaction_date) as Mes, 
sum(case when amount >= 0 then amount else 0 end) as receita,
sum(case when amount < 0 then amount else 0 end) as despesas
from transactions
group by Ano, Mes; 








