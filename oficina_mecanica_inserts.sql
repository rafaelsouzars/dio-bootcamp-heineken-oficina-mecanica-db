USE oficina_mecanica;

-- Inserindo endereços
INSERT INTO tbl_ceps (cep, endereco) VALUES 
('01001-000', 'Avenida Brasil, 1000'),
('02002-000', 'Rua das Oficinas, 500'),
('03003-000', 'Alameda Mecânica, 200');

-- Inserindo clientes
INSERT INTO tbl_clientes (nome, cpf, id_cep, email, numero_celular) VALUES 
('João Silva', '123.456.789-00', 1, 'joao@email.com', '99999-1111'),
('Maria Souza', '987.654.321-00', 2, 'maria@email.com', '88888-2222'),
('Carlos Almeida', '321.654.987-00', 3, 'carlos@email.com', '77777-3333'),
('Fernando Costa', '456.789.123-00', 1, 'fernando@email.com', '99999-4444'),
('Juliana Mendes', '789.123.456-00', 2, 'juliana@email.com', '88888-5555'),
('Ricardo Nunes', '147.258.369-00', 3, 'ricardo@email.com', '77777-6666'),
('Amanda Farias', '369.258.147-00', 1, 'amanda@email.com', '66666-7777'),
('Gustavo Lima', '258.369.147-00', 2, 'gustavo@email.com', '55555-8888'),
('Bruno Pereira', '111.222.333-01', 1, 'bruno@email.com', '99999-9999'),
('Carla Antunes', '222.333.444-02', 2, 'carla@email.com', '88888-8888'),
('Marcos Dantas', '333.444.555-03', 3, 'marcos@email.com', '77777-7777'),
('Simone Silva', '444.555.666-04', 1, 'simone@email.com', '66666-6666'),
('Felipe Nogueira', '555.666.777-05', 2, 'felipe@email.com', '55555-5555'),
('Isabela Rocha', '666.777.888-06', 3, 'isabela@email.com', '44444-4444'),
('Diego Mendes', '777.888.999-07', 1, 'diego@email.com', '33333-3333'),
('Tatiane Ramos', '888.999.000-08', 2, 'tatiane@email.com', '22222-2222'),
('Rodrigo Castro', '999.000.111-09', 3, 'rodrigo@email.com', '11111-1111'),
('Fernanda Lima', '000.111.222-10', 1, 'fernanda@email.com', '90000-0000');

-- Inserindo funcionários
INSERT INTO tbl_funcionarios (codigo_funcionario, nome, cpf, id_cep) VALUES 
('F001', 'Pedro Oliveira', '555.666.777-88', 1),
('F002', 'Ana Martins', '666.777.888-99', 2),
('F003', 'Lucas Ferreira', '777.888.999-00', 3),
('F004', 'Eduardo Santos', '111.222.333-44', 1),
('F005', 'Patricia Almeida', '222.333.444-55', 2),
('F006', 'Rodrigo Vasconcelos', '333.444.555-66', 3),
('F007', 'Camila Teixeira', '444.555.666-77', 1),
('F008', 'Thiago Lopes', '555.666.777-88', 2),
('F009', 'Gabriel Souza', '123.456.789-11', 1),
('F010', 'Vanessa Oliveira', '234.567.890-12', 2),
('F011', 'Ricardo Santos', '345.678.901-13', 3),
('F012', 'Luciana Almeida', '456.789.012-14', 1),
('F013', 'Gustavo Machado', '567.890.123-15', 2);

-- Inserindo mecânicos
INSERT INTO tbl_mecanicos (especialidade, id_funcionario) VALUES 
('Motor e Transmissão', 1),
('Freios e Suspensão', 2),
('Elétrica e Eletrônica', 3),
('Motor e Transmissão', 4),
('Freios e Suspensão', 5),
('Elétrica e Eletrônica', 6),
('Ar-condicionado e Refrigeração', 7),
('Funilaria e Pintura', 8),
('Funilaria', 9),
('Pintura', 10),
('Injeção Eletrônica', 11),
('Diagnóstico Avançado', 12),
('Troca de Suspensão', 13);

-- Inserindo serviços
INSERT INTO tbl_servicos (codigo_servico, descricao, especialidade, valor) VALUES 
('S001', 'Troca de óleo', 'Lubrificação', 150.00),
('S002', 'Revisão completa', 'Mecânica Geral', 500.00),
('S003', 'Alinhamento e balanceamento', 'Suspensão', 200.00),
('S004', 'Troca de pneus', 'Suspensão', 300.00),
('S005', 'Troca de bateria', 'Elétrica', 250.00),
('S006', 'Revisão de motor', 'Mecânica', 700.00),
('S007', 'Conserto de lanternagem', 'Funilaria', 800.00),
('S008', 'Troca de filtros', 'Lubrificação', 180.00),
('S009', 'Troca de óleo do câmbio', 'Lubrificação', 350.00),
('S010', 'Substituição de embreagem', 'Mecânica', 1200.00),
('S011', 'Reparo de sistema de direção', 'Suspensão', 950.00),
('S012', 'Higienização do ar-condicionado', 'Ar-condicionado', 220.00),
('S013', 'Revisão de freios', 'Freios', 500.00);

-- Inserindo peças
INSERT INTO tbl_pecas (codigo, codigo_fabricante, barcode, descricao) VALUES 
('P001', 'FAB123', '1234567890123', 'Filtro de óleo'),
('P002', 'FAB456', '9876543210987', 'Pastilha de freio'),
('P003', 'FAB789', '5678901234567', 'Bateria automotiva'),
('P004', 'FAB321', '1111111111111', 'Velas de ignição'),
('P005', 'FAB654', '2222222222222', 'Correia dentada'),
('P006', 'FAB987', '3333333333333', 'Radiador'),
('P007', 'FAB741', '4444444444444', 'Filtro de ar'),
('P008', 'FAB852', '5555555555555', 'Sensor de temperatura'),
('P009', 'FAB963', '6666666666666', 'Bomba de combustível'),
('P010', 'FAB741', '7777777777777', 'Rolamento de roda'),
('P011', 'FAB852', '8888888888888', 'Kit embreagem'),
('P012', 'FAB147', '9999999999999', 'Alternador'),
('P013', 'FAB369', '0000000000000', 'Amortecedor traseiro');

-- Inserindo veículos
INSERT INTO tbl_veiculos (marca, modelo, cor) VALUES 
('Toyota', 'Corolla', 'Prata'),
('Honda', 'Civic', 'Preto'),
('Ford', 'Fusion', 'Branco'),
('Chevrolet', 'Onix', 'Vermelho'),
('Volkswagen', 'Golf', 'Azul'),
('Hyundai', 'HB20', 'Cinza'),
('Fiat', 'Argo', 'Preto'),
('Renault', 'Duster', 'Branco'),
('Nissan', 'Sentra', 'Prata'),
('Jeep', 'Renegade', 'Cinza'),
('Mercedes', 'Classe C', 'Preto'),
('BMW', 'X1', 'Branco'),
('Peugeot', '208', 'Vermelho');

-- Relacionando clientes com veículos
INSERT INTO tbl_clientes_veiculos (id_cliente, id_veiculo, placa) VALUES 
(1, 1, 'ABC-1234'),
(2, 2, 'XYZ-5678'),
(3, 3, 'JKL-9101'),
(4, 4, 'DEF-2345'),
(5, 5, 'MNO-6789'),
(1, 2, 'PQR-9876'),
(2, 3, 'STU-5432'),
(3, 1, 'VWX-1357'),
(6, 6, 'AAA-1111'),
(7, 7, 'BBB-2222'),
(8, 8, 'CCC-3333'),
(9, 9, 'DDD-4444'),
(10, 10, 'EEE-5555');

-- Inserindo ordens de serviço
INSERT INTO tbl_ordem_servico (numero_os, data_emissao, valor, status, id_cliente) VALUES 
('OS001', '2025-04-10', 800.00, 'Em andamento', 1),
('OS002', '2025-04-09', 600.00, 'Concluída', 2),
('OS003', '2025-04-08', 300.00, 'Pendente', 3),
('OS004', '2025-04-07', 750.00, 'Concluída', 4),
('OS005', '2025-04-06', 650.00, 'Em andamento', 5),
('OS006', '2025-04-05', 400.00, 'Pendente', 1),
('OS007', '2025-04-04', 200.00, 'Cancelada', 2),
('OS008', '2025-04-03', 900.00, 'Concluída', 3),
('OS009', '2025-04-02', 1100.00, 'Em andamento', 6),
('OS010', '2025-04-01', 750.00, 'Pendente', 7),
('OS011', '2025-03-31', 900.00, 'Concluída', 8),
('OS012', '2025-03-30', 1300.00, 'Cancelada', 9),
('OS013', '2025-03-29', 450.00, 'Pendente', 10);

-- Relacionando ordens de serviço com mecânicos (equipes)
INSERT INTO tbl_equipes (id_ordem_servico, id_mecanico) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 6),
(12, 7),
(13, 8);

-- Associando peças às ordens de serviço
INSERT INTO tbl_ordem_servico_pecas (id_ordem_servico, id_peca) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 6),
(12, 7),
(13, 8);

-- Associando serviços às ordens de serviço
INSERT INTO tbl_ordem_servico_servicos (id_ordem_servico, id_servico) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 6),
(12, 7),
(13, 8);