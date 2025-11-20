-- =================================================================
-- 03_CONSULTAS.SQL
-- Script com exemplos de manipulação e consulta de dados (DML).
-- =================================================================

-- ===================
-- CONSULTAS (SELECT)
-- ===================

-- Consulta 1: Listar todos os livros do gênero "Fantasia", ordenados pelo ano de publicação.
SELECT titulo, ano_publicacao, genero
FROM Livro
WHERE genero = 'Fantasia'
ORDER BY ano_publicacao ASC;

-- Consulta 2: Listar todos os empréstimos ativos, mostrando o título do livro e o nome do amigo.
-- Esta consulta usa JOIN para combinar informações de 3 tabelas.
SELECT
    L.titulo AS Livro,
    A.nome_amigo AS Amigo,
    E.data_emprestimo,
    E.data_prevista_devolucao
FROM Emprestimo AS E
JOIN Livro AS L ON E.id_livro = L.id_livro
JOIN Amigo AS A ON E.id_amigo = A.id_amigo
WHERE E.data_devolucao_efetiva IS NULL; 

-- ===================
-- ATUALIZAÇÕES (UPDATE)
-- ===================

-- Update 1: Registrar a devolução do livro "Duna".
UPDATE Emprestimo
SET data_devolucao_efetiva = '2025-11-10'
WHERE id_livro = 2 AND id_amigo = 1; -- Usando o ID do livro "Duna" e do amigo "Carlos"

-- Update 2: Corrigir o ano de publicação de um livro.
UPDATE Livro
SET ano_publicacao = 1950
WHERE titulo = 'Fundação';

-- Update 3: Mudar o contato de um amigo.
UPDATE Amigo
SET contato = 'mariana.costa.nova@email.com'
WHERE nome_amigo = 'Mariana Costa';

-- ===================
-- EXCLUSÕES (DELETE)
-- ===================

-- Delete 1: Remover um livro que não tem empréstimos.
-- (Vamos remover "O Hobbit", que tem id_livro = 5)
DELETE FROM Livro
WHERE id_livro = 5;

-- Delete 2: Remover um amigo que não tem mais empréstimos ativos.
DELETE FROM Amigo
WHERE nome_amigo = 'Pedro Almeida';

-- Delete 3: Remover um autor que não tem mais livros no sistema.
-- (Após deletar "O Hobbit", podemos tentar deletar Tolkien se ele não tiver mais livros)
-- Este comando pode falhar se J.R.R. Tolkien ainda tiver "O Senhor dos Anéis" cadastrado,
-- o que demonstra a integridade referencial do banco de dados.
DELETE FROM Autor
WHERE nome_autor = 'J.R.R. Tolkien';

