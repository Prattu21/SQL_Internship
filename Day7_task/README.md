# task7

## 🎯 Objective
To create and use *Views* in SQL for better data abstraction, reusability, and security.

## 🧩 Topics Covered
- Creating and querying views  
- Updating and dropping views  
- WITH CHECK OPTION  
- Understanding view limitations  

## 💻 Sample Queries
```sql
CREATE VIEW customer_summary AS
SELECT 
    c.customer_name,
    SUM(o.amount) AS total_spent
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_name;

SELECT * FROM customer_summary;
