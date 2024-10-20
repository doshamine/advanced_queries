-- задание 1

SELECT DISTINCT al.name 
  FROM album al 
       JOIN album_artist aa 
       ON al.id = aa.id_album
            JOIN artist ar 
            ON ar.id = aa.id_artist
                 JOIN genre_artist ga 
                 ON ar.id = ga.id_artist 
 GROUP BY al.name, ga.id_artist 
HAVING COUNT(ga.id_genre) > 1;
            
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

SELECT a.name 
  FROM album a
       JOIN track t
       ON t.id_album = a.id
 GROUP BY a.id
HAVING COUNT(*) = (
     SELECT COUNT(*)
       FROM track t
      GROUP BY t.id_album 
      ORDER BY 1
      LIMIT 1
);