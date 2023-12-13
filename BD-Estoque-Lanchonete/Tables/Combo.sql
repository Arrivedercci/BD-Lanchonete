CREATE TABLE Combo (
  Codigo_Produto int PRIMARY KEY,
  PrecoPromocional decimal(10,2),
  Descricao varchar,
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo),
);