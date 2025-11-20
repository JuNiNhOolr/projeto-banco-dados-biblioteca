-- =================================================================
-- 01_SCHEMA.SQL
-- Script para criação da estrutura do banco de dados BiblioTech Pessoal
-- =================================================================

-- Apaga as tabelas se elas já existirem, para permitir recriar o banco do zero
DROP TABLE IF EXISTS Emprestimo;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS Amigo;

-- Tabela AUTOR
-- Armazena os dados dos autores dos livros.
CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(255) NOT NULL,
    nacionalidade VARCHAR(100)
);

-- Tabela AMIGO
-- Armazena os dados dos amigos para quem os livros podem ser emprestados.
CREATE TABLE Amigo (
    id_amigo INT PRIMARY KEY AUTO_INCREMENT,
    nome_amigo VARCHAR(255) NOT NULL,
    contato VARCHAR(100)
);

-- Tabela LIVRO
-- Armazena os dados dos livros da biblioteca.
CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    ano_publicacao INT,
    genero VARCHAR(100),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor)
);

-- Tabela EMPRESTIMO
-- Tabela associativa que registra os empréstimos de livros para amigos.
CREATE TABLE Emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE NOT NULL,
    data_prevista_devolucao DATE,
    data_devolucao_efetiva DATE,
    id_livro INT,
    id_amigo INT,
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_amigo) REFERENCES Amigo(id_amigo)
);

