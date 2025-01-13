<?php

class Film {
    private $conn;
    private $table_name = 'films';

    public $id;
    public $title;
    public $episode_id;
    public $release_date;
    public $description;
    public $producer;
    public $director;
    public $characters;
    public $images;

    public function __construct($db) {
        $this->conn = $db;
    }

    // Buscar um filme específico por episode_id
    public function getFilmByEpisodeId($episode_id) {
        error_log("Fetching film with episode_id: " . $episode_id);
    
        $query = "SELECT * FROM " . $this->table_name . " WHERE episode_id = :episode_id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':episode_id', $episode_id, PDO::PARAM_INT);
        $stmt->execute();
    
        return $stmt;
    }

    // Buscar e retornar filme como JSON
    public function fetchFilmByEpisodeIdAsJson($episode_id) {
        $stmt = $this->getFilmByEpisodeId($episode_id);
    
        if ($stmt->rowCount() === 1) {
            $row = $stmt->fetch(PDO::FETCH_ASSOC);
            $film_item = array(
                "id" => $row['id'],
                "title" => $row['title'],
                "episode_id" => $row['episode_id'],
                "release_date" => $row['release_date'],
                "description" => $row['description'],
                "characters" => $row['characters'],
                "images" => $row['images'],
                "producer" => $row['producer'],
                "director" => $row['director']
            );
    
            // Set the header to application/json
            header('Content-Type: application/json');
            echo json_encode(["films" => [$film_item]]);
        } else {
            // Handle cases where no film is found
            http_response_code(404);
            echo json_encode(["message" => "Filme não encontrado."]);
        }
    }

    // Buscar todos os filmes
    public function getAllFilms() {
        $query = "SELECT * FROM " . $this->table_name . " ORDER BY episode_id ASC";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }

    // Buscar filmes e retornar como JSON
    public function fetchFilmsAsJson() {
        $stmt = $this->getAllFilms();
        $films_arr = array();
        $films_arr["films"] = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            extract($row);
            $film_item = array(
                "id" => $id,
                "title" => $title,
                "episode_id" => $episode_id,
                "release_date" => $release_date,
                "description" => $description,
                "characters" => $characters,
                "images" => $images,
                "producer" => $producer,
                "director" => $director
            );
            array_push($films_arr["films"], $film_item);
        }

        // Set the header to application/json
        header('Content-Type: application/json');
        // Return the films as a JSON response
        echo json_encode($films_arr);
    }
}

include_once ($_SERVER['DOCUMENT_ROOT'] . '/L5_SW_Test/backend/config/database.php');
$database = new Database();
$db = $database->getConnection();

$film = new Film($db);

if (isset($_GET['episode_id'])) {
    $film->fetchFilmByEpisodeIdAsJson($_GET['episode_id']);
} else {
    $film->fetchFilmsAsJson();
}

?>
