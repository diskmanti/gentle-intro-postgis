SELECT * FROM pop_places LIMIT 10

SELECT name, pop_max, pop_min FROM pop_places WHERE sov0name = 'Uruguay'

SELECT * FROM geometry_columns;

SELECT name, ST_GeometryType(geom), ST_NDims(geom), ST_SRID(geom)  FROM pop_places;

SELECT name, ST_X(geom), ST_Y(geom), ST_SRID(geom), ST_AsText(geom) FROM pop_places WHERE name = 'Trinidad'

SELECT ST_Area(geom) From admin Where name='Angola'

SELECT SUM(ST_Length(geom)) FROM roads

---
--- dist => 1 unit = 10km
SELECT name 
FROM pop_places as p
Where ST_DWithin(
p.geom,
ST_GeomFromText('POINT(19.8291569 41.3213463)', 4326), 0.3) 


Select p.name 
from pop_places as p
join admin as a
on ST_Within(p.geom, a.geom)
Where a.sovereignt = 'Albania'