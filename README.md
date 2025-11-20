# Projeto de Banco de Dados: BiblioTech Pessoal

## 1. Descrição do Projeto

Este repositório contém os scripts SQL para a criação e manipulação de um banco de dados para gerenciar uma biblioteca pessoal. O projeto foi desenvolvido como parte da Experiência Prática da disciplina de Banco de Dados.

O sistema, chamado "BiblioTech Pessoal", permite:
- Catalogar livros, autores e gêneros.
- Gerenciar uma lista de amigos.
- Registrar empréstimos de livros, controlando datas de devolução.

## 2. Modelo Lógico (DER)

O banco de dados foi modelado utilizando o Diagrama Entidade-Relacionamento (DER) e normalizado até a Terceira Forma Normal (3FN) para garantir a integridade e evitar redundância de dados.

*(Opcional, mas recomendado: Insira aqui a imagem do seu DER que você criou na Atividade 2. Para isso, faça o upload da imagem para o repositório e use a sintaxe `![Texto da imagem](link_da_imagem.png)`)*

## 3. Estrutura dos Scripts

O projeto está organizado nos seguintes scripts SQL:

- **`01_schema.sql`**: Contém os comandos `CREATE TABLE` para gerar toda a estrutura do banco de dados, incluindo tabelas, chaves primárias e chaves estrangeiras.
- **`02_inserts.sql`**: Contém os comandos `INSERT INTO` para popular o banco de dados com dados de exemplo, permitindo a execução e teste das consultas.
- **`03_consultas.sql`**: Contém exemplos de comandos de manipulação de dados (DML), incluindo `SELECT` com `JOIN`, `UPDATE` e `DELETE` com cláusulas `WHERE`.

## 4. Como Executar o Projeto

Para recriar e testar este banco de dados, siga os passos abaixo em um ambiente SQL (como MySQL Workbench, DBeaver ou PGAdmin):

1.  **Crie um novo banco de dados (schema):**
    ```sql
    CREATE DATABASE bibliotech_pessoal;
    USE bibliotech_pessoal;
    ```
2.  **Execute o script de criação da estrutura:**
    - Copie e cole o conteúdo do arquivo `01_schema.sql` e execute-o. Isso criará todas as tabelas.

3.  **Execute o script de inserção de dados:**
    - Copie e cole o conteúdo do arquivo `02_inserts.sql` e execute-o. Isso irá popular as tabelas.

4.  **Execute as consultas de teste:**
    - Copie e cole os comandos do arquivo `03_consultas.sql` um a um para ver os resultados das consultas, atualizações e exclusões.

