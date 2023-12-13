CREATE TABLE Sobremesa (
  Codigo_Produto int PRIMARY KEY,
  Sabor varchar(50),
  Consistencia varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);