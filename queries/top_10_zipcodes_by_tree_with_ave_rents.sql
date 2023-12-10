
WITH most_tree AS (
    SELECT zipcode,sum(id) AS n_tree
    FROM nyc_tree
    GROUP BY zipcode 
    ORDER BY n_tree DESC
    LIMIT 10
    )

SELECT most_tree.zipcode,TO_CHAR(zillow.rent, 'FM999G999D99') AS avg_rent
FROM most_tree 
LEFT JOIN zillow 
ON most_tree.zipcode = zillow.zipcode
WHERE zillow.date = '2023-08-31'
