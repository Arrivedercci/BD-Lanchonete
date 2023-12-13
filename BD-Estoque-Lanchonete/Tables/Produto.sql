CREATE TABLE Produto (
  Codigo int PRIMARY KEY,
  Nome varchar(100),
  ValorCalorico decimal(5,2),
  QuantidadeEstocada int,
  Fornecedor_CNPJ varchar(14),
  FOREIGN KEY (Fornecedor_CNPJ) REFERENCES Fornecedor(CNPJ)
);