SELECT 
    name,
    ROUND(price, 2) AS price,
    ROUND(rating, 1) AS rating
FROM 
    products
WHERE 
    LOWER(name) LIKE '%monitor%'
    AND is_active = true
ORDER BY 
    price ASC;