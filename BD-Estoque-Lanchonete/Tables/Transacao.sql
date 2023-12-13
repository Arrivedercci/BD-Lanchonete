CREATE TABLE Transacao (
  Codigo int PRIMARY KEY,
  ValorTotal decimal(10,2),
  Data date,
  TipoTransacao varchar(50),
  DescricaoTransacao varchar(50),
  Funcionario_CPF varchar(11),
  FOREIGN KEY (Funcionario_CPF) REFERENCES Funcionario(CPF)
);