insert into genres (genre_name) values 
('R&B'),
('Pop'),
('Rock'),
('Hip-Hop'),
('Electronic');

insert into musicians (musician_name) values 
('The Weeknd'),
('Post Malone'),
('Lana Del Rey'),
('Guns N'' Roses'),
('Prodigy'),
('Daft Punk'),
('Adele'),
('AC-DC');

insert into genres_musicians values
(1, 1),
(2, 3),
(2, 7),
(3, 4),
(3, 8),
(4, 1),
(4, 2),
(5, 5),
(5, 6);

insert into albums (album_name, release_date) values
('Power Up', 2020),
('Greatest Hits', 2012),
('Random Access Memories', 2013),
('No Tourists', 2018),
('Chinese Democracy', 2008),
('Born To Die', 2012),
('One Right Now', 2021),
('Dawn FM', 2022);

insert into musicians_albums values
(1, 8),
(1, 7),
(2, 7),
(3, 6),
(4, 5),
(5, 4),
(6, 3),
(7, 2),
(8, 1);

insert into music (music_name, duration_sec, album_id) values
('Sacrifice', 189, 8),
('Don’t Break My Heart', 206, 8),
('One Right Now', 194, 7),
('Lucky Ones',227, 6),
('Summertime Sadness', 256, 6),
('Shackler''s Revenge', 217, 5),
('Light Up the Sky', 199, 4),
('Champions of London', 289, 4),
('Within', 228, 3),
('Beyond', 290, 3),
('Instant Crush', 337, 3),
('Someone Like You', 285, 2),
('Right as Rain', 197, 2),
('Money Shot', 185, 1),
('Realize', 217, 1),
('Starry Eyes', 148, 8);

insert into collections (collection_name, release_date) values 
('Music 2008-2012', 2013),
('Music 2013-2018', 2018),
('Music 2020-2022', 2022),
('Rock music', 2020),
('Electronic music', 2018),
('Hip-Hop music', 2022),
('3-4 min music', 2022),
('4+ min music', 2022);

insert into collection_music values
(1, 4),
(1, 5),
(1, 6),
(1, 12),
(1, 13),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 1),
(3, 2),
(3, 3),
(3, 14),
(3, 15),
(4, 6),
(4, 14),
(4, 15),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 6),
(7, 7),
(7, 9),
(7, 13),
(7, 14),
(7, 15),
(8, 5),
(8, 8),
(8, 10),
(8, 11),
(8, 12);