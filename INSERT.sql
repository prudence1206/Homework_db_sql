DELETE FROM mix_tape_songs;
DELETE FROM mix_tape;
DELETE FROM songs_albums;
DELETE FROM albums_singers; 
DELETE FROM albums;
DELETE FROM singers_generes;
DELETE FROM singers_name;
DELETE FROM generes;

INSERT INTO generes
VALUES
(1, 'metal'),
(2, 'pop'),
(3, 'rock'),
(4, 'hip-hop');

INSERT INTO singers_name
VALUES
(1, 'Metallica'),
(2, 'Justin Bieber'),
(3, 'RHCP'),
(4, 'Eminem');

INSERT INTO singers_generes
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO albums
VALUES
(1, '...And Justice for all', '01:05:22', '1989'),
(2, 'Believe', 	'00:48:09', '2020'),
(3, 'Californication', '00:56:24', '2019'),
(4, 'Encore', '01:16:40', '2018');

INSERT INTO albums_singers
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO songs_albums
VALUES
(1, 1, 'Blackened', '00:06:42'),
(2, 1,'…And Justice for All', '00:09:45'),
(3, 1, 'Eye of the Beholder', '00:06:25'),
(4, 1, 'One', '00:07:26'),
(5, 1,	'The Shortest Straw', '00:06:35'),
(6, 2, 'Track2','00:06:35'),
(7, 2,'Track3','00:06:35'),
(8, 3,'Track4','00:06:35'),
(9, 3,'Track5','00:06:35'),
(10, 4,'Track6','00:06:35'),
(11, 4,'мой','00:06:35'),
(12, 4,'my guitar','00:06:35');

INSERT INTO mix_tape
VALUES
(1, 'BEST of Grammys', '2018'),
(2, '2000-th', 	'2005'),
(3, 'Mashup 2020', '2020'),
(4, 'Best of the best', '2019');

INSERT INTO mix_tape_songs
VALUES
(1, 10),
(1, 9),
(1, 8),
(2, 7),
(2, 6),
(2, 5),
(3, 4),
(3, 3),
(3, 11),
(4, 2),
(4, 1),
(4, 12);
