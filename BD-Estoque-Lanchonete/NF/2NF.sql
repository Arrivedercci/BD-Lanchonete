A Segunda Forma Normal (2NF) é uma extensão da Primeira Forma Normal (1NF) e elimina a redundância de dados, que pode causar problemas de inserção,
atualização e exclusão. Para uma tabela estar na 2NF, ela deve:

1. Estar na 1NF.
2. Não ter dependências parciais. Ou seja, todos os atributos não-chave devem depender completamente da chave primária.


Analisando as tabelas, todas estão na 2NF. 
Cada tabela tem uma chave primária única e todos os outros atributos na tabela dependem dessa chave primária. 
Não há dependências parciais, onde um atributo depende apenas de uma parte da chave primária.

Por exemplo, na tabela Produto, a chave primária é Codigo, e todos os outros atributos (Nome, ValorCalorico, QuantidadeEstocada, Fornecedor_CNPJ)
dependem do Codigo. Portanto, a tabela Produto está na 2NF.

Da mesma forma, todas as outras tabelas (Fornecedor, Combo, Sobremesa, Bebida, Lanche, Funcionario, Transacao, Transacao_Produto) também estão na 2NF.