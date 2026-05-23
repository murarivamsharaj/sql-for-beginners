-- Write a SQL query below --
SELECT 
    o.id AS order_id,
    c.email,
    ROUND(o.total_amount, 2) AS total_amount,
    p.payment_method
FROM 
    orders o
JOIN 
    customers c ON o.customer_id = c.id
JOIN 
    payments p ON o.id = p.order_id
WHERE 
    o.ordered_at >= '2023-10-01' 
    AND o.ordered_at < '2023-11-01'
    AND c.is_active = true
ORDER BY 
    o.id ASC;