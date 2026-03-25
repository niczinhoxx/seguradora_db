INSERT INTO clientes (nome, cpf, email) VALUES
('Nicolas Silva', '12345678901', 'nicolas@gmail.com'),
('Maria Souza', '98765432100', 'maria@gmail.com'),
('João Pereira', '11122233344', 'joao@gmail.com'),
('Ana Costa', '55566677788', 'ana@gmail.com');


INSERT INTO apolices (fk_cliente, tipo_seguro, valor_seguro, data_inicio, data_fim) VALUES
(1, 'Automotivo', 50000.00, '2025-01-01', '2026-01-01'),
(2, 'Vida', 100000.00, '2025-02-01', '2026-02-01'),
(3, 'Residencial', 80000.00, '2025-03-01', '2026-03-01'),
(4, 'Celular', 5000.00, '2025-04-01', '2026-04-01');


INSERT INTO sinistros (fk_apolice, descricao, valor_prejuizo, status_sinistro, data_ocorrencia) VALUES
(1, 'Colisão leve no trânsito', 7000.00, 'aprovado', '2025-02-10'),
(2, 'Falecimento do segurado', 100000.00, 'aprovado', '2025-03-15'),
(3, 'Danos por enchente', 20000.00, 'pendente', '2025-04-20'),
(4, 'Roubo de celular', 3000.00, 'negado', '2025-05-05');


INSERT INTO pagamentos (fk_sinistro, valor_pagamento, data_pagamento) VALUES
(1, 7000.00, '2025-02-15'),
(2, 100000.00, '2025-03-20');


INSERT INTO processos (fkk_sinistros, status_processos, valor_causa) VALUES
(4, 'Em andamento', 3000.00),
(3, 'Aguardando análise', 20000.00);


