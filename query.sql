INSERT INTO usuario (nome, email, senha) VALUES
('Caihan Nery)', 'caihan@gmail.com', '12345');

INSERT INTO fornecedor (nome, cnpj_cpf, telefone, email) VALUES
('Têxtil Sorocaba LTDA', '12345678000199', '(15)3333-1111', 'contato@textil.com');
INSERT INTO produto 
(nome, codigo, preco_custo, preco_venda, quantidade, validade, estoque_minimo, id_fornecedor)
VALUES 
('Camiseta Polo Masculina', 'POLO123', 35.90, 69.90, 50, '2025-12-31', 10, 1);
INSERT INTO movimentacao 
(tipo, data, quantidade, id_produto, id_usuario)
VALUES 
('entrada', '2025-10-23', 20, 1, 1);
