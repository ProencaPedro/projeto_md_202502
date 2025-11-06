--read
SELECT 
    m.id_movimentaçao,
    u.nome AS usuario,
    p.nome AS produto,
    f.nome AS fornecedor,
    m.tipo,
    m.data,
    m.quantidade
FROM 
    movimentaçao m
INNER JOIN usuario u
    ON m.id_usuario = u.id_usuario
INNER JOIN produto p
    ON m.id_produto = p.id_produto
INNER JOIN fornecedor f
    ON p.id_fornecedor = f.id_fornecedor
ORDER BY m.data DESC;

--update
UPDATE produto p
INNER JOIN fornecedor f
    ON p.id_fornecedor = f.id_fornecedor
SET p.preço_venda = p.preço_venda * 1.10
WHERE f.nome = 'Textil Sorocaba LTDA';

--select
SELECT 
    p.nome AS produto,
    f.nome AS fornecedor,
    SUM(m.quantidade) AS total_saida
FROM 
    movimentaçao m
INNER JOIN produto p
    ON m.id_produto = p.id_produto
INNER JOIN fornecedor f
    ON p.id_fornecedor = f.id_fornecedor
WHERE m.tipo = 'saida'
GROUP BY p.id_produto, f.nome
HAVING total_saida > 100
ORDER BY total_saida DESC;
