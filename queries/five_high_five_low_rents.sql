
WITH tree AS (
    SELECT zipcode, COUNT(*) AS tree_count
    FROM nyc_tree
    GROUP BY zipcode
),
complaint AS (
    SELECT zipcode, COUNT(*) AS complaint_count
    FROM nyc_311
    GROUP BY zipcode
)

(SELECT zillow.zipcode, 
       TO_CHAR(rent, '9,999,999,999.99') AS average_rent,
       COALESCE(tree.tree_count, 0) AS tree_count,
       COALESCE(complaint.complaint_count, 0) AS complaint_count
FROM zillow
LEFT JOIN tree ON tree.zipcode = zillow.zipcode
LEFT JOIN complaint ON complaint.zipcode = zillow.zipcode
WHERE date = '2023-01-31'
ORDER BY 2 DESC
LIMIT 5)

UNION ALL

(SELECT zillow.zipcode, 
       TO_CHAR(rent, '9,999,999,999.99') AS average_rent,
       COALESCE(tree.tree_count, 0) AS tree_count,
       COALESCE(complaint.complaint_count, 0) AS complaint_count
FROM zillow
LEFT JOIN tree ON tree.zipcode = zillow.zipcode
LEFT JOIN complaint ON complaint.zipcode = zillow.zipcode
WHERE date = '2023-01-31'
ORDER BY 2
LIMIT 5)
