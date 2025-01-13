<?php

require_once ($_SERVER['DOCUMENT_ROOT'] . '/L5_SW_Test/backend/models/filmModel.php');

class filmController {
    private $db;
    private $film;

    public function __construct() {
        $this->db = (new Database())->getConnection();
        $this->film = new Film($this->db);
    }

    public function listFilms() {
        // Retrieve the films from the model
        $films = $this->film->getAllFilms();

        // Pass the films to the view
        $this->renderFilmCatalog($films);
    }

    // Renders the catalog view (catalog.html) with films data
    private function renderFilmCatalog($films) {
        // Make the $films array available in the HTML view
        require_once ($_SERVER['DOCUMENT_ROOT'] . '/L5_SW_Test/frontend/views/catalog.html');
        // Alternatively, if using a templating engine, you could pass $films here
    }
}
?>
