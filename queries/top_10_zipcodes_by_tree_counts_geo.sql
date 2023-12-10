

SELECT z.zipcode, COUNT(t.id) AS tree_count
FROM nyc_tree AS t
JOIN nyc_zipcode AS z ON ST_Contains(z.geometry, t.geometry)
GROUP BY z.zipcode
ORDER BY 2 DESC
LIMIT 10

