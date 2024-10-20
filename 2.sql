-- задание 1

SELECT name, duration
  FROM track
 WHERE duration = (SELECT MAX(duration) 
                     FROM track);
            
-- задание 2
                    
SELECT name
  FROM track
 WHERE duration >= 210;

-- задание 3

UPDATE collection 
   SET year = 2018
 WHERE id = 1;


UPDATE collection 
   SET year = 2020
 WHERE id = 4;


SELECT name
  FROM collection
 WHERE year BETWEEN 2018 AND 2020;

-- задание 4 

SELECT stage_name
  FROM artist
 WHERE stage_name NOT LIKE '% %'
   AND stage_name NOT LIKE '%,%'
   AND stage_name NOT LIKE '%.%';

-- задание 5
-- способ 1
  
SELECT name
  FROM track
 WHERE name ILIKE 'my %'
 	OR name ILIKE '% my'
 	OR name ILIKE 'my'
 	OR name ILIKE '% my %'
 	OR name ILIKE 'мой %'
    OR name ILIKE '% мой'
 	OR name ILIKE 'мой'
 	OR name ILIKE '% мой %';
 	
 -- способ 2
 
SELECT name
  FROM track
 WHERE string_to_array(lower(name), ' ') && array['my', 'мой'];

-- способ 3

SELECT name
  FROM track
 WHERE name ~* '\m(my|мой)\M';
 