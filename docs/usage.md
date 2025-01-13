# Usage Guide

## Funcionalidades Disponíveis:

1. **Catálogo de Filmes:**
    - Pesquisa de filmes.
    - Filtragem de filmes.
    - Exibição de uma lista de filmes com título e poster.


2. **Detalhes do Filme:**
    - Poster do filme.
    - Episódio.
    - Descrição.
    - Data de lançamento e idade.
    - Produtor e Diretor.
    - Personagens.

## Navegação:

- **Catálogo:** Acesse [http://localhost/L5\_SW\_TEST/frontend/views/catalog.html](http://localhost/L5_SW_TEST/frontend/views/catalog.html).
- **Pesquisa:** Clique na barra de pesquisa e digite uma palavra ou o nome completo do filme
- **Ordenação:** Selecione no dropdown a opção de ordenar filme por episódio, título ou data de lançamento. 
- **Detalhes:** Clique em um filme no catálogo para visualizar detalhes adicionais.

## AJAX e Interatividade:

- A interação entre o frontend e backend utiliza AJAX para carregar dados dinamicamente sem recarregar a página.
- Os dados são fornecidos por endpoints no backend, como `filmController.php` e `filmModel.php`, que retornam informações no formato JSON.


