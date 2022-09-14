SELECT * FROM invoice_line
WHERE unit_price in (
    SELECT unit_price FROM invoice_line WHERE unit_price > 0.99
)

SELECT * FROM playlist
WHERE name in (
    SELECT name FROM playlist WHERE name = 'Music'
)

SELECT * FROM playlist AS p
JOIN playlist_track AS pt
ON p.playlist_id = pt.playlist_id
JOIN track AS t
ON pt.track_id = t.track_id
WHERE p.playlist_id IN (
    SELECT playlist_id FROM playlist WHERE playlist_id = 5
);

SELECT * FROM track AS t
JOIN genre AS g
ON t.genre_id = g.genre_id
WHERE t.genre_id IN (
    SELECT genre_id FROM genre WHERE name = 'Comedy'
);

SELECT * FROM track AS t
JOIN album AS a
ON t.album_id = a.album_id
WHERE a.album_id IN (
    SELECT album_id FROM album WHERE name = 'Fireball'
);

SELECT*FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE artist_id IN(
    SELECT artist_id
  	FROM artist
  	WHERE name='Queen'));