SELECT 
    c.email,
    ci.product_id
FROM 
    customers c
INNER JOIN 
    carts cart ON c.id = cart.customer_id
INNER JOIN 
    cart_items ci ON cart.id = ci.cart_id
WHERE 
    c.is_active = true
ORDER BY 
    c.email ASC;