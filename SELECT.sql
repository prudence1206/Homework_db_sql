select song_name,song_duration 
FROM songs_albums
where song_duration = (select max(song_duration) from songs_albums); 

SELECT song_name, song_duration
FROM songs_albums
WHERE song_duration > '00:03:30';

select mix_tape_name
from mix_tape
where mix_tape_year >= '2018' and mix_tape_year <= '2020';

select singers_name
from singers_name
where singers_name not like '% %';

select song_name
from songs_albums
where song_name like '%my%' or song_name like '%мой%';

SELECT gen_id  , COUNT(*) FROM singers_generes
GROUP BY gen_id  
ORDER BY COUNT(*) DESC;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT album_name, COUNT(song_name) from albums a  
JOIN songs_albums sa ON a.album_id  = sa.als_id
where a.album_year =2019 or a.album_year = 2020
group by album_name;

--Средняя продолжительность треков по каждому альбому.
SELECT album_name, avg(song_duration) from albums a  
JOIN songs_albums sa ON a.album_id  = sa.als_id
group by album_name;
--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT singers_name from singers_name sn  
JOIN albums a  ON a.album_id  = sn.singers_id 
where a.album_year !=2019 and a.album_year != 2020
group by singers_name;
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT mix_tape_name from mix_tape mt  
JOIN songs_albums sa  ON sa.songs_id = mt.mix_tape_id
JOIN albums a  ON a.album_id  = sa.als_id 
JOIN singers_name sn  ON sn.singers_id  = a.album_id 
where singers_name = 'Metallica'
group by mix_tape_name;