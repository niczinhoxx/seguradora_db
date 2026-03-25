-- relatório de sinistros
create or replace view relatorio_sinistros as
select cl.nome,ap.tipo_seguro,si.status_sinistro,ap.valor_seguro from clientes cl
join apolices ap on ap.fk_cliente = cl.id_cliente
join sinistros si on si.fk_apolice = ap.id_apolice;

select * from relatorio_sinistros;


----- Total de prejuízo por cliente
create or replace view total_de_prejuizo as
select nome,sum(ap.valor_seguro)as total_segurado , sum(si.valor_prejuizo) total_prejuizo,
 sum(ap.valor_seguro) - sum(si.valor_prejuizo) as saldo_restante
from clientes cl  
join apolices ap on ap.fk_cliente = cl.id_cliente
join sinistros si on si.fk_apolice = ap.id_apolice
group by cl.nome

select * from total_de_prejuizo;




-- Sinistros aprovados que não têm pagamento
select si.id_sinistro,si.status_sinistro,pa.valor_pagamento from sinistros si  
left join pagamentos pa on pa.fk_sinistro = si.id_sinistro
where pa.valor_pagamento is null
and si.status_sinistro ='aprovado';