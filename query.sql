SELECT * FROM pop_places LIMIT 10

SELECT name, pop_max, pop_min FROM pop_places WHERE sov0name = 'Uruguay'

SELECT * FROM geometry_columns;

SELECT name, ST_GeometryType(geom), ST_NDims(geom), ST_SRID(geom)  FROM pop_places;

SELECT name, ST_X(geom), ST_Y(geom), ST_SRID(geom), ST_AsText(geom) FROM pop_places WHERE name = 'Trinidad'

SELECT ST_Area(geom) From admin Where name='Angola'

SELECT SUM(ST_Length(geom)) FROM roads

---

SELECT name
FROM 