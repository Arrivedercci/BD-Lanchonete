A Terceira Forma Normal (3NF) é uma extensão da Segunda Forma Normal (2NF) e visa eliminar a redundância de dados e a dependência transitiva.
Para uma tabela estar na 3NF, ela deve:


1. Estar na 2NF.
2. Não ter dependências transitivas. Ou seja, todos os atributos não-chave devem depender diretamente da chave primária,
   não através de outros atributos não-chave.


Analisando as tabelas, todas parecem estão na 3NF.
Cada tabela tem uma chave primária única e todos os outros atributos na tabela dependem diretamente dessa chave primária.
Não há dependências transitivas, onde um atributo não-chave depende de outro atributo não-chave.


Por exemplo, na tabela Produto, a chave primária é Codigo, e todos os outros atributos (Nome, ValorCalorico, QuantidadeEstocada, Fornecedor_CNPJ)
dependem diretamente do Codigo. Portanto, a tabela Produto está na 3NF.

Da mesma forma, todas as outras tabelas (Fornecedor, Combo, Sobremesa, Bebida, Lanche, Funcionario, Transacao, Transacao_Produto) também estão na 3NF.