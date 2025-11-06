-- 1. Tabela USUARIO
CREATE TABLE USUARIO (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    cargo VARCHAR(100)
);

-- 2. Tabela MOVIMENTACAO
CREATE TABLE MOVIMENTACAO (
    id_movimentacao INT PRIMARY KEY AUTO_INCREMENT,
    entrada DATETIME DEFAULT CURRENT_TIMESTAMP,
    saida DATETIME,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);
-- 3. Tabela FORNECEDOR
CREATE TABLE FORNECEDOR (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    endereco TEXT,
    cnpj VARCHAR(14) NOT NULL UNIQUE,
    id_usuario INT,
    id_movimentacao INT,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario),
    FOREIGN KEY (id_movimentacao) REFERENCES MOVIMENTACAO(id_movimentacao)
);
-- 4. Tabela PRODUTOS
CREATE TABLE PRODUTOS (
    id_produtos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2),
    quantidade INT,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR(id_fornecedor)
);
