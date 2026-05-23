SELECT 
    order_status, 
    COUNT(id) AS order_count
FROM 
    orders
GROUP BY 
    order_status
ORDER BY 
    order_count DESC;