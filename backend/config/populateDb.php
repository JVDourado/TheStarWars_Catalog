<?php

    require_once '../config/database.php';

    $imageLinks = [
        1 => 'https://m.media-amazon.com/images/M/MV5BODVhNGIxOGItYWNlMi00YTA0LWI3NTctZmQxZGUwZDEyZWI4XkEyXkFqcGc@._V1_.jpg', 
        2 => 'https://m.media-amazon.com/images/M/MV5BNTgxMjY2YzUtZmVmNC00YjAwLWJlODMtNDBhNzllNzIzMjgxXkEyXkFqcGc@._V1_.jpg',
        3 => 'https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_FMjpg_UX1000_.jpg', 
        4 => 'https://resizing.flixster.com/rIic1xQq9hyHMW6OJsCNOCVKRdw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzQ4Y2VkZjJhLWRmMGYtNDljZC1iN2JhLTYzMjk1YzMxNWMwOC53ZWJw', // Episode I
        5 => 'https://m.media-amazon.com/images/M/MV5BMTkxNGFlNDktZmJkNC00MDdhLTg0MTEtZjZiYWI3MGE5NWIwXkEyXkFqcGc@._V1_.jpg', 
        6 => 'https://m.media-amazon.com/images/M/MV5BNWEwOTI0MmUtMGNmNy00ODViLTlkZDQtZTg1YmQ3MDgyNTUzXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'
    ];

    function populateFilms() {
        global $imageLinks;
        
        $apiUrl = 'https://www.swapi.tech/api/films';
        
        $response = file_get_contents($apiUrl);
        if ($response === false) {
            die("Error fetching data from SWAPI.");
        }

        // Decode the JSON response from the SWAPI
        $films = json_decode($response, true)['result'];

        $db = (new Database())->getConnection();

        foreach ($films as $film) {
            $title = $film['properties']['title'];
            $episode_id = $film['properties']['episode_id'];
            $release_date = $film['properties']['release_date'];
            $description = isset($film['properties']['opening_crawl']) ? $film['properties']['opening_crawl'] : '';
            $producer = $film['properties']['producer'];
            $director = $film['properties']['director'];
            
            // Check if film already exists based on episode_id
            $checkQuery = "SELECT COUNT(*) FROM films WHERE episode_id = :episode_id";
            $stmt = $db->prepare($checkQuery);
            $stmt->bindParam(':episode_id', $episode_id);
            $stmt->execute();
            $filmCount = $stmt->fetchColumn();

            if ($filmCount > 0) {
                echo "Film '{$title}' already exists in the database. Skipping...<br>";
                continue;
            }

            $characters = $film['properties']['characters'];
            $characterNames = [];
            foreach ($characters as $characterUrl) {
                // Get character data from the SWAPI
                $characterResponse = file_get_contents($characterUrl);
                if ($characterResponse === false) {
                    die("Error fetching character data from SWAPI.");
                }

                $characterData = json_decode($characterResponse, true)['result'];
                $characterNames[] = $characterData['properties']['name'];
            }

            $characterNamesString = implode(", ", $characterNames);
            $imageURL = isset($imageLinks[$episode_id]) ? $imageLinks[$episode_id] : '';

            // Prepare SQL query to insert film data into the database
            $query = "INSERT INTO films (title, episode_id, release_date, description, characters, images) 
                    VALUES (:title, :episode_id, :release_date, :description, :characters, :images)";
            
            $stmt = $db->prepare($query);
            $stmt->bindParam(':title', $title);
            $stmt->bindParam(':episode_id', $episode_id);
            $stmt->bindParam(':release_date', $release_date);
            $stmt->bindParam(':description', $description);
            $stmt->bindParam(':producer', $producer);
            $stmt->bindParam(':director', $director);
            $stmt->bindParam(':characters', $characterNamesString);
            $stmt->bindParam(':images', $imageURL);

            if ($stmt->execute()) {
                echo "Film '{$title}' added successfully to the database.<br>";
            } else {
                echo "Failed to insert film '{$title}' into the database.<br>";
            }
        }
    }

    populateFilms();
?>
