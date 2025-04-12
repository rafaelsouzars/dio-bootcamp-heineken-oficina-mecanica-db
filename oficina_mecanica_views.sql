USE oficina_mecanica;

-- Essa view retorna o número de ordens de serviço atendidas por cada funcionário que atua como mecânico.
CREATE VIEW vw_ordens_por_funcionario AS
SELECT f.id_funcionario, f.nome, COUNT(os.id_ordem_servico) AS total_ordens
FROM tbl_funcionarios f
JOIN tbl_mecanicos m ON f.id_funcionario = m.id_funcionario
JOIN tbl_equipes e ON m.id_mecanico = e.id_mecanico
JOIN tbl_ordem_servico os ON e.id_ordem_servico = os.id_ordem_servico
GROUP BY f.id_funcionario, f.nome;

-- Esta view lista os clientes que possuem um número significativo de ordens de serviço (mais de 5, por exemplo). Se precisar ajustar o filtro, basta mudar 
CREATE VIEW vw_clientes_frequentes AS
SELECT c.id_cliente, c.nome, COUNT(os.id_ordem_servico) AS total_ordens
FROM tbl_clientes c
JOIN tbl_ordem_servico os ON c.id_cliente = os.id_cliente
GROUP BY c.id_cliente, c.nome
HAVING COUNT(os.id_ordem_servico) > 1
ORDER BY total_ordens DESC;

-- Aqui identificamos os veículos que aparecem com mais frequência nas ordens de serviço.
CREATE VIEW vw_veiculos_mais_recorrentes AS
SELECT v.marca, v.modelo, COUNT(cv.id_cliente) AS total_visitas
FROM tbl_veiculos v
JOIN tbl_clientes_veiculos cv ON v.id_veiculo = cv.id_veiculo
JOIN tbl_ordem_servico os ON cv.id_cliente = os.id_cliente
GROUP BY v.marca, v.modelo
ORDER BY total_visitas DESC;

-- Esta view lista as peças mais trocadas na oficina, ordenadas da mais utilizada para a menos utilizada
CREATE VIEW vw_pecas_mais_trocadas AS
SELECT p.codigo, p.descricao, COUNT(osp.id_peca) AS total_trocas
FROM tbl_pecas p
JOIN tbl_ordem_servico_pecas osp ON p.id_peca = osp.id_peca
GROUP BY p.codigo, p.descricao
ORDER BY total_trocas DESC;

-- Essa view retorna o número de ordens de serviço por especialidade.
CREATE VIEW vw_ordens_por_especialidade AS
SELECT s.id_servico, s.especialidade, COUNT(oss.id_ordem_servico) AS total_ordens
FROM tbl_servicos s
JOIN tbl_ordem_servico_servicos oss ON s.id_servico = oss.id_servico
GROUP BY s.id_servico, s.especialidade;

-- Essa view retorna os veiculos e seus respectivos donos (clientes)
CREATE VIEW vw_modelo_por_cliente AS
SELECT c.nome, c.CPF, v.modelo, cv.placa
FROM tbl_clientes c
JOIN tbl_clientes_veiculos cv ON c.id_cliente = cv.id_cliente
JOIN tbl_veiculos v ON cv.id_veiculo = v.id_veiculo
ORDER BY c.nome; 

-- Essa view retorna a quantidade de veículos por cliente
CREATE VIEW vw_veiculo_por_cliente AS
SELECT c.id_cliente, c.nome, c.CPF, COUNT(cv.id_veiculo) AS quantidade_veiculos
FROM tbl_clientes c
JOIN tbl_clientes_veiculos cv ON c.id_cliente = cv.id_cliente
JOIN tbl_veiculos v ON cv.id_veiculo = v.id_veiculo
GROUP BY c.nome, c.CPF;

