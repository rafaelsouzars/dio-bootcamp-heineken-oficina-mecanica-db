CREATE DATABASE IF NOT EXISTS oficina_mecanica;
USE oficina_mecanica;

-- Tabela para armazenar CEPs e reduzir redundância de endereços
CREATE TABLE tbl_ceps (
    id_cep INT AUTO_INCREMENT PRIMARY KEY,
    cep VARCHAR(9),
    endereco VARCHAR(200)
);

CREATE TABLE tbl_clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    id_cep INT,
    email VARCHAR(100),
    numero_celular VARCHAR(15),
    CONSTRAINT fk_cep_cliente FOREIGN KEY (id_cep) REFERENCES tbl_ceps(id_cep)
);

CREATE TABLE tbl_funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    codigo_funcionario VARCHAR(50),
    nome VARCHAR(100),
    cpf VARCHAR(14),
    id_cep INT,
    CONSTRAINT fk_cep_funcionario FOREIGN KEY (id_cep) REFERENCES tbl_ceps(id_cep)
);

CREATE TABLE tbl_servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    codigo_servico VARCHAR(50),
    descricao VARCHAR(200),
    especialidade VARCHAR(100),
    valor DECIMAL(10, 2)
);

CREATE TABLE tbl_pecas (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50),
    codigo_fabricante VARCHAR(50),
    barcode VARCHAR(50),
    descricao VARCHAR(200)
);

CREATE TABLE tbl_mecanicos (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    especialidade VARCHAR(100),
    id_funcionario INT,
    CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES tbl_funcionarios(id_funcionario)
);

CREATE TABLE tbl_veiculos (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    cor VARCHAR(20)
);

CREATE TABLE tbl_ordem_servico (
    id_ordem_servico INT AUTO_INCREMENT PRIMARY KEY,
    numero_os VARCHAR(50),
    data_emissao DATE,
    valor DECIMAL(10, 2),
    status ENUM('Pendente','Aprovada','Em Andamento','Concluído','Fechada','Cancelada') NOT NULL DEFAULT 'Pendente',
    id_cliente INT,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente)
);

CREATE TABLE tbl_equipes (
    id_ordem_servico INT,
    id_mecanico INT,
    PRIMARY KEY (id_ordem_servico, id_mecanico),
    CONSTRAINT fk_ordem_servico FOREIGN KEY (id_ordem_servico) REFERENCES tbl_ordem_servico(id_ordem_servico),
    CONSTRAINT fk_mecanico FOREIGN KEY (id_mecanico) REFERENCES tbl_mecanicos(id_mecanico)
);

CREATE TABLE tbl_clientes_veiculos (
    id_cliente INT,
    id_veiculo INT,
    placa VARCHAR(10),
    PRIMARY KEY (id_cliente, id_veiculo),
    CONSTRAINT fk_cliente_cv FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente),
    CONSTRAINT fk_veiculo_cv FOREIGN KEY (id_veiculo) REFERENCES tbl_veiculos(id_veiculo)
);

CREATE TABLE tbl_ordem_servico_pecas (
    id_ordem_servico INT,
    id_peca INT,
    PRIMARY KEY (id_ordem_servico, id_peca),
    CONSTRAINT fk_ordem_servico_op FOREIGN KEY (id_ordem_servico) REFERENCES tbl_ordem_servico(id_ordem_servico),
    CONSTRAINT fk_peca_op FOREIGN KEY (id_peca) REFERENCES tbl_pecas(id_peca)
);

CREATE TABLE tbl_ordem_servico_servicos (
    id_ordem_servico INT,
    id_servico INT,
    PRIMARY KEY (id_ordem_servico, id_servico),
    CONSTRAINT fk_ordem_servico_os FOREIGN KEY (id_ordem_servico) REFERENCES tbl_ordem_servico(id_ordem_servico),
    CONSTRAINT fk_servico_os FOREIGN KEY (id_servico) REFERENCES tbl_servicos(id_servico)
);




