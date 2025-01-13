const urlParams = new URLSearchParams(window.location.search);
const episodeId = urlParams.get('id');

$(document).ready(function () {
    $.get(`http://localhost/L5_SW_TEST/backend/models/filmModel.php?episode_id=${episodeId}`, function (data) {
        console.log(data);
        if (data && data.films && data.films.length > 0) {
            const film = data.films[0];

            // Setando os detalhes do filme
            $('#page-title').text(`${film.title} details`);
            $('#film-title').text(film.title);
            $('#film-poster').attr('src', film.images);
            $('#film-episode').text(`Episode: ${film.episode_id}`);
            $('#film-sinopsis').text(film.description);
            $('#film-releaseDate').text(`Release date: ${film.release_date}`);
            $('#film-director').text(`Director(s): ${film.director}`);
            $('#film-producers').text(`Producer(s): ${film.producer}`);
            $('#film-characters').text(`Character(s): ${film.characters}`);
            
            
            const releaseDate = new Date(film.release_date);
            const currentDate = new Date();

            const diffYears = currentDate.getFullYear() - releaseDate.getFullYear();
            const diffMonths = (currentDate.getMonth() + 12) - releaseDate.getMonth() - (currentDate.getDate() < releaseDate.getDate() ? 1 : 0);
            const diffDays = (currentDate.getDate() >= releaseDate.getDate() ? 0 : new Date(currentDate.getFullYear(), currentDate.getMonth(), 0).getDate()) + currentDate.getDate() - releaseDate.getDate();

            $('#film-age').text(`Age: ${diffYears} year(s), ${diffMonths % 12} month(s), and ${diffDays} day(s)`);

        } else {
            $('#film-details').append('<p>Filme não encontrado.</p>');
        }
    }).fail(function () {
        $('#film-details').append('<p>Erro ao carregar os detalhes do filme.</p>');
    });
});
