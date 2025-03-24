-- Criando o banco de dados
DROP DATABASE IF EXISTS Escola;
CREATE DATABASE Escola;

-- Usando o banco de dados criado
USE Escola;

-- Criando a tabela Aluno
CREATE TABLE Aluno (
    codAluno INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    imagem VARCHAR(255),
    status TINYINT(1) DEFAULT 1 -- 1 = ativo, 0 = bloqueado
);

-- Inserindo dados na tabela Aluno
INSERT INTO Aluno (email, senha, nome) VALUES
('aluno1@etec.sp.gov.br', 'senha1', 'Aluno Um'),
('aluno2@etec.sp.gov.br', 'senha2', 'Aluno Dois'),
('aluno3@etec.sp.gov.br', 'senha3', 'Aluno Três'),
('aluno4@etec.sp.gov.br', 'senha4', 'Aluno Quatro'),
('aluno5@etec.sp.gov.br', 'senha5', 'Aluno Cinco'),
('aluno6@etec.sp.gov.br', 'senha6', 'Aluno Seis'),
('aluno7@etec.sp.gov.br', 'senha7', 'Aluno Sete'),
('aluno8@etec.sp.gov.br', 'senha8', 'Aluno Oito'),
('aluno9@etec.sp.gov.br', 'senha9', 'Aluno Nove'),
('aluno10@etec.sp.gov.br', 'senha10', 'Aluno Dez');

-- Criando a tabela Funcionario (Administradores)
CREATE TABLE Funcionario (
    codFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (email, senha) VALUES
('admin@admin.com', '1234');

-- Criando a tabela Ambiente
CREATE TABLE Ambiente (
    codAmbiente INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

-- Inserindo dados na tabela Ambiente
INSERT INTO Ambiente (descricao) VALUES
('Sala de Aula 101'),
('Laboratório de Informática'),
('Biblioteca'),
('Auditório'),
('Sala de Reuniões'),
('Quadra'),
('Cantina'),
('Laboratório Farmacêutico'),
('Laboratório de Química'),
('Sala de Professores');

-- Criando a tabela Equipamentos
CREATE TABLE Equipamentos (
    codEquipamentos INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

-- Inserindo dados na tabela Equipamentos
INSERT INTO Equipamentos (descricao) VALUES
('Nenhum'),
('Projetor'),
('Impressora'),
('Scanner'),
('Microfone'),
('Caixa de Som'),
('Mesa de Som'),
('Câmera'),
('Televisão'),
('Ar Condicionado');

-- Criando a tabela Status
CREATE TABLE Status (
    codStatus INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

-- Inserindo os três estados na tabela Status
INSERT INTO Status (descricao) VALUES
('Enviado'),
('Em Andamento'),
('Concluído'),
('Inativo');  -- Novo status "Inativo"

-- Criando a tabela Chamado
CREATE TABLE Chamado (
    codChamado INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    codAluno INT NOT NULL,
    data DATE NOT NULL,
    imagem VARCHAR(255),
    codAmbiente INT NOT NULL,
    codEquipamentos INT NOT NULL,
    codStatus INT NOT NULL DEFAULT 1,  -- Relacionamento com Status
    motivoInativacao TEXT,  -- Campo para motivo de inativação
    FOREIGN KEY (codAluno) REFERENCES Aluno(codAluno) ON DELETE CASCADE,
    FOREIGN KEY (codAmbiente) REFERENCES Ambiente(codAmbiente) ON DELETE CASCADE,
    FOREIGN KEY (codEquipamentos) REFERENCES Equipamentos(codEquipamentos) ON DELETE CASCADE,
    FOREIGN KEY (codStatus) REFERENCES Status(codStatus) ON DELETE CASCADE
);

-- Inserindo dados na tabela Chamado
INSERT INTO Chamado (descricao, codAluno, data, imagem, codAmbiente, codEquipamentos, codStatus) VALUES
('Computador não liga', 1, '2024-08-01', 'imagem1.jpg', 1, 1, 1),
('Projetor com defeito', 2, '2024-08-02', 'imagem2.jpg', 2, 2, 2),
('Impressora sem tinta', 3, '2024-08-03', 'imagem3.jpg', 3, 3, 3),
('Scanner não funciona', 4, '2024-08-04', 'imagem4.jpg', 4, 4, 1),
('Microfone com ruído', 5, '2024-08-05', 'imagem5.jpg', 5, 5, 2),
('Caixa de som sem áudio', 6, '2024-08-06', 'imagem6.jpg', 6, 6, 3),
('Mesa de som com defeito', 7, '2024-08-07', 'imagem7.jpg', 7, 7, 1),
('Câmera não grava', 8, '2024-08-08', 'imagem8.jpg', 8, 8, 2),
('Televisão sem sinal', 9, '2024-08-09', 'imagem9.jpg', 9, 9, 3),
('Ar condicionado não liga', 10, '2024-08-10', 'imagem10.jpg', 10, 10, 1);

-- Criando a tabela Resposta
CREATE TABLE Resposta (
    codResposta INT AUTO_INCREMENT PRIMARY KEY,
    codChamado INT NOT NULL,
    codFuncionario INT NOT NULL,
    respostaTexto TEXT NOT NULL,
    imagem VARCHAR(255),
    descricaoChamado VARCHAR(255),
    ambienteChamado VARCHAR(255),
    equipamentoChamado VARCHAR(255),
    dataChamado DATE,
    imagemChamado VARCHAR(255),
    dataResposta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (codChamado) REFERENCES Chamado(codChamado) ON DELETE CASCADE,
    FOREIGN KEY (codFuncionario) REFERENCES Funcionario(codFuncionario) ON DELETE CASCADE
);

-- Selecionar todos os alunos
SELECT * FROM Aluno;

-- Selecionar todos os ambientes
SELECT * FROM Ambiente;

-- Selecionar todos os equipamentos
SELECT * FROM Equipamentos;

-- Selecionar todos os chamados
SELECT * FROM Chamado;

-- Selecionar todos os funcionários
SELECT * FROM Funcionario;

-- Selecionar todos os Status
SELECT * FROM Status;
