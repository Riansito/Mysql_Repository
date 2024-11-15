-- Qual é o total gasto por cada cliente? Qual deles gastam mais?
select cl.Nome as clientes, sum(ipd.preco_unitario*ipd.quantidade) as preco_compras
from itens_pedido as ipd
join pedidos as pd
on ipd.pedido_id = pd.pedido_id 
join clientes as cl
on pd.cliente_id = cl.cliente_id
where 
	pd.status = "Concluído"
group by clientes order by preco_compras desc;  


-- Quais são os produtos mais vendidos?
select prd.nome as produtos, count(*) as quantidades_vendidos
from produtos as prd
join itens_pedido as ipd  
on ipd.produto_id =  prd.produto_id
group by produtos order by quantidades_vendidos desc;

-- Qual é a receita total por categoria de produto?
select ct.nome as categoria, sum(ipd.preco_unitario*ipd.quantidade) as faturamento_ct
from itens_pedido as ipd 
join produtos as pd
on ipd.produto_id = pd.produto_id 
join categorias as ct
on ct.categoria_id = pd.categoria_id 
group by categoria order by faturamento_ct desc;

-- Qual é o método de pagamento mais utilizado?
select metodo_pagamento, count(*) as qted_por_pagamentos 
from pagamentos 
group by metodo_pagamento
order by qted_por_pagamentos desc;

-- Qual é o método de pagamento que mais fatura?
select metodo_pagamento, count(*) as qted_por_pagamentos 
from pagamentos 
group by metodo_pagamento
order by qted_por_pagamentos desc;

-- Qual é o valor total das compras em cada mês?
select month(data_pagamento) as mes, sum(valor) as valor_mes
from pagamentos
group by mes
order by valor_mes desc;


-- Quantos clientes foram cadastrados em cada mês?
select month(data_cadastro) as mes_cadastro, count(*) as qted_cadastros_mes 
from clientes
group by mes_cadastro 
order by qted_cadastros_mes desc;
 
 -- Quais produtos estão com estoque baixo ?
select nome, estoque from produtos 
order by estoque 
limit 5;

-- Qual é o método de pagamento mais rápido (com menor tempo de aprovação)?
select pg.metodo_pagamento as metodo_pagamento , avg(DATEDIFF(pg.data_pagamento, pd.data_pedido)) as media_
from pagamentos as pg
join pedidos as pd
on pd.pedido_id = pg.pedido_id 
where 
	pg.status = 'Concluído' 
	and pd.status = 'Concluído'
	and pd.data_pedido is not null
	and pg.data_pagamento is not null
	and pg.data_pagamento >= pd.data_pedido
group by metodo_pagamento order by media_;




