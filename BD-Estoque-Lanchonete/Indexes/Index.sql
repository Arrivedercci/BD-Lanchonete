-- Indexação para a tabela Produto
CREATE INDEX idx_Produto_Fornecedor_CNPJ ON Produto (Fornecedor_CNPJ);

-- Indexação para a tabela Combo
CREATE INDEX idx_Combo_Codigo_Produto ON Combo (Codigo_Produto);

-- Indexação para a tabela Sobremesa
CREATE INDEX idx_Sobremesa_Codigo_Produto ON Sobremesa (Codigo_Produto);

-- Indexação para a tabela Bebida
CREATE INDEX idx_Bebida_Codigo_Produto ON Bebida (Codigo_Produto);

-- Indexação para a tabela Lanche
CREATE INDEX idx_Lanche_Codigo_Produto ON Lanche (Codigo_Produto);

-- Indexação para a tabela Transacao
CREATE INDEX idx_Transacao_Funcionario_CPF ON Transacao (Funcionario_CPF);

-- Indexação para a tabela Transacao_Produto
CREATE INDEX idx_Transacao_Produto_Transacao_Codigo ON Transacao_Produto (Transacao_Codigo);
CREATE INDEX idx_Transacao_Produto_Produto_Codigo ON Transacao_Produto (Produto_Codigo);