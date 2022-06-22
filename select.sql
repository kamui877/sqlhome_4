select genre_name, count(musician_id)  from genres_musicians 
join genres on genres_musicians.genre_id=genres.genre_id 
group by genre_name

select release_date, count(music_id) from music 
join albums on music.album_id=albums.album_id 
group by release_date 
having release_date between 2019 and 2020

select album_name, avg(duration_sec) from music 
join albums on music.album_id=albums.album_id 
group by album_name

select distinct musician_name  from musicians_albums
join musicians on musicians_albums.musician_id=musicians.musician_id
join albums on musicians_albums.album_id=albums.album_id
where release_date != 2020

select distinct collection_name from collection_music 
join music on collection_music.music_id=music.music_id 
join collections on collection_music.collection_id=collections.collection_id  
join musicians_albums on music.album_id=musicians_albums.album_id 
join musicians on musicians_albums.musician_id=musicians.musician_id
where musician_name = 'Daft Punk'

select album_name from musicians_albums 
join albums on musicians_albums.album_id=albums.album_id 
join genres_musicians on musicians_albums.musician_id=genres_musicians.musician_id 
group by album_name 
having count(genre_id) > 1 

select music_name from collection_music 
right join music on collection_music.music_id=music.music_id 
group by music_name 
having count(collection_id) = 0

select musician_name, min(duration_sec) from musicians_albums 
join musicians on musicians_albums.musician_id=musicians.musician_id 
join music on musicians_albums.album_id=music.album_id 
group by musician_name 
having min(duration_sec) = (select min(duration_sec) from music)

select album_name, count(music_name) from music 
join albums on music.album_id=albums.album_id
group by album_name
having count(music_name) = (select min(mn_c) from (select count(music_name) as mn_c from music
join albums on music.album_id=albums.album_id
group by album_name) as a1)
