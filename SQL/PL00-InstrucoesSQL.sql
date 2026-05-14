-- Base de Dados de Introducao
CREATE DATABASE IntroducaoSQL;

-- Selecionar Base de Dados
USE IntroducaoSQL;

-- Tabela Cliente
CREATE TABLE Cliente (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE NOT NULL,
    DataNascimento DATE NOT NULL,
    PRIMARY KEY (ID)
);

-- Tabela Produto
CREATE TABLE Produto (
    ID INT AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0,
    PRIMARY KEY (ID)
);

-- Tabela Venda
CREATE TABLE Venda (
    ID INT AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    ProdutoID INT NOT NULL,
    DataVenda DATE NOT NULL,
    Quantidade INT NOT NULL CHECK (Quantidade > 0),
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ID)
);

-- Inserir registos na tabela Cliente
INSERT INTO Cliente (Nome, Email, DataNascimento) VALUES
('Ana Silva', 'ana.silva@gmail.com', '1990-03-15'),
('João Costa', 'joao.costa@hotmail.com', '1985-07-22'),
('Maria Oliveira', 'maria.oliveira@yahoo.com', '1992-11-03'),
('Pedro Santos', 'p.santos@empresa.com', '1988-01-10'),
('Rita Gomes', 'rita.gomes@outlook.com', '1995-09-25'),
('Carlos Sousa', 'carlos.sousa@universidade.edu', '1980-05-14'),
('Fernanda Pereira', 'fernandap@projetos.org', '1987-02-28'),
('Miguel Almeida', 'miguel.almeida@almeida.pt', '1994-06-18'),
('Carolina Ramos', 'carol_ramos@gmail.com', '1993-04-12'),
('Luís Fernandes', 'luis_fernandes@empresa.com.br', '1989-12-30'),
('Patrícia Matos', 'patricia.matos@designstudio.co', '1991-08-07'),
('Rodrigo Nogueira', 'nogueira.rodrigo@mail.com', '1983-10-19'),
('Helena Cardoso', 'helena.cardoso@startup.io', '1997-03-09'),
('Sofia Cunha', 'sofia.cunha@hotmail.pt', '1996-12-05'),
('Tiago Marques', 'tiago.marques@freelancer.net', '1982-11-21'),
('Mariana Antunes', 'mariana.antunes@escola.edu', '1984-09-17'),
('Bruno Teixeira', 'bruno.teixeira@mailbox.org', '1990-01-04'),
('Beatriz Machado', 'bea.machado@machado.pt', '1998-07-13'),
('Ricardo Pinto', 'ricardo_pinto123@gmail.com', '1986-05-22'),
('Tatiana Lopes', 'tatiana.lopes@corporate.biz', '1993-02-27'),
('Paulo Rocha', 'paulo.rocha@hotmail.com', '1988-10-11'),
('Carla Figueira', 'carla.figueira@gmail.com', '1992-06-30'),
('Henrique Torres', 'henrique.torres@empresa.com', '1985-09-04'),
('Lúcia Amaral', 'lucia.amaral@yahoo.com', '1991-12-21'),
('Gustavo Neves', 'gustavo.neves@neves.pt', '1980-02-17'),
('Vanessa Ferreira', 'vanessa.ferreira@outlook.com', '1995-11-19'),
('Eduardo Ramos', 'eduardo.ramos@universidade.edu', '1986-03-08'),
('Cláudia Matos', 'claudia.matos@projetos.org', '1993-07-25'),
('André Silva', 'andre.silva@silvacoop.com', '1990-04-14'),
('Sara Nunes', 'sara_nunes@hotmail.pt', '1998-09-03'),
('Rodrigo Vieira', 'rodrigovieira@empresa.com.br', '1983-05-09'),
('Fabiana Martins', 'fabiana.martins@mail.com', '1994-08-12'),
('Diogo Barros', 'diogo.barros@startup.io', '1997-02-28'),
('Joana Cruz', 'joana.cruz@freelancer.net', '1996-06-22'),
('Manuel Fonseca', 'manuel.fonseca@escola.edu', '1982-01-05'),
('Adriana Campos', 'adriana.campos@camposconsult.com', '1993-10-10'),
('Fábio Almeida', 'fabio.almeida@mailbox.org', '1990-12-03'),
('Inês Moreira', 'ines.moreira@moreira.pt', '1999-03-15'),
('Vítor Lopes', 'vitor.lopes123@gmail.com', '1987-07-28'),
('Daniela Sousa', 'daniela.sousa@corporate.biz', '1994-09-18');

-- Inserir registos na tabela Produto
INSERT INTO Produto (Descricao, Preco, Stock) VALUES
('Camisa Azul', 19.99, 100),
('Calças Jeans', 49.90, 50),
('Casaco de Couro', 149.99, 30),
('Sapatilhas', 89.90, 120),
('Relógio Digital', 75.00, 45),
('Bolsa ', 99.99, 25),
('Chapéu de Palha', 29.90, 70),
('Óculos de Sol', 49.99, 60),
('Smartphone', 999.99, 15),
('Notebook', 1999.99, 10),
('Fones de Ouvido', 59.90, 200),
('Carregador Portátil', 39.90, 150),
('Teclado Mecânico', 129.99, 40),
('Rato Gamer', 89.90, 80),
('Monitor 24" Gamer', 899.99, 20),
('TV LED 50"', 2499.99, 8),
('Micro-ondas', 399.99, 12),
('Frigorifico', 1899.99, 5),
('Fogão', 1199.99, 6),
('Máquina de Lavar', 2499.99, 4),
('Bicicleta', 499.99, 25),
('Fones de Ouvido', 79.90, 10),
('Consola de Videojogos', 2499.99, 8),
('Mesa de Escritório', 299.99, 15),
('Cadeira Gamer', 899.90, 20),
('Mochila Escolar', 59.99, 50),
('Caneca Personalizada', 19.99, 100),
('Livro de Ficção', 39.90, 40),
('Caderno Universitário', 12.99, 200),
('Tablet 10"', 1499.99, 12),
('Batedeira', 299.90, 8),
('Aspirador', 499.99, 15),
('Fritadeira Sem Óleo', 349.90, 10),
('Ventilador de Mesa', 129.99, 25),
('Ar Condicionado', 2499.99, 5),
('Sapatilhas', 199.90, 60),
('Casaco Esportiva', 249.99, 30),
('Kit de Ferramentas', 199.99, 20),
('Brinquedo Educativo', 89.90, 50),
('Camera Digital', 1999.99, 10);

-- Inserir registos na tabela Venda
INSERT INTO Venda (ClienteID, ProdutoID, DataVenda, Quantidade) VALUES
(1, 2, '2024-01-01', 1),
(2, 3, '2024-01-02', 2),
(3, 5, '2024-01-03', 1),
(4, 8, '2024-01-04', 1),
(5, 1, '2024-01-05', 3),
(6, 4, '2024-01-06', 2),
(7, 9, '2024-01-07', 1),
(8, 6, '2024-01-08', 1),
(9, 11, '2024-01-09', 2),
(10, 12, '2024-01-10', 3),
(11, 14, '2024-01-11', 1),
(12, 15, '2024-01-12', 1),
(13, 10, '2024-01-13', 2),
(14, 16, '2024-01-14', 1),
(15, 18, '2024-01-15', 1),
(16, 20, '2024-01-16', 1),
(17, 7, '2024-01-17', 2),
(18, 13, '2024-01-18', 1),
(19, 19, '2024-01-19', 1),
(20, 17, '2024-01-20', 1),
(2, 3, '2024-02-01', 1),
(3, 7, '2024-02-02', 2),
(5, 2, '2024-02-03', 1),
(6, 5, '2024-02-04', 3),
(8, 4, '2024-02-05', 1),
(10, 1, '2024-02-06', 2),
(12, 6, '2024-02-07', 1),
(14, 8, '2024-02-08', 2),
(15, 9, '2024-02-09', 3),
(16, 11, '2024-02-10', 1),
(17, 12, '2024-02-11', 1),
(18, 13, '2024-02-12', 2),
(19, 15, '2024-02-13', 1),
(20, 16, '2024-02-14', 1),
(1, 17, '2024-02-15', 1),
(3, 18, '2024-02-16', 2),
(5, 19, '2024-02-17', 3),
(7, 20, '2024-02-18', 1),
(9, 14, '2024-02-19', 1),
(11, 10, '2024-02-20', 1);