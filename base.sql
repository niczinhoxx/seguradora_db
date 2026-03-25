create table clientes (
id_cliente serial primary key,
nome varchar(70) not null,
cpf  char(11) unique,
email varchar(60) unique    
);

create table apolices (
id_apolice serial primary key,
fk_cliente int references clientes (id_cliente),
tipo_seguro text check ( tipo_seguro in ('Automotivo','Vida','Viagem','Empresarial','Celular','Residencial')) default 'Automotivo',
valor_seguro numeric(12,2),
data_inicio date default current_timestamp,
data_fim date    
);

create table sinistros (
id_sinistro serial primary key,
fk_apolice int references apolices (id_apolice),
descricao text,
valor_prejuizo numeric(12,2),
status_sinistro text check (status_sinistro in ('pendente','aprovado','negado')) default 'pendente',
data_ocorrencia date default current_date
);

create table pagamentos (
id_pagamento serial primary key,
fk_sinistro int references sinistros (id_sinistro),
valor_pagamento numeric(12,2),
data_pagamento date default current_date    
);

create table processos (
id_processo serial primary key,
fkk_sinistros int references sinistros (id_sinistro),
status_processos varchar(30),
valor_causa numeric(12,2)    
);