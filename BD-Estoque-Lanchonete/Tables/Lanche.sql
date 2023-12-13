CREATE TABLE Lanche (
  Codigo_Produto int PRIMARY KEY,
  Sabor varchar(50),
  FormaDeConfeccao varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo),
);