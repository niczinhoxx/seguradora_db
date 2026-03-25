-- Quanto a seguradora já pagou
select sum(valor_pagamento) from pagamentos


-- Total de prejuízo por cliente
select nome,sum(ap.valor_seguro)as total_segurado , sum(si.valor_prejuizo) total_prejuizo,
 sum(ap.valor_seguro) - sum(si.valor_prejuizo) as saldo_restante
from clientes cl  
join apolices ap on ap.fk_cliente = cl.id_cliente
join sinistros si on si.fk_apolice = ap.id_apolice
group by cl.nome


-- Quem deu mais prejuízo
select nome,sum(ap.valor_seguro)as total_segurado , sum(si.valor_prejuizo) total_prejuizo,
 sum(ap.valor_seguro) - sum(si.valor_prejuizo) as saldo_restante
from clientes cl  
join apolices ap on ap.fk_cliente = cl.id_cliente
join sinistros si on si.fk_apolice = ap.id_apolice
group by cl.nome
order by total_prejuizo desc;

-- Sinistros sem pagamento
select si.id_sinistro from sinistros si
left join pagamentos pa on pa.fk_sinistro = si.id_sinistro
where pa.valor_pagamento is null;


