SELECT *
FROM artist;

SELECT *
FROM favorite_song;

-- NOTE: FROM clause = Left Table, JOIN clause = Right Table
-- INNER JOIN: Returns records that have matching values in both tables
SELECT *
FROM artist
INNER JOIN favorite_song
ON artist.artist_id = favorite_song.artist_id;



-- LEFT JOIN: Returns all records from the left table, and the matched records from the right table

-- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
SELECT *
FROM artist
RIGHT JOIN favorite_song
ON artist.artist_id = favorite_song.artist_id;

-- FULL JOIN: Returns all records
SELECT * 
FROM favorite_song
FULL OUTER JOIN artist
ON artist.artist_id = favorite_song.artist_id;


-- Does the left join make the from mean it right