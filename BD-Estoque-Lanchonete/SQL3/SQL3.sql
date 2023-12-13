1-

-- Tabela Pai
CREATE TABLE Funcionario (
  CPF varchar(11) PRIMARY KEY,
  Nome varchar(255),
  -- outras colunas comuns a todos os funcionários
);

-- Tabela Filha 1 (Vendedor)
CREATE TABLE Vendedor (
  Matricula integer PRIMARY KEY,
  FOREIGN KEY (CPF) REFERENCES Funcionario(CPF),
  -- outras colunas específicas de vendedores
);

-- Tabela Filha 2 (Gerente)
CREATE TABLE Gerente (
  Departamento varchar(255),
  FOREIGN KEY (CPF) REFERENCES Funcionario(CPF),
  -- outras colunas específicas de gerentes
);

-- Função para calcular o total vendido por um funcionário
CREATE PROCEDURE getTotalVendido(IN cpf_funcionario varchar(11))
BEGIN
  SELECT COALESCE(SUM(t.ValorTotal), 0) AS TotalVendido
  FROM Transacao t
  WHERE t.Funcionario_CPF = cpf_funcionario;
END

-- Consulta utilizando herança e função
SELECT
    f.CPF AS CPF_Funcionario,
    f.Nome AS Nome_Funcionario,
    getTotalVendido(f.CPF) AS TotalVendido
FROM
    Funcionario f
ORDER BY
    TotalVendido DESC;

2-
-- Tabela Pai
CREATE TABLE Transacao (
  ID serial PRIMARY KEY,
  Data date,
  ValorTotal numeric
  -- outras colunas comuns a todas as transações
);

-- Tabela Filha 1 (Venda)
CREATE TABLE Venda (
  ItensVendidos integer,
  FOREIGN KEY (ID) REFERENCES Transacao(ID)
  -- outras colunas específicas de vendas
);

-- Tabela Filha 2 (Devolucao)
CREATE TABLE Devolucao (
  ItensDevolvidos integer,
  FOREIGN KEY (ID) REFERENCES Transacao(ID)
  -- outras colunas específicas de devoluções
);

-- Função para obter a data da transação com o maior total de vendas
CREATE PROCEDURE getDataMaiorTotalVendas()
BEGIN
  SELECT Data
  FROM (
    SELECT Data, SUM(ValorTotal) AS TotalVendas
    FROM Transacao
    GROUP BY Data
    ORDER BY TotalVendas DESC
    LIMIT 1
  ) AS subquery;
END 

-- Consulta utilizando herança e função
SELECT
    getDataMaiorTotalVendas() AS DataMaiorTotalVendas,
    SUM(ValorTotal) AS TotalVendas
FROM
    Transacao;

3- 
-- Tabela Pai
CREATE TABLE Produto (
  Codigo serial PRIMARY KEY,
  Nome varchar(255),
  -- outras colunas comuns a todos os produtos
);

-- Tabela Filha 1 (ProdutoVendido)
CREATE TABLE ProdutoVendido (
  FOREIGN KEY (Codigo) REFERENCES Produto(Codigo),
  -- outras colunas específicas de produtos vendidos
);

-- Tabela Filha 2 (ProdutoDevolvido)
CREATE TABLE ProdutoDevolvido (
  FOREIGN KEY (Codigo) REFERENCES Produto(Codigo),
  -- outras colunas específicas de produtos devolvidos
);

-- Tabela de Associação entre Transacao e Produto
CREATE TABLE Transacao_Produto (
  Transacao_ID integer REFERENCES Transacao(ID),
  Produto_Codigo integer REFERENCES Produto(Codigo),
  Quantidade integer
  -- outras colunas relacionadas à associação entre transações e produtos
);

-- Função para obter o produto mais vendido
CREATE PROCEDURE getProdutoMaisVendido()
BEGIN
  SELECT
    p.Codigo AS Codigo_Produto,
    p.Nome AS Nome_Produto,
    COALESCE(SUM(tp.Quantidade), 0) AS QuantidadeTotalVendida
  FROM
    Produto p
  LEFT JOIN
    Transacao_Produto tp ON tp.Produto_Codigo = p.Codigo
  GROUP BY
    p.Codigo, p.Nome
  ORDER BY
    QuantidadeTotalVendida DESC
  LIMIT 1;
END

-- Consulta utilizando herança e função
SELECT * FROM getProdutoMaisVendido();

4-
-- Tabela Pai
CREATE TABLE Fornecedor (
  CNPJ varchar(14) PRIMARY KEY,
  Nome varchar(255),
  -- outras colunas comuns a todos os fornecedores
);

-- Tabela Filha 1 (FornecedorVendido)
CREATE TABLE FornecedorVendido (
  FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ),
  -- outras colunas específicas de fornecedores vendidos
);

-- Tabela Filha 2 (FornecedorDevolvido)
CREATE TABLE FornecedorDevolvido (
  FOREIGN KEY (CNPJ) REFERENCES Fornecedor(CNPJ),
  -- outras colunas específicas de fornecedores devolvidos
);

-- Tabela de Associação entre Transacao_Produto e Produto
CREATE TABLE Transacao_Produto (
  Transacao_ID integer REFERENCES Transacao(ID),
  Produto_Codigo integer REFERENCES Produto(Codigo),
  Quantidade integer
  -- outras colunas relacionadas à associação entre transações e produtos
);

-- Função para obter o fornecedor com mais produtos vendidos
CREATE PROCEDURE getFornecedorMaisVendido()
BEGIN
  SELECT
    f.CNPJ AS CNPJ_Fornecedor,
    f.Nome AS Nome_Fornecedor,
    COALESCE(SUM(tp.Quantidade), 0) AS QuantidadeTotalVendida
  FROM
    Fornecedor f
  LEFT JOIN
    Produto p ON f.CNPJ = p.Fornecedor_CNPJ
  LEFT JOIN
    Transacao_Produto tp ON p.Codigo = tp.Produto_Codigo
  GROUP BY
    f.CNPJ, f.Nome
  ORDER BY
    QuantidadeTotalVendida DESC
  LIMIT 1;
END

-- Consulta utilizando herança e função
SELECT * FROM getFornecedorMaisVendido();

5-
-- Tabela Pai
CREATE TABLE Produto (
  Codigo serial PRIMARY KEY,
  Nome varchar(255),
  -- outras colunas comuns a todos os produtos
);

-- Tabela Filha 1 (Combo)
CREATE TABLE Combo (
  Codigo_Produto integer PRIMARY KEY,
  -- outras colunas específicas de combos
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);

-- Tabela de Associação entre Transacao_Produto e Produto
CREATE TABLE Transacao_Produto (
  Transacao_ID integer REFERENCES Transacao(ID),
  Produto_Codigo integer REFERENCES Produto(Codigo),
  Quantidade integer
  -- outras colunas relacionadas à associação entre transações e produtos
);

-- Função para obter o combo mais vendido
CREATE PROCEDURE getComboMaisVendido()
BEGIN
  SELECT
    c.Codigo_Produto AS Codigo_Combo,
    p.Nome AS Nome_Combo,
    COALESCE(SUM(tp.Quantidade), 0) AS QuantidadeTotalVendida
  FROM
    Combo c
  LEFT JOIN
    Transacao_Produto tp ON c.Codigo_Produto = tp.Produto_Codigo
  LEFT JOIN
    Produto p ON c.Codigo_Produto = p.Codigo
  GROUP BY
    c.Codigo_Produto, p.Nome
  ORDER BY
    QuantidadeTotalVendida DESC
  LIMIT 1;
END;

-- Consulta utilizando herança e função
SELECT * FROM getComboMaisVendido();
