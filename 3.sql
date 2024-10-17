-- задание 1

SELECT g.id, g.name, COUNT(*) 
  FROM genre g
       LEFT JOIN genre_artist ga 
       ON g.id = ga.id_genre
 GROUP BY g.id;

-- задание 2

SELECT COUNT(*)
  FROM track t
       JOIN album a 
       ON t.id_album = a.id
 WHERE a.year BETWEEN 2019 AND 2020;

-- задание 3

SELECT a.id, a.name, AVG(t.duration) 
  FROM album a
       LEFT JOIN track t 
       ON t.id_album = a.id
 GROUP BY a.id;

-- задание 4

SELECT DISTINCT ar.stage_name
  FROM artist ar
       LEFT JOIN album_artist aa
       ON aa.id_artist = ar.id
            LEFT JOIN album al
            ON al.id = aa.id_album 
 WHERE al.year != 2020;

-- задание 5

SELECT DISTINCT c.name
  FROM collection c
       JOIN track_collection tc 
       ON tc.id_collection = c.id
            JOIN track t 
            ON tc.id_track = t.id
                 JOIN album al 
                 ON t.id_album = al.id
                      JOIN album_artist aa 
                      ON aa.id_album = al.id
                           JOIN artist ar 
                           ON ar.id = aa.id_artist 
 WHERE ar.stage_name = 'R.E.M.';


  