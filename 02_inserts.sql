-- =================================================================
-- 02_INSERTS.SQL
-- Script para inserção de dados de exemplo no BiblioTech Pessoal
-- =================================================================

-- Inserindo Autores
INSERT INTO Autor (nome_autor, nacionalidade) VALUES
('J.R.R. Tolkien', 'Sul-africano'),
('Frank Herbert', 'Americano'),
('Isaac Asimov', 'Russo'),
('J.K. Rowling', 'Britânica');

-- Inserindo Amigos
INSERT INTO Amigo (nome_amigo, contato) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Mariana Costa', '9999-8888'),
('Pedro Almeida', 'pedro.a@email.com');

-- Inserindo Livros
-- (Assumindo que os IDs dos autores são 1=Tolkien, 2=Herbert, 3=Asimov, 4=Rowling)
INSERT INTO Livro (titulo, isbn, ano_publicacao, genero, id_autor) VALUES
('O Senhor dos Anéis: A Sociedade do Anel', '978-8595084759', 1954, 'Fantasia', 1),
('Duna', '978-8576574133', 1965, 'Ficção Científica', 2),
('Fundação', '978-8576570234', 1951, 'Ficção Científica', 3),
('Harry Potter e a Pedra Filosofal', '978-8532530783', 1997, 'Fantasia', 4),
('O Hobbit', '978-8595084742', 1937, 'Fantasia', 1);

-- Inserindo Empréstimos
-- (Assumindo que os IDs dos livros são 1=Senhor dos Anéis, 2=Duna, 3=Fundação)
-- (Assumindo que os IDs dos amigos são 1=Carlos, 2=Mariana)
INSERT INTO Emprestimo (id_livro, id_amigo, data_emprestimo, data_prevista_devolucao) VALUES
(2, 1, '2025-10-15', '2025-11-15'), -- Duna emprestado para Carlos
(4, 2, '2025-11-01', '2025-12-01'); -- Harry Potter emprestado para Mariana

