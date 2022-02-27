select genre_id, count(*) from artists_genres group by genre_id;

select count(*) from albums
join tracks on albums.id = tracks.album_id
where albums.release_date in ('2019', '2020');

select album_name, round(avg(track_duration), 2) as average_track_duration
from albums
join tracks on albums.id = tracks.album_id
group by album_name;

select distinct artist_name
from artists
join albums_artists on artists.id = albums_artists.artist_id
join albums on albums_artists.album_id = albums.id
where release_date != '2020';

select compilation_name
from artists
join albums_artists on artists.id = albums_artists.artist_id
join albums on albums_artists.album_id = albums.id
join tracks on albums.id = tracks.album_id
join compilations_info on tracks.id = compilations_info.track_id
join compilations on compilations_info.compilation_id = compilations.id
where artist_name = '3B';

select album_name
from artists
join albums_artists on artists.id = albums_artists.artist_id
join albums on albums_artists.album_id = albums.id
where artist_name in (select artist_name
from artists
join artists_genres on artists_genres.artist_id = artists.id
group by artist_name
having count(genre_id) >= 2);

select track_name
from tracks
left join compilations_info on tracks.id = compilations_info.track_id
where compilation_id is null;

select artist_name
from artists
join albums_artists on artists.id = albums_artists.artist_id
join albums on albums_artists.album_id = albums.id
join tracks on albums.id = tracks.album_id
where track_duration = (select min(track_duration) from tracks);

select album_name from albums
join tracks on albums.id = tracks.album_id
group by album_name 
having count(album_id) = (select min(result.count_) 
from (select album_id, COUNT(album_id) as count_ 
from albums 
join tracks on albums.id = tracks.album_id group by album_id) as result);









