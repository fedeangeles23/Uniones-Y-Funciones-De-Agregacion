
// Micro Desafío - Paso 1
select title, genre_id, name from series inner join genres where movies.genre_id = genres.id;
select actor_id, first_name, last_name, episode_id, title from actor_episode inner join episodes inner join actors;

// Micro Desafío - Paso 2
select DISTINCT first_name , last_name from actors inner join movies where title like "%galaxias%";

// Micro Desafío - Paso 3
select movies.id, title, coalesce(genre_id, 'no tiene genero'), name from movies inner join genres order by movies.genre_id and genres.id;

// Micro Desafío - Paso 4
select id, title, datediff(release_date, end_date) as duracion from series;

// Micro Desafío - Paso 5
select first_name from actors where length(first_name) > 6
SELECT count(*) FROM movies_db.episodes;
SELECT series.title, count(seasons.id) as seasons FROM movies_db.series inner join seasons on serie_id = series.id group by series.title;
SELECT genres.name, count(movies.id) as movies 
FROM movies_db.genres inner join movies on genre_id = genres.id group by genres.name having count(movies.id) >= 3;