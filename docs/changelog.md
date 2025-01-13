# Changelog

## L5\_SW\_TEST - Change Log

### [1.0.0] - Initial Release

#### Added:

- **Backend:**

  - `config/database.php`: Configuração da conexão ao banco de dados.
  - `config/populateDb.php`: Script para popular o banco de dados com informações da API.
  - `controllers/filmController.php`: Lógica do controlador para gerenciar filmes.
  - `models/filmModel.php`: Modelo para operações no banco de dados relacionadas a filmes.

- **Frontend:**

  - `assets/css/styles.css`: Estilos para o frontend.
  - `views/catalog.html` e `views/details.html`: Templates HTML para exibição.

- **Database:**

  - `db/star_wars.sql`: Arquivo SQL com esquema.

- **Root:**

  - `index.php`: Ponto de entrada principal para a aplicação.

### [1.1.0] - 06/01/2025
#### Added:
- **Backend:**
    - `config/populateDb.php`: Adição de lógica para adição de imagens relacionadas aos filmes.
- **Frontend:**
    - `views/catalog.html`: Adição de div's para o as funções de filtragem e pesquisa.
    - `assets/js/catalog.html` e `assets/js/details.js`: Adicionada lógica para o catálogo e detalhes de filmes.

### [1.2.0] - 07/01/2025
#### Added: 
- **Backend:**
    - `models/filmModel.php`: Adição de Director e Producer para popular o Db.
#### Changed:
- **Frontend:**
    - `assets/js/catalog.js`: Mudança na lógica para ordem dos filmes e uso de imagens.
    - `assets/css/styles.css`: Alteração nos estilos de catalog e details.  

### [2.0.0] - 08/01/2025
#### Added:
- **Frontend:**
    - `assets/js/catalog.js`: Lógica para pesquisar filmes e filtrar filmes (Episódio, Título e Data de lançamento).
    - `assets/js/details.js`: Lógica para calcular a idade do filme.
#### Changed:
- **Frontend:**
    - `assets/js/catalog.js`: Alteração de como os dados eram passados para `details.html`

### [2.1.0] - 09/01/2025
#### Added:
- **Docs:**
    - `changelog.md`: Adição e atualização do changelog.
    - `installation.md`: Adição e atualização de como instalar a aplicação.
    - `usage.md`: Adição e atualização do uso da aplicação.
#### Chaged:
- **Db:**
    - `star_wars.sql`: Atualização da estrutura da tabela films.

### [2.2.0] - 10/01/2025
#### Added
- **Db:**
    - `st_dump.sql`: Adição do dump da base de dados.
#### Changed
- **Frontend:**
    - `assets/css/styles.css`: Ajustes em proporções e disposição de elementos.
    - `views/catalog.html` e `views/details.html`: Alteração de nomes de classes e ids.
- **Backend:**
    - `models/filmModel.php`: Alteração no path usando DOCUMENTO_ROOT.
    - `controllers/filmController.php`: Alteração no path usando DOCUMENTO_ROOT.
- **Index.php:**
    - Alteração no path usando DOCUMENTO_ROOT.
