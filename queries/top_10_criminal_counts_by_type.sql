
SELECT z.zipcode, COUNT(*) AS n_arrest
FROM nypd as p
JOIN nyc_zipcode as z 
ON ST_Contains(z.geometry, p.geometry)
where arrest_date>= DATE '2023-03-01'
AND arrest_date <= DATE '2023-03-31'
GROUP BY z.zipcode
ORDER BY 2 DESC
LIMIT 10
