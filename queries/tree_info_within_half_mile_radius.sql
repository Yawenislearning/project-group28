
SELECT t.id AS ID, t.spc_common AS species, t.health, t.status,ST_AsText(t.geometry) AS tree_point
FROM nyc_tree t
JOIN nyc_zipcode z ON ST_Contains(z.geometry, t.geometry::geometry)
WHERE ST_DWithin(ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326)::geography, t.geometry::geography, 804.672)
