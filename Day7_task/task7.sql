select * from customers;
select * from orders;

#Create view
CREATE VIEW customer_orders AS
SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.order_date,
    o.amount
FROM 
    customers c
JOIN 
    orders o
ON 
    c.customer_id = o.customer_id;
    
    select * from customer_orders;

#Abstract view
CREATE VIEW customer_summary AS
SELECT 
    c.customer_name,
    c.city,
    SUM(o.amount) AS total_spent
FROM 
    customers c
JOIN 
    orders o
ON 
    c.customer_id = o.customer_id
GROUP BY 
    c.customer_name, c.city;
    
    #Use the View for Abstraction
    SELECT * FROM customer_summary;
    
    #Security (Restrict Access)
    REVOKE SELECT ON customers FROM public;
REVOKE SELECT ON orders FROM public;

GRANT SELECT ON customer_summary TO public;


