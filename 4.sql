-- задание 1

SELECT c.id, c.name, COUNT(DISTINCT ga.id_genre)
  FROM collection c
       JOIN track_collection tc 
       ON tc.id_collection = c.id 
            JOIN track t
            ON t.id = tc.id_track
                 JOIN album al 
                 ON al.id = t.id_album
                      JOIN album_artist aa 
                      ON aa.id_album = al.id 
                           JOIN artist ar
                           ON ar.id = aa.id_artist
                                JOIN genre_artist ga 
                                ON ga.id_artist = ar.id
 GROUP BY c.id;

-- задание 2

DELETE FROM track_collection
WHERE id_track = 2;

SELECT t.name
  FROM track t
       LEFT JOIN track_collection tc 
       ON tc.id_track = t.id
 WHERE tc.id_track IS NULL;

-- задание 3

SELECT ar.stage_name, MIN(t.duration)
  FROM artist ar
       JOIN album_artist aa
       ON aa.id_artist = ar.id
            JOIN album al
            ON al.id = aa.id_album
                 JOIN track t
                 ON t.id_album = al.id
 WHERE t.duration = (SELECT MIN(duration) 
                       FROM track)
  GROUP BY ar.id;

-- задание 4
 
CREATE TABLE artist_tracknum
AS SELECT a.name aname, COUNT(*) track_num
     FROM album a
     LEFT JOIN track t
     ON t.id_album = a.id
    GROUP BY a.id;
 
SELECT aname
  FROM artist_tracknum
 WHERE track_num = (SELECT MIN(track_num) 
                      FROM artist_tracknum);

DROP TABLE artist_tracknum;