CREATE TABLE Bebida (
  Codigo_Produto int PRIMARY KEY,
  MedidaDeCapacidade int,
  Temperatura varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo),
);