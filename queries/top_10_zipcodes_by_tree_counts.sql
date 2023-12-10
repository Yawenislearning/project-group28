
SELECT zipcode,count(id)as n_tree
FROM nyc_tree
GROUP BY zipcode 
ORDER BY n_tree DESC
LIMIT 10
