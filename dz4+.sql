CREATE TABLE IF NOT EXISTS artists (
    id SERIAL NOT NULL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
);

insert into artists (id, artist_name) values (1, 'Big Mike');
insert into artists (id, artist_name) values (2, 'Salty pepper');
insert into artists (id, artist_name) values (3, 'Oggy');
insert into artists (id, artist_name) values (4, 'Lucky Luke');
insert into artists (id, artist_name) values (5, 'Green Lantern');
insert into artists (id, artist_name) values (6, 'Sheran');
insert into artists (id, artist_name) values (7, 'One colore rainbow');
insert into artists (id, artist_name) values (8, '3B');

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL NOT NULL PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL
);

insert into albums (id, album_name, release_date) values (1, 'I have been there', '2020');
insert into albums (id, album_name, release_date) values (2, 'Not today', '2020');
insert into albums (id, album_name, release_date) values (3, 'Natria', '2016');
insert into albums (id, album_name, release_date) values (4, 'Ketorolac', '2019');
insert into albums (id, album_name, release_date) values (5, 'Sunny Days', '2018');
insert into albums (id, album_name, release_date) values (6, 'Clarithromycin', '2020');
insert into albums (id, album_name, release_date) values (7, 'Good sense', '2016');
insert into albums (id, album_name, release_date) values (8, 'Doxycycline Hyclate', '2017');

CREATE TABLE IF NOT EXISTS albums_artists (
    id SERIAL NOT NULL PRIMARY KEY,
    album_id INT REFERENCES albums(id),
    artist_id INT REFERENCES artists(id)
);

insert into albums_artists (id, album_id, artist_id) values (1, 5, 8);
insert into albums_artists (id, album_id, artist_id) values (2, 4, 7);
insert into albums_artists (id, album_id, artist_id) values (3, 3, 6);
insert into albums_artists (id, album_id, artist_id) values (4, 2, 5);
insert into albums_artists (id, album_id, artist_id) values (5, 1, 4);
insert into albums_artists (id, album_id, artist_id) values (6, 8, 3);
insert into albums_artists (id, album_id, artist_id) values (7, 7, 2);
insert into albums_artists (id, album_id, artist_id) values (8, 6, 1);
insert into albums_artists (id, album_id, artist_id) values (9, 1, 8);
insert into albums_artists (id, album_id, artist_id) values (10, 5, 3);
insert into albums_artists (id, album_id, artist_id) values (11, 2, 1);


CREATE TABLE IF NOT EXISTS genres (
    id SERIAL NOT NULL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

insert into genres (id, genre_name) values (1, 'Classical');
insert into genres (id, genre_name) values (2, 'RnB');
insert into genres (id, genre_name) values (3, 'Jazz');
insert into genres (id, genre_name) values (4, 'Hip-Hop');
insert into genres (id, genre_name) values (5, 'Rap');

CREATE TABLE IF NOT EXISTS artists_genres (
    id SERIAL NOT NULL PRIMARY KEY,
    artist_id INT REFERENCES artists(id),
    genre_id INT REFERENCES genres(id)
);

insert into artists_genres (artist_id, genre_id) values (8, 1);
insert into artists_genres (artist_id, genre_id) values (7, 2);
insert into artists_genres (artist_id, genre_id) values (6, 3);
insert into artists_genres (artist_id, genre_id) values (5, 4);
insert into artists_genres (artist_id, genre_id) values (4, 5);
insert into artists_genres (artist_id, genre_id) values (3, 1);
insert into artists_genres (artist_id, genre_id) values (2, 2);
insert into artists_genres (artist_id, genre_id) values (1, 3);
insert into artists_genres (artist_id, genre_id) values (8, 4);
insert into artists_genres (artist_id, genre_id) values (7, 5);
insert into artists_genres (artist_id, genre_id) values (6, 1);

CREATE TABLE IF NOT EXISTS tracks (
    id SERIAL NOT NULL PRIMARY KEY,
    track_name VARCHAR(50) NOT NULL,
    track_duration INT NOT NULL,
    album_id INT REFERENCES albums(id)
);

insert into tracks (id, track_name, track_duration, album_id) values (1, 'Fluconazole', 183, 1);
insert into tracks (id, track_name, track_duration, album_id) values (2, 'Drowz Away', 225, 1);
insert into tracks (id, track_name, track_duration, album_id) values (3, 'Banana boat', 223, 2);
insert into tracks (id, track_name, track_duration, album_id) values (4, 'Pindolol', 239, 5);
insert into tracks (id, track_name, track_duration, album_id) values (5, 'Coly-Mycin S', 233, 3);
insert into tracks (id, track_name, track_duration, album_id) values (6, 'Haloperidol', 232, 1);
insert into tracks (id, track_name, track_duration, album_id) values (7, 'Famotidine', 192, 8);
insert into tracks (id, track_name, track_duration, album_id) values (8, 'Warfarin Sodium', 184, 6);
insert into tracks (id, track_name, track_duration, album_id) values (9, 'Womens Dry Eye', 214, 5);
insert into tracks (id, track_name, track_duration, album_id) values (10, 'Clinda', 229, 7);
insert into tracks (id, track_name, track_duration, album_id) values (11, 'Oxygen my soul', 222, 3);
insert into tracks (id, track_name, track_duration, album_id) values (12, 'Naproxen Sodium', 186, 4);
insert into tracks (id, track_name, track_duration, album_id) values (13, 'Loreal Paris Advanced', 234, 4);
insert into tracks (id, track_name, track_duration, album_id) values (14, 'Oscar de la Renta', 191, 8);
insert into tracks (id, track_name, track_duration, album_id) values (15, 'Johnson my Grass', 235, 6);

CREATE TABLE IF NOT EXISTS compilations (
    id SERIAL NOT NULL PRIMARY KEY,
    compilation_name VARCHAR(50) NOT NULL,
    compilation_release_date INT NOT NULL
);

insert into compilations (id, compilation_name, compilation_release_date) values (1, 'Promethazine', '2021');
insert into compilations (id, compilation_name, compilation_release_date) values (2, 'Safeway', '2016');
insert into compilations (id, compilation_name, compilation_release_date) values (3, 'Alprazolam', '2018');
insert into compilations (id, compilation_name, compilation_release_date) values (4, 'Ropinirole Hydrochloride', '2019');
insert into compilations (id, compilation_name, compilation_release_date) values (5, 'Cucumber Melon Hand Sanitizer', '2018');
insert into compilations (id, compilation_name, compilation_release_date) values (6, 'Extra Strength Acetaminophen', '2017');
insert into compilations (id, compilation_name, compilation_release_date) values (7, 'Cardioforce', '2021');
insert into compilations (id, compilation_name, compilation_release_date) values (8, 'SUNFADER', '2017');

CREATE TABLE IF NOT EXISTS compilations_info (
    id SERIAL NOT NULL PRIMARY KEY,
    compilation_id INT REFERENCES compilations(id),
    track_id INT REFERENCES tracks(id)
);

insert into compilations_info (compilation_id, track_id) values (1, 1);
insert into compilations_info (compilation_id, track_id) values (2, 2);
insert into compilations_info (compilation_id, track_id) values (3, 3);
insert into compilations_info (compilation_id, track_id) values (4, 4);
insert into compilations_info (compilation_id, track_id) values (5, 5);
insert into compilations_info (compilation_id, track_id) values (6, 6);
insert into compilations_info (compilation_id, track_id) values (7, 7);
insert into compilations_info (compilation_id, track_id) values (8, 8);
insert into compilations_info (compilation_id, track_id) values (1, 9);
insert into compilations_info (compilation_id, track_id) values (2, 10);
insert into compilations_info (compilation_id, track_id) values (3, 11);
insert into compilations_info (compilation_id, track_id) values (4, 12);
insert into compilations_info (compilation_id, track_id) values (5, 13);
insert into compilations_info (compilation_id, track_id) values (6, 2);
insert into compilations_info (compilation_id, track_id) values (7, 1);
insert into compilations_info (compilation_id, track_id) values (8, 1);
