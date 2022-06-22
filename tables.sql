CREATE TABLE Genres 
(
	genre_id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(30) NOT NULL  
);

CREATE TABLE Musicians
(
	musician_id SERIAL PRIMARY KEY,
	Musician_name VARCHAR(30) NOT NULL 
);

CREATE TABLE Albums
(
	album_id SERIAL PRIMARY KEY,
	Album_name VARCHAR(30) NOT NULL,
	Release_date INT
);

CREATE TABLE Genres_Musicians 
(
	genre_id INT REFERENCES Genres(genre_id),
	musician_id INT REFERENCES Musicians(musician_id),
	CONSTRAINT genres_musicians_pk PRIMARY KEY (genre_id, musician_id)
);

CREATE TABLE Musicians_Albums
(
	musician_id INT REFERENCES Musicians(musician_id),
	album_id INT REFERENCES Albums(album_id),
	CONSTRAINT musicians_albums_pk PRIMARY KEY (musician_id, album_id)
);

CREATE TABLE Music
(
	music_id SERIAL PRIMARY KEY,
	Music_name VARCHAR(30) NOT NULL,
	Duration_sec INT NOT NULL,
	album_id int REFERENCES Albums(album_id)
);

CREATE TABLE Collections
(
	collection_id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(30) NOT NULL,
	Release_date INT NOT NULL
);

CREATE TABLE Collection_Music
(
	collection_id INT REFERENCES Collections(collection_id),
	music_id INT REFERENCES Music(music_id),
	CONSTRAINT collection_music_pk PRIMARY KEY (collection_id, music_id)
);