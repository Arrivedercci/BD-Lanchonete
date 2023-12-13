1- Funcionario com maior volume de vendas

SELECT
    f.CPF AS CPF_Funcionario,
    f.Nome AS Nome_Funcionario,
    SUM(t.ValorTotal) AS TotalVendido
FROM
    Transacao t
JOIN
    Funcionario f ON t.Funcionario_CPF = f.CPF
GROUP BY
    f.CPF, f.Nome
ORDER BY
    TotalVendido DESC;


2- Dia com maior volume de vendas

SELECT
    Data,
    SUM(ValorTotal) AS TotalVendas
FROM
    Transacao
GROUP BY
    Data
ORDER BY
    TotalVendas DESC
LIMIT 1;

3- Produto com maior volume de vendas

SELECT
    p.Codigo AS Codigo_Produto,
    p.Nome AS Nome_Produto,
    SUM(tp.Quantidade) AS QuantidadeTotalVendida
FROM
    Transacao_Produto tp
JOIN
    Produto p ON tp.Produto_Codigo = p.Codigo
GROUP BY
    p.Codigo, p.Nome
ORDER BY
    QuantidadeTotalVendida DESC
LIMIT 1;

4- Fornecedor cujo produto teve maior volume de vendas

SELECT
    f.CNPJ AS CNPJ_Fornecedor,
    f.Nome AS Nome_Fornecedor,
    SUM(tp.Quantidade) AS QuantidadeTotalVendida
FROM
    Fornecedor f
JOIN
    Produto p ON f.CNPJ = p.Fornecedor_CNPJ
JOIN
    Transacao_Produto tp ON p.Codigo = tp.Produto_Codigo
GROUP BY
    f.CNPJ, f.Nome
ORDER BY
    QuantidadeTotalVendida DESC
LIMIT 1;

5- Combo com maior volume de vendas

SELECT
    c.Codigo_Produto AS Codigo_Combo,
    p.Nome AS Nome_Combo,
    SUM(tp.Quantidade) AS QuantidadeTotalVendida
FROM
    Combo c
JOIN
    Transacao_Produto tp ON c.Codigo_Produto = tp.Produto_Codigo
JOIN
    Produto p ON c.Codigo_Produto = p.Codigo
GROUP BY
    c.Codigo_Produto, p.Nome
ORDER BY
    QuantidadeTotalVendida DESC
LIMIT 1;


