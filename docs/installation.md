# Installation Guide

## Requisitos:

1. **XAMPP:**
   - Servidor Apache e MySQL integrados.
2. **PHP:**
   - Versão 7.4 (já incluída no XAMPP).
3. **MySQL:**
   - Gerenciado pelo XAMPP.
4. **Navegador:**
   - Para acessar a interface da aplicação.

## Passos de Instalação:

### 1. Configure o banco de dados:

- Inicie o XAMPP e certifique-se de que os serviços Apache e MySQL estão ativos.
- Acesse o **phpMyAdmin** pelo navegador em [http://localhost/phpmyadmin](http://localhost/phpmyadmin).
- Crie um banco de dados chamado `star_wars`:

```sql
CREATE DATABASE starwars;
```

- Importe o arquivo `db/star_wars.sql` no **phpMyAdmin** para configurar a estrutura.

### 2. Atualize as configurações do banco de dados:

- Edite o arquivo `backend/config/database.php` para garantir que os dados correspondam à configuração do XAMPP:

```php
<?php
return [
    'host' => '127.0.0.1',
    'dbname' => 'star_wars',
    'user' => 'root',
    'password' => '' // Senha padrão do XAMPP
];
```

### 3. Configure o servidor:

- Coloque a pasta `L5_SW_TEST` no diretório `htdocs` do XAMPP.
- Acesse a aplicação em [http://localhost/L5\_SW\_TEST/frontend/views/catalog.html](http://localhost/L5_SW_TEST/frontend/views/catalog.html).

### 4. Popule o banco de dados:

- Certifique-se de que os serviços do XAMPP estão ativos e execute:

[http://localhost/L5\_SW\_TEST/frontend/views/catalog.html](http://localhost/L5_SW_TEST/frontend/views/catalog.html)
