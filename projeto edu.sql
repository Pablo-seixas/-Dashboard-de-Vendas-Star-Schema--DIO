-- Criação e seleção do banco de dados
CREATE DATABASE IF NOT EXISTS ProjetoEdu;
USE ProjetoEdu;

-- Criação das tabelas principais primeiro
CREATE TABLE Departamento (
    Departamento_ID INT PRIMARY KEY,
    Nome_Departamento VARCHAR(100)
);

CREATE TABLE Curso (
    Curso_ID INT PRIMARY KEY,
    Nome_Curso VARCHAR(100)
);

CREATE TABLE Disciplina (
    Disciplina_ID INT PRIMARY KEY,
    Nome_Disciplina VARCHAR(100),
    Curso_ID INT,
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Curso_ID)
);

CREATE TABLE Aluno (
    Aluno_ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_Nascimento DATE
);

-- Criação da tabela de relacionamento (que referencia as tabelas principais)
CREATE TABLE Professor (
    Professor_ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento_ID INT,
    FOREIGN KEY (Departamento_ID) REFERENCES Departamento(Departamento_ID)
);

CREATE TABLE PreRequisito (
    Disciplina_ID INT,
    Disciplina_Pre_Requisito_ID INT,
    PRIMARY KEY (Disciplina_ID, Disciplina_Pre_Requisito_ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Disciplina_ID),
    FOREIGN KEY (Disciplina_Pre_Requisito_ID) REFERENCES Disciplina(Disciplina_ID)
);

CREATE TABLE Matricula (
    Matricula_ID INT PRIMARY KEY,
    Data_Matricula DATE,
    Nota DECIMAL(5, 2),
    Curso_ID INT,
    Aluno_ID INT,
    Disciplina_ID INT,
    Professor_ID INT,
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Curso_ID),
    FOREIGN KEY (Aluno_ID) REFERENCES Aluno(Aluno_ID),
    FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Disciplina_ID),
    FOREIGN KEY (Professor_ID) REFERENCES Professor(Professor_ID)
);

-- Inserção dos dados
INSERT INTO Departamento (Departamento_ID, Nome_Departamento) VALUES
(1, 'Matemática'),
(2, 'Física'),
(3, 'Química');

INSERT INTO Curso (Curso_ID, Nome_Curso) VALUES
(1, 'Engenharia'),
(2, 'Ciências Exatas'),
(3, 'Biotecnologia');

INSERT INTO Disciplina (Disciplina_ID, Nome_Disciplina, Curso_ID) VALUES
(1, 'Cálculo I', 1),
(2, 'Física I', 2),
(3, 'Química Orgânica', 3);

INSERT INTO Aluno (Aluno_ID, Nome, Data_Nascimento) VALUES
(1, 'Ana', '2000-01-01'),
(2, 'Bruno', '1999-05-23'),
(3, 'Carla', '2001-07-15');

INSERT INTO Professor (Professor_ID, Nome, Departamento_ID) VALUES
(1, 'Prof. João', 1),
(2, 'Prof. Maria', 2),
(3, 'Prof. Carlos', 3);

INSERT INTO PreRequisito (Disciplina_ID, Disciplina_Pre_Requisito_ID) VALUES
(2, 1),
(3, 2);

INSERT INTO Matricula (Matricula_ID, Data_Matricula, Nota, Curso_ID, Aluno_ID, Disciplina_ID, Professor_ID) VALUES
(1, '2023-08-01', 85, 1, 1, 1, 1),
(2, '2023-08-02', 90, 2, 2, 2, 2),
(3, '2023-08-03', 78, 3, 3, 3, 3);
