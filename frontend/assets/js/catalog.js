$(document).ready(function () {
    $.get('http://localhost/L5_SW_TEST/backend/controllers/filmController.php', function (data) {
        console.log(data);

        if (data && data.films && data.films.length > 0) {
            let films = data.films;

            // Function to render films
            function renderFilms(filteredFilms) {
                $('#film-list').empty(); // Clear the list
                if (filteredFilms.length > 0) {
                    filteredFilms.forEach((film) => {
                        const bannerUrl = film.images || 'defaultImage.jpg';  // Fallback image if not available

                        $('#film-list').append(`
                            <li class="list-group-item">
                                <a href="../views/details.html?id=${film.episode_id}">
                                    <img src="${bannerUrl}" alt="Film poster: ${film.title}">
                                    <h5>${film.title}</h5>
                                </a>
                            </li>
                        `);
                    });
                } else {
                    $('#film-list').append('<li class="list-group-item">No films found.</li>');
                }
            }

            renderFilms(films);

            // Search filter functionality
            $('#search-bar').on('input', function() {
                console.log("Search input triggered.");
                const query = $(this).val().toLowerCase();
                const filteredFilms = films.filter(film => film.title.toLowerCase().includes(query));
                renderFilms(filteredFilms);
            });

            // Sorting functionality
            $('#sort-by').on('change', function() {
                console.log("Sort dropdown changed.");
                const sortBy = $(this).val();
                const sortedFilms = films.sort((a, b) => {
                    if (sortBy === 'title') {
                        return a.title.localeCompare(b.title);
                    } else if (sortBy === 'release_date') {
                        return new Date(a.release_date) - new Date(b.release_date);
                    } else if (sortBy === 'episode') {
                        return a.episode_id - b.episode_id;
                    }
                });
                renderFilms(sortedFilms);
            });

        } else {
            $('#film-list').append('<li class="list-group-item">No films found.</li>');
        }
    }).fail(function () {
        $('#film-list').append('<li class="list-group-item">Error loading films.</li>');
    });
});

