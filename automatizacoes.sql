create or replace function gerar_pagamento_sinistro ()
returns trigger
language plpgsql
as $$
begin 
        if 
            new.status_sinistro = 'aprovado' and old.status_sinistro <> 'aprovado' then
            insert into pagamentos(fk_sinistro,valor_pagamento,data_pagamento)
                                values(new.id_sinistro, new.valor_prejuizo,now());
    
        end if;
        return new;
end;
$$;     

create or replace trigger automatizando_saldo
after update on sinistros
for each row
execute function gerar_pagamento_sinistro ();
