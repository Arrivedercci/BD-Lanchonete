-- Índices para a consulta 1 (Funcionario com maior volume de vendas)
CREATE INDEX idx_transacao_funcionario_cpf ON Transacao(Funcionario_CPF);
CREATE INDEX idx_funcionario_cpf ON Funcionario(CPF);
CREATE INDEX idx_transacao_valor_total ON Transacao(ValorTotal);

-- Índices para a consulta 2 (Dia com maior volume de vendas)
CREATE INDEX idx_transacao_data ON Transacao(Data);
CREATE INDEX idx_transacao_valor_total ON Transacao(ValorTotal);

-- Índices para a consulta 3 (Produto com maior volume de vendas)
CREATE INDEX idx_transacao_produto_produto_codigo ON Transacao_Produto(Produto_Codigo);
CREATE INDEX idx_produto_codigo ON Produto(Codigo);
CREATE INDEX idx_transacao_produto_quantidade ON Transacao_Produto(Quantidade);

-- Índices para a consulta 4 (Fornecedor cujo produto teve maior volume de vendas)
CREATE INDEX idx_fornecedor_cnpj ON Fornecedor(CNPJ);
CREATE INDEX idx_produto_fornecedor_cnpj ON Produto(Fornecedor_CNPJ);
CREATE INDEX idx_transacao_produto_produto_codigo ON Transacao_Produto(Produto_Codigo);
CREATE INDEX idx_transacao_produto_quantidade ON Transacao_Produto(Quantidade);

-- Índices para a consulta 5 (Combo com maior volume de vendas)
CREATE INDEX idx_combo_codigo_produto ON Combo(Codigo_Produto);
CREATE INDEX idx_transacao_produto_produto_codigo ON Transacao_Produto(Produto_Codigo);
CREATE INDEX idx_produto_codigo ON Produto(Codigo);
CREATE INDEX idx_transacao_produto_quantidade ON Transacao_Produto(Quantidade);



1 - Funcionário com maior volume de vendas:

1.1 - Um índice na coluna Funcionario_CPF da tabela Transacao pode acelerar a junção com a tabela Funcionario.
1.2 - Um índice na coluna CPF da tabela Funcionario também pode ajudar na junção.
1.3 - Um índice na coluna ValorTotal da tabela Transacao pode acelerar a agregação.

2 - Dia com maior volume de vendas:

2.1 - Um índice na coluna Data da tabela Transacao pode acelerar a agregação e a ordenação.

3 - Produto com maior volume de vendas:

3.1 - Um índice na coluna Produto_Codigo da tabela Transacao_Produto pode acelerar a junção com a tabela Produto.
3.2 - Um índice na coluna Codigo da tabela Produto também pode ajudar na junção.
3.3 - Um índice na coluna Quantidade da tabela Transacao_Produto pode acelerar a agregação.

4 - Fornecedor cujo produto teve maior volume de vendas:

4.1 - Índices nas colunas CNPJ da tabela Fornecedor e Fornecedor_CNPJ da tabela Produto podem acelerar a junção entre essas tabelas.
4.2 - Um índice na coluna Produto_Codigo da tabela Transacao_Produto pode acelerar a junção com a tabela Produto.
4.3 - Um índice na coluna Quantidade da tabela Transacao_Produto pode acelerar a agregação.

5 - Combo com maior volume de vendas:

5.1 - Índices nas colunas Codigo_Produto das tabelas Combo e Transacao_Produto podem acelerar a junção entre essas tabelas.
5.2 - Um índice na coluna Codigo da tabela Produto pode acelerar a junção com a tabela Combo.
5.3 - Um índice na coluna Quantidade da tabela Transacao_Produto pode acelerar a agregação.