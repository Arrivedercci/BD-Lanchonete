-- Inserções na tabela Fornecedor
INSERT INTO Fornecedor (CNPJ, Nome, LocalDeOrigem) VALUES
('12345678901234', 'Sadia', 'Santa Catarina'),
('56789012345878', 'Seara', 'Santa Catarina'),
('90123456789012', 'Perdigão', 'Santa Catarina'),
('34567890123456', 'Aurora Alimentos', 'Santa Catarina'),
('78901234567890', 'JBS', 'São Paulo'),
('23456789012345', 'Vigor', 'São Paulo'),
('67890123456789', 'Bauducco', 'São Paulo'),
('89012345678901', 'Santa Dulce', 'Bahia'),
('12345678903234', 'Coca-Cola', 'São Paulo'),
('56789012345679', 'PepsiCo', 'São Paulo'),
('56789012345678', 'Proprio', 'Bahia');

-- Inserções na tabela Produto
INSERT INTO Produto (Codigo, Nome, ValorCalorico, QuantidadeEstocada, Fornecedor_CNPJ) VALUES
(1, 'X-Tudo', 150.25, 100, '12345678901234'),
(2, 'Pastel de Frango', 200.75, 50, '56789012345678'),
(11, 'Cheeseburger', 180.75, 70, '34567890123456'),
(12, 'Coxinha', 220.50, 45, '78901234567890'),
(14, 'Pizza Margherita', 320.25, 25, '67890123456789'),
(15, 'Pão de Queijo', 150.00, 100, '89012345678901'),
(16, 'Salada Caesar', 120.75, 80, '12345678901234'),
(17, 'Batata Frita', 250.50, 60, '56789012345678'),
(24, 'Hambúrguer Vegano', 220.25, 55, '12345678901234'),
(26, 'Torta de Frango', 180.75, 65, '90123456789012'),
(3, 'Suco de Laranja', 180.50, 75, '90123456789012'),
(4, 'Coca-Cola', 120.00, 120, '34567890123456'),
(10, 'Milkshake Morango', 280.40, 40, '56789012345678'),
(13, 'Água Mineral', 2.00, 150, '23456789012345'),
(20, 'Água de Coco', 3.50, 120, '78901234567890'),
(31, 'Café Expresso', 2.50, 200, '89012345678901'),
(33, 'Smoothie de Manga', 160.50, 65, '56789012345678'),
(36, 'Guarana Antartica', 152.50, 120, '78901234567890'),
(37, 'Capuccino', 222.50, 200, '89012345678901'),
(38, 'Sprite', 260.50, 65, '56789012345678'),
(5, 'Torta de Limão', 250.30, 30, '78901234567890'),
(6, 'Sonho de Valsa', 300.50, 20, '23456789012345'),
(18, 'Brigadeiro', 180.25, 90, '90123456789012'),
(21, 'Bolo de Chocolate', 280.75, 30, '23456789012345'),
(25, 'Sundae de Caramelo', 260.40, 35, '56789012345678'),
(23, 'Mousse de Maracujá', 150.00, 40, '89012345678901'),
(27, 'Picolé de Morango', 4.50, 100, '34567890123456'),
(39, 'Pudim de Leite', 210.40, 40, '89012345678901'),
(40, 'Bolo de Morango', 240.75, 25, '12345678901234'),
(29, 'Salada de Frutas', 120.25, 75, '23456789012345'),
(7, 'Combo X-Tudo', 160.75, 80, '56789012345678'),
(8, 'Combo Pastel',220.00, 60, '56789012345678'),
(9, 'Combo Cheeseburger', 190.25, 90, '56789012345678'),
(30, 'Combo Coxinha', 190.40, 50, '56789012345678'),
(32, 'Combo Pizza Margherita', 280.75, 30, '56789012345678'),
(19, 'Combo Pão de Queijo', 200.40, 50, '56789012345678'),
(22, 'Combo Salada Caesar', 190.50, 70, '56789012345678'),
(28, 'Combo Batata Frita', 230.50, 40, '56789012345678'),
(34, 'Combo Hambúrguer Vegano', 200.25, 45, '56789012345678'),
(35, 'Combo Torta de Frango', 180.40, 55, '56789012345678');

-- Inserções na tabela Combo
INSERT INTO Combo (Codigo_Produto, PrecoPromocional, Descricao) VALUES
(7, 50.00, 'X-Tudo,Batata Frita e Coca-Cola'),
(8, 70.00, 'Pastel de Frango,Água Mineral e Suco de Laranja'),
(9, 90.00, 'Cheeseburger,Batata Frita e Coca-Cola'),
(30, 65.50, 'Coxinha,Mousse de Maracujá e Suco de Laranja'),
(32, 80.00, 'Pizza Margherita,Brigadeiro e Suco de Laranja'),
(19, 55.00, 'Pão de Queijo,Picolé de Morango e Suco de Laranja'),
(22, 75.50, 'Salada Caesar,Água de Coco e Pudim de Leite'),
(28, 85.00, 'Batata Frita,Bolo de Chocolate e Suco de Laranja'),
(34, 60.00, 'Hambúrguer Vegano,Batata Frita e Suco de Laranja'),
(35, 95.00, 'Torta de Frango,Água de Coco e Suco de Laranja');


-- Inserções na tabela Sobremesa
INSERT INTO Sobremesa (Codigo_Produto, Sabor, Consistencia, Preco) VALUES
(5, 'Limão', 'Cremosa', 15.00),
(6, 'Chocolate', 'Firme', 18.50),
(18, 'Chocolate', 'Aerada', 20.00),
(21, 'Chocolate', 'Cremosa', 16.75),
(25, 'Caramelo', 'Firme', 22.50),
(23, 'Maracujá', 'Aerada', 25.00),
(27, 'Morango', 'Cremosa', 19.75),
(39, 'Leite', 'Firme', 23.00),
(40, 'Morango', 'Aerada', 17.50),
(29, 'Frutas', 'Cremosa', 21.00);

-- Inserções na tabela Bebida
INSERT INTO Bebida (Codigo_Produto, MedidaDeCapacidade, Temperatura, Preco) VALUES
(3, 500, 'Gelada', 5.00),
(4, 750, 'Gelada', 7.50),
(10, 1000, 'Gelada', 10.00),
(13, 500, 'Ambiente', 6.75),
(20, 750, 'Gelada', 8.50),
(31, 1000, 'Quente', 12.00),
(33, 500, 'Gelada', 7.75),
(36, 750, 'Gelada', 9.00),
(37, 1000, 'Quente', 6.50),
(38, 500, 'Gelada', 9.50);

-- Inserções na tabela Lanche
INSERT INTO Lanche (Codigo_Produto, Sabor, FormaDeConfeccao, Preco) VALUES
(1, 'Carne', 'Grelhado', 15.00),
(2, 'Frango', 'Frito', 18.50),
(11, 'Carne', 'Grelhado', 20.00),
(12, 'Frango', 'Frito', 16.75),
(14, 'Vegetariano', 'Assado', 22.50),
(15, 'Queijo', 'Assado', 25.00),
(16, 'Vegetariano', 'Natural', 19.75),
(17, 'Vegetariano', 'Frita', 23.00),
(24, 'Vegetariano', 'Grelhado', 17.50),
(26, 'Frango', 'Assado', 21.00);

-- Inserções na tabela Funcionario
INSERT INTO Funcionario (CPF, Nome, Turno, Cargo) VALUES
('12345678901', 'Ana Silva', 'Manhã', 'Atendente'),
('23456789012', 'Marcos Oliveira', 'Tarde', 'Cozinheiro'),
('34567890123', 'Carla Santos', 'Noite', 'Garçom'),
('45678901234', 'Pedro Almeida', 'Manhã', 'Gerente'),
('56789012345', 'Juliana Costa', 'Tarde', 'Atendente'),
('67890123456', 'Lucas Pereira', 'Noite', 'Cozinheiro'),
('78901234567', 'Camila Rocha', 'Manhã', 'Garçom'),
('89012345678', 'André Lima', 'Tarde', 'Gerente'),
('90123456789', 'Mariana Souza', 'Noite', 'Atendente'),
('12345678902', 'Gustavo Martins', 'Manhã', 'Cozinheiro');

-- Inserções na tabela Transacao
INSERT INTO Transacao (Codigo, ValorTotal, Data, TipoTransacao, DescricaoTransacao, Funcionario_CPF) VALUES
(1, 150.00, '2023-01-01', 'Saida', 'Venda', '12345678901'),
(2, 80.50, '2023-02-15', 'Entrada', 'Compra', '23456789012'),
(3, 200.25, '2023-03-20', 'Saida', 'Venda', '34567890123'),
(4, 120.75, '2023-04-10', 'Saida', 'Venda', '45678901234'),
(5, 90.00, '2023-05-05', 'Entrada', 'Compra', '56789012345'),
(6, 180.50, '2023-06-18', 'Saida', 'Venda', '67890123456'),
(7, 160.00, '2023-07-22', 'Saida', 'Venda', '78901234567'),
(8, 220.75, '2023-08-30', 'Entrada', 'Compra', '89012345678'),
(9, 190.25, '2023-09-14', 'Saida', 'Venda', '90123456789'),
(10, 250.40, '2023-10-05', 'Saida', 'Venda', '12345678901');

-- Inserções na tabela Transacao_Produto
INSERT INTO Transacao_Produto (Transacao_Codigo, Produto_Codigo, Quantidade) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 5, 3),
(3, 7, 1),
(4, 9, 2),
(5, 2, 4),
(6, 4, 1),
(7, 6, 3),
(8, 8, 2),
(10, 10, 1);