CREATE TABLE Endereco (
    ID_Endereco INT PRIMARY KEY,
    Rua VARCHAR(30),
    Numero VARCHAR(3),
    Cidade VARCHAR(30),
    Estado VARCHAR(2),
    Complemento VARCHAR(30)
);

CREATE TABLE Cargo (
    ID_Cargo INT PRIMARY KEY,
    Cargo VARCHAR(20) 
);

CREATE TABLE Salario (
    ID_Salario INT PRIMARY KEY,
    Valor DECIMAL(10, 2) 
);

CREATE TABLE Pessoa (
    ID_Pessoa INT PRIMARY KEY,
    Nome VARCHAR(20),
    ID_Endereco INT,
    ID_Cargo INT,
    Jornada INT,
    ID_Salario INT,
    FOREIGN KEY (ID_Endereco) REFERENCES Endereco(ID_Endereco),
    FOREIGN KEY (ID_Cargo) REFERENCES Cargo(ID_Cargo),
    FOREIGN KEY (ID_Salario) REFERENCES Salario(ID_Salario)
);

CREATE TABLE Email (
    ID_Email INT PRIMARY KEY,
    ID_Pessoa INT,
    Email VARCHAR(30),
    FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa(ID_Pessoa)
);

INSERT INTO Endereco (ID_Endereco, Rua, Numero, Cidade, Estado, Complemento) VALUES
(1, 'Rua Suassuna', '30', 'João Pessoa', 'PB', NULL),
(2, 'Rua Lovelace', '67', 'London', 'LD', NULL),
(3, 'Rua Substantivo', '78', 'Bairro Predicado, Mesóclise', 'AC', NULL),
(4, 'Rua Eurico', '50', 'João Pessoa', 'PB', 'Apt 28 Bloco C');

INSERT INTO Cargo (ID_Cargo, Cargo) VALUES
(1, 'Contador'),
(2, 'Developer'),
(3, 'Linguista');

INSERT INTO Salario (ID_Salario, Valor) VALUES
(1, 3000.00),
(2, 15000.00),
(3, 8000.00);

INSERT INTO Pessoa (ID_Pessoa, Nome, ID_Endereco, ID_Cargo, Jornada, ID_Salario) VALUES
(1, 'João Grilo', 1, 1, 40, 1),
(2, 'Ada Byron', 2, 2, 20, 2),
(3, 'Gerundino', 3, 3, 44, 3),
(4, 'Chicó', 4, 2, 20, 2);

INSERT INTO Email (ID_Email, ID_Pessoa, Email) VALUES
(1, 1, 'grilo@mail.com'),
(2, 1, 'joaog@mk.com'),
(3, 2, 'ada@mail.com'),
(4, 2, 'abryon@tech.com'),
(5, 3, 'gerundino@gmail.com');