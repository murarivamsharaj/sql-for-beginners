SELECT 
    id AS order_id,
    ROUND(total_amount, 2) AS total_amount,
    SUBSTRING(CAST(ordered_at AS VARCHAR), 1, 19) AS ordered_at
FROM 
    orders
WHERE 
    order_status = 'Delivered'
    AND total_amount > 150.00
ORDER BY 
    ordered_at DESC;