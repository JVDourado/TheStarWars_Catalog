<?php
    // Including necessary files
    require_once './backend/config/database.php';
    require_once './backend/controllers/filmController.php';

    // Create an instance of filmController
    $controller = new filmController();

    // This will fetch films and return as JSON or a rendered view
    $controller->listFilms();  
?>
