CREATE TABLE Transacao_Produto (
  Transacao_Codigo int,
  Produto_Codigo int,
  Quantidade int,
  PRIMARY KEY (Transacao_Codigo, Produto_Codigo),
  FOREIGN KEY (Transacao_Codigo) REFERENCES Transacao(Codigo),
  FOREIGN KEY (Produto_Codigo) REFERENCES Produto(Codigo)
);