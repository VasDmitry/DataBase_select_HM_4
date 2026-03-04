-- Задание 1
-- Заполняем таблицу жанров (Genres)
INSERT INTO Genres(genre_id, genre_name)
     VALUES (1, 'rock'),
            (2, 'pop'),
            (3, 'hip-hop'),
            (4, 'punk-rock'),
            (5, 'metal'),
            (6, 'alternative'),
            (7, 'indie'),
            (8, 'electronic'),
            (9, 'rap'),
            (10, 'funk'),
            (11, 'pop-punk'),
            (12, 'gothic metal'),
            (13, 'doom metal'),
            (14, 'melodic death metal'),
            (15, 'trip-hop'),
            (16, 'classic');

-- Заполняем таблицу исполнителей (Artists)
INSERT INTO Artists(artist_id, artist_name)
     VALUES (1, 'Green Day'),
            (2, 'twenty one pilots'),
            (3, 'Gorillaz'),
            (4, 'Moonspell'),
            (5, 'Red Hot Chili Peppers');

-- Заполняем таблицу альбомов (Albums)
INSERT INTO Albums(album_id, album_name, release_year)
     VALUES 
            -- Green Day
            (1, 'Saviors', '2024-01-19'),
            (2, 'Father of All Motherfuckers', '2020-02-07'),
            (3, 'Revolution Radio', '2016-10-07'),            
            -- twenty one pilots
            (4, 'Breach', '2025-12-09'),
            (5, 'Clancy', '2024-05-24'),
            (6, 'Blurryface', '2015-05-17'),            
            -- Gorillaz
            (7, 'The Mountain', '2026-02-27'),
            (8, 'The Now Now', '2018-06-29'),
            (9, 'Demon Days', '2005-05-11'),            
            -- Moonspell
            (10, 'Hermitage', '2021-02-26'),
            (11, '1755', '2017-11-03'),
            (12, 'Darkness and Hope', '2001-12-31'),            
            -- Red Hot Chili Peppers
            (13, 'Return of the Dream Canteen', '2022-10-14'),
            (14, 'The Getaway', '2016-07-17'),
            (15, 'Stadium Arcadium', '2006-05-05');

-- Заполняем таблицу песен (songs)
INSERT INTO songs (song_name, album_id, duration)
VALUES
  -- Green Day – Saviors (2024) [album_id = 1]
  ('The American Dream Is Killing Me', 1, 213),
  ('Look Ma, No Brains!', 1, 165),
  ('Dilemma', 1, 198),
  ('Bobby Sox', 1, 187),
  ('Saviors', 1, 235),
  ('Father of All...', 1, 146),
  ('Fire, Ready, Aim', 1, 152),
  ('Oh Yeah!', 1, 178),
  ('Meet Me on the Roof', 1, 162),
  ('Coma', 1, 221),  
  -- Green Day – Father of All Motherfuckers (2020) [album_id = 2]
  ('Father of All...', 2, 146),
  ('Fire, Ready, Aim', 2, 152),
  ('Oh Yeah!', 2, 178),
  ('Meet Me on the Roof', 2, 162),
  ('I Was a Teenage Teenager', 2, 145),
  ('Stab You in the Heart', 2, 157),
  ('Sugar Youth', 2, 139),
  ('Graffitia', 2, 171),
  ('Junkies on a High', 2, 163),
  ('Take the Money and Crawl', 2, 167),
  -- Green Day – Revolution Radio (2016) [album_id = 3]
  ('Somewhere Now', 3, 288),
  ('Bang Bang', 3, 202),
  ('Revolution Radio', 3, 243),
  ('Say Goodbye', 3, 216),
  ('Too Dumb to Die', 3, 182),
  ('Troubled Times', 3, 231),
  ('Young Blood', 3, 194),
  ('Still Breathing', 3, 261),
  ('Avenue', 3, 224),
  ('Ordinary World', 3, 252),
  ('Forever Now', 3, 402),
  -- Twenty One Pilots – Breach (2025) [album_id = 4]
  ('City Walls', 4, 322),
  ('Rawfear', 4, 192),
  ('Drum Show', 4, 193),
  ('Garbage', 4, 186),
  ('The Contract', 4, 205),
  ('Downstairs', 4, 326),
  ('Robot Voices', 4, 237),
  ('Center Mass', 4, 228),
  ('Cottonwood', 4, 188),
  ('One Way', 4, 163),
  ('Days Lie Dormant', 4, 206),
  ('Tally', 4, 212),
  ('Intentions', 4, 135),
  -- Twenty One Pilots – Clancy (2024) [album_id = 5]
  ('Overcompensate', 5, 195),
  ('Next Semester', 5, 210),
  ('Good Day', 5, 183),
  ('Backslide', 5, 228),
  ('Vignette', 5, 128),
  ('Lavish', 5, 187),
  ('Morph', 5, 245),
  ('Holding On', 5, 212),
  ('Oldies Station', 5, 231),
  ('At the End of the Day', 5, 198),
  ('Redecorate', 5, 224),
  -- Twenty One Pilots – Blurryface (2015) [album_id = 6]
  ('Heavydirtysoul', 6, 238),
  ('Stressed Out', 6, 202),
  ('Ride', 6, 198),
  ('Fairly Local', 6, 193),
  ('Tear in My Heart', 6, 189),
  ('Lane Boy', 6, 252),
  ('The Judge', 6, 290),
  ('Doubt', 6, 213),
  ('Polarize', 6, 237),
  ('We Don’t Believe What’s on TV', 6, 155),
  ('Message Man', 6, 201),
  ('Hometown', 6, 218),
  ('Not Today', 6, 131),
  ('Goner', 6, 259),
  -- Gorillaz – The Mountain (2026) [album_id = 7]
  ('The Mountain', 7, 290),
  ('The Moon Cave', 7, 297),
  ('The Happy Dictator', 7, 284),
  ('The Hardest Thing', 7, 138),
  ('Orange County', 7, 208),
  ('The God of Lying', 7, 189),
  ('The Empty Dream Machine', 7, 340),
  ('The Manifesto', 7, 439),
  ('The Plastic Guru', 7, 194),
  ('Delirium', 7, 232),
  ('Damascus', 7, 244),
  ('The Shadowy Light', 7, 339),
  ('Casablanca', 7, 226),
  ('The Sweet Prince', 7, 273),
  ('The Sad God', 7, 289),
  -- Gorillaz – The Now Now (2018) [album_id = 8]
  ('Humility', 8, 237),
  ('Tranz', 8, 212),
  ('Hollywood', 8, 201),
  ('Kansas', 8, 225),
  ('Sorcererz', 8, 210),
  ('Idaho', 8, 198),
  ('Lake Zurich', 8, 225),
  ('Magic City', 8, 183),
  ('Fire Flies', 8, 205),
  ('One Percent', 8, 192),
  ('June 1st', 8, 155),
  ('The Now Now', 8, 223),
  -- Gorillaz – Demon Days (2005) [album_id = 9]
  ('Intro', 9, 22),
  ('Last Living Souls', 9, 209),
  ('Kids With Guns', 9, 284),
  ('O Green World', 9, 244),
  ('Dirty Harry', 9, 231),
  ('Feel Good Inc.', 9, 228),
  ('El Mañana', 9, 231),
  ('Every Planet We Reach Is Dead', 9, 240),
  ('November Has Come', 9, 228),
  ('All Alone', 9, 225),
  ('White Light', 9, 134),
  ('DARE', 9, 234),
  ('Fire Coming Out of the Monkey’s Head', 9, 219),
  ('Don’t Get Lost in Heaven', 9, 120),
  ('Demon Days', 9, 198),
  -- Moonspell – Hermitage (2021) [album_id = 10]
  ('The Greater Good', 10, 312),
  ('Common Prayers', 10, 274),
  ('All or Nothing', 10, 248),
  ('Apophthegmata', 10, 223),
  ('Mysterium', 10, 294),
  ('Solitarian', 10, 260),
  ('Sublimation', 10, 237),
  ('Hermitage', 10, 345),
  -- Moonspell – 1755 (2017) [album_id = 11]
  ('In Tremor Dei', 11, 362),
  ('Extinct', 11, 285),
  ('Event Horizon', 11, 320),
  ('1755', 11, 375),
  ('Desastre', 11, 338),
  ('Ruínas', 11, 292),
  ('Ambrosia', 11, 310),
  ('Interlúdio', 11, 120),
  ('Lanterna dos Afogados', 11, 350),
  ('Admirável Mundo Novo', 11, 365),
  -- Moonspell – Darkness and Hope (2001) [album_id = 12]
  ('Timeless Crime', 12, 320),
  ('Darkness and Hope', 12, 285),
  ('The Pain Is Still Mine', 12, 274),
  ('Nocturna', 12, 260),
  ('Firesight', 12, 295),
  ('Scorpion Flower', 12, 310),
  ('I Am Not the One', 12, 250),
  ('Ashes', 12, 330),
  ('Dreamcrime', 12, 240),
  ('Versus', 12, 275),
  ('Finisterra', 12, 360),
  -- Red Hot Chili Peppers – Return of the Dream Canteen (2022) [album_id = 13]
  ('Tippa My Tongue', 13, 252),
  ('Eddie', 13, 238),
  ('The Drummer', 13, 267),
  ('Not the One', 13, 245),
  ('Fake as Fu@k', 13, 198),
  ('Peace and Love', 13, 285),
  ('Californication Rerun', 13, 260),
  ('Here Ever After', 13, 272),
  ('Blu Angels', 13, 230),
  ('Psychedelic Spin', 13, 215),
  ('My Friends II', 13, 290),
  ('Baby Don’t You Know', 13, 205),
  ('Lil’ Miss Lover', 13, 190),
  ('Poster Child', 13, 220),
  ('Step Into the Light', 13, 240),
  -- Red Hot Chili Peppers – The Getaway (2016) [album_id = 14]
  ('The Getaway', 14, 322),
  ('Dark Necessities', 14, 262),
  ('We Turn Red', 14, 201),
  ('The Longest Wave', 14, 285),
  ('Goodbye Angels', 14, 295),
  ('Sick Love', 14, 255),
  ('Go Robot', 14, 340),
  ('Feasting on the Flowers', 14, 310),
  ('Detroit', 14, 275),
  ('This Ticonderoga', 14, 245),
  ('Encore', 14, 230),
  ('The Hunter', 14, 265),
  ('Dreams of a Samurai', 14, 335),
  -- Red Hot Chili Peppers – Stadium Arcadium (2006) [album_id = 15]
  ('Dani California', 15, 295),
  ('Snow (Hey Oh)', 15, 334),
  ('Charlie', 15, 290),
  ('Stadium Arcadium', 15, 310),
  ('Hump de Bump', 15, 240),
  ('She Looks to Me', 15, 275),
  ('Tell Me Baby', 15, 256),
  ('Slow Cheetah', 15, 265),
  ('Torture Me', 15, 230),
  ('Strip My Mind', 15, 285),
  ('Especially in Michigan', 15, 250),
  ('Warlocks', 15, 260),
  ('C’mon Girl', 15, 270),
  ('Wet Sand', 15, 365),
  ('Hey', 15, 245),
  ('Desecration Smile', 15, 290),
  ('Turn It Again', 15, 305),
  ('Death of a Martian', 15, 345);

-- Заполняем таблицу albums_artists
INSERT INTO albums_artists (artist_id, album_id)
VALUES
  -- Green Day (artist_id = 1)
  (1, 1),
  (1, 2),
  (1, 3),
  -- Twenty One Pilots (artist_id = 2)
  (2, 4),
  (2, 5),
  (2, 6),
  -- Gorillaz (artist_id = 3)
  (3, 7),
  (3, 8),
  (3, 9),
  -- Moonspell (artist_id = 4)
  (4, 10),
  (4, 11),
  (4, 12),
  -- Red Hot Chili Peppers (artist_id = 5)
  (5, 13),
  (5, 14),
  (5, 15); 
            
-- Заполняем таблицу genres_artists
INSERT INTO genres_artists (genre_id, artist_id)
VALUES
  -- Green Day (artist_id = 1)
  (4, 1),   -- punk-rock
  (11, 1),  -- pop-punk
  (1, 1),   -- rock
  (6, 1),   -- alternative
  -- twenty one pilots (artist_id = 2)
  (6, 2),   -- alternative
  (7, 2),   -- indie
  (2, 2),   -- pop
  (1, 2),   -- rock
  (3, 2),   -- hip-hop
  (9, 2),   -- rap
  -- Gorillaz (artist_id = 3)
  (6, 3),   -- alternative
  (15, 3),  -- trip-hop
  (8, 3),   -- electronic
  (2, 3),   -- pop
  (1, 3),   -- rock
  -- Moonspell (artist_id = 4)
  (5, 4),   -- metal
  (12, 4),  -- gothic metal
  (13, 4),  -- doom metal
  (14, 4),  -- melodic death metal
  -- Red Hot Chili Peppers (artist_id = 5)
  (1, 5),   -- rock
  (10, 5),  -- funk
  (6, 5),   -- alternative
  (2, 5);   -- pop
  
  -- Заполняем таблицу сборников (compilations)
INSERT INTO compilations (compilation_name, release_year)
VALUES
  ('Alternative Rock Essentials', '2018-03-10'),
  ('Modern Punk & Pop-Punk Hits', '2024-06-15'),
  ('Electronic & Trip-Hop Vibes', '2026-06-20'),
  ('Metal Masters Collection', '2021-11-05'),
  ('Funk-Rock Fusion', '2023-04-12');
  
  -- Заполняем связующую таблицу между песнями и сборниками (compilations_songs)
INSERT INTO compilations_songs (song_id, compilation_id)
VALUES
  -- Alternative Rock Essentials (compilation_id = 1)
  (57, 1),
  (102, 1),
  (169, 1),
  (45, 1),
  -- Modern Punk & Pop-Punk Hits (compilation_id = 2)
  (1, 2),
  (2, 2),
  (3, 2),
  -- Electronic & Trip-Hop Vibes (compilation_id = 3)
  (85, 3),
  (102, 3),
  (70, 3),
  -- Metal Masters Collection (compilation_id = 4)
  (112, 4),
  (120, 4),
  (131, 4),
  -- Funk-Rock Fusion (compilation_id = 5)
  (141, 5),
  (157, 5),
  (143, 5);