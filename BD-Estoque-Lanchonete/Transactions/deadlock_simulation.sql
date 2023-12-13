-- Iniciar Transação 1
BEGIN TRANSACTION;

-- Atualizar Produto 1
UPDATE Produto SET QuantidadeEstocada = QuantidadeEstocada - 10 WHERE Codigo = 1;

-- Aguardar um pouco (simulando processamento)

-- Tentar atualizar Produto 2 (com bloqueio)
UPDATE Produto SET QuantidadeEstocada = QuantidadeEstocada + 10 WHERE Codigo = 2;

COMMIT;


-- Iniciar Transação 2
BEGIN TRANSACTION;

-- Atualizar Produto 2
UPDATE Produto SET QuantidadeEstocada = QuantidadeEstocada - 5 WHERE Codigo = 2;

-- Aguardar um pouco (simulando processamento)

-- Tentar atualizar Produto 1 (com bloqueio)
UPDATE Produto SET QuantidadeEstocada = QuantidadeEstocada + 5 WHERE Codigo = 1;

COMMIT;