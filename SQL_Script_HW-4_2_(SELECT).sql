-- Задание 2
-- 1. Название и продолжительность самого длительного трека
SELECT song_name, duration
  FROM songs
 WHERE duration = (SELECT MAX(duration) FROM songs);

-- 2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT song_name, duration
  FROM songs
 WHERE duration >= 210;

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT compilation_name
  FROM compilations
 WHERE release_year >= '2018-01-01' 
   AND release_year < '2021-01-01';

-- 4. Исполнители, чьё имя состоит из одного слова.
SELECT artist_name
  FROM artists
 WHERE artist_name NOT LIKE '% %';
 
 -- 5. Название треков, которые содержат слово «мой» или «my».
 SELECT song_name
   FROM songs 
  WHERE song_name ~* '\mmy\M|\mмой\M';
  
  -- Задание 3
  -- 1. Количество исполнителей в каждом жанре.
   SELECT g.genre_name, 
          COUNT(ga.artist_id)
     FROM genres_artists ga
LEFT JOIN genres g 
       ON ga.genre_id = g.genre_id
 GROUP BY g.genre_name;
  
  -- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
   SELECT COUNT(s.*)
     FROM songs s
LEFT JOIN albums a 
       ON s.album_id = a.album_id
    WHERE a.release_year >= '2019-01-01' 
      AND a.release_year <= '2020-12-31';
  
-- 3. Средняя продолжительность треков по каждому альбому.
   SELECT a.album_name, 	
          TO_CHAR((ROUND(AVG(s.duration)) || ' seconds')::INTERVAL, 'MI:SS') 
          AS song_avg_time
     FROM songs s
LEFT JOIN albums a
       ON s.album_id = a.album_id
 GROUP BY a.album_name;

-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.artist_name
  FROM artists ar
 WHERE ar.artist_id NOT IN 
      (SELECT al_ar.artist_id
         FROM albums_artists al_ar
         JOIN albums al ON al.album_id = al_ar.album_id 
        WHERE al.release_year >= '2020-01-01'
          AND al.release_year < '2021-01-01');

-- 5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT co.compilation_name
  FROM compilations co
  JOIN compilations_songs cs ON cs.compilation_id = co.compilation_id 
  JOIN songs s ON cs.song_id = s.song_id
  JOIN albums_artists al_ar ON s.album_id = al_ar.album_id
  JOIN artists a ON a.artist_id = al_ar.artist_id
 WHERE a.artist_name = 'Green Day';

-- Задание 4 (необязательное)
-- 1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
   SELECT al.album_name
     FROM albums al
LEFT JOIN albums_artists al_ar ON al.album_id = al_ar.album_id
LEFT JOIN artists ar ON ar.artist_id = al_ar.artist_id 
    WHERE (SELECT COUNT(ge_ar.artist_id) 
             FROM genres_artists ge_ar) > 1;
 
-- 2. Наименования треков, которые не входят в сборники.
SELECT s.song_name 
  FROM songs s
 WHERE s.song_id NOT IN 
       (SELECT cs.song_id 
          FROM compilations_songs cs);

-- 3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — 
-- теоретически таких треков может быть несколько.
SELECT a.artist_name
  FROM artists a
  JOIN albums_artists al_ar ON a.artist_id = al_ar.artist_id 
  JOIN songs s ON s.album_id = al_ar.album_id
 WHERE s.duration = 
       (SELECT MIN(s.duration) 
        FROM songs s);

-- 4. Названия альбомов, содержащих наименьшее количество треков.
  SELECT a.album_name, COUNT(*) AS songs_count
    FROM albums a
    JOIN songs s ON s.album_id = a.album_id
GROUP BY a.album_id 
  HAVING COUNT(*) = (
                     SELECT MIN(songs_count_in) 
                       FROM (
                             SELECT COUNT(*) AS songs_count_in 
                               FROM albums a_in
                               JOIN songs s_in ON s_in.album_id = a_in.album_id
                           GROUP BY a_in.album_id)
                    ); 