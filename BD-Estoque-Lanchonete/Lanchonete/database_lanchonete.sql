-- Criação da tabela Fornecedor
CREATE TABLE Fornecedor (
  CNPJ varchar(14) PRIMARY KEY,
  Nome varchar(100),
  LocalDeOrigem varchar(100)
);

-- Criação da tabela Produto
CREATE TABLE Produto (
  Codigo int PRIMARY KEY,
  Nome varchar(100),
  ValorCalorico decimal(5,2),
  QuantidadeEstocada int,
  Fornecedor_CNPJ varchar(14),
  FOREIGN KEY (Fornecedor_CNPJ) REFERENCES Fornecedor(CNPJ)
);

-- Criação da tabela Combo
CREATE TABLE Combo (
  Codigo_Produto int PRIMARY KEY,
  PrecoPromocional decimal(10,2),
  Descricao varchar(50),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);

-- Criação da tabela Sobremesa
CREATE TABLE Sobremesa (
  Codigo_Produto int PRIMARY KEY,
  Sabor varchar(50),
  Consistencia varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);

-- Criação da tabela Bebida
CREATE TABLE Bebida (
  Codigo_Produto int PRIMARY KEY,
  MedidaDeCapacidade int,
  Temperatura varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);

-- Criação da tabela Lanche
CREATE TABLE Lanche (
  Codigo_Produto int PRIMARY KEY,
  Sabor varchar(50),
  FormaDeConfeccao varchar(50),
  Preco decimal(10,2),
  FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo)
);

-- Criação da tabela Funcionario
CREATE TABLE Funcionario (
  CPF varchar(11) PRIMARY KEY,
  Nome varchar(100),
  Turno varchar(50),
  Cargo varchar(50)
);

-- Criação da tabela Transacao
CREATE TABLE Transacao (
  Codigo int PRIMARY KEY,
  ValorTotal decimal(10,2),
  Data date,
  TipoTransacao varchar(50),
  DescricaoTransacao varchar(50),
  Funcionario_CPF varchar(11),
  FOREIGN KEY (Funcionario_CPF) REFERENCES Funcionario(CPF)
);

-- Criação da tabela Transacao_Produto
CREATE TABLE Transacao_Produto (
  Transacao_Codigo int,
  Produto_Codigo int,
  Quantidade int,
  PRIMARY KEY (Transacao_Codigo, Produto_Codigo),
  FOREIGN KEY (Transacao_Codigo) REFERENCES Transacao(Codigo),
  FOREIGN KEY (Produto_Codigo) REFERENCES Produto(Codigo)
);