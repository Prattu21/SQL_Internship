## Scalar Subquery
SELECT customer_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE amount > (SELECT AVG(amount) FROM Orders)
);

## Correlated Subquery
SELECT customer_name
FROM Customers c
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.customer_id = c.customer_id
    AND o.amount > 400
);

## Subquery with IN
SELECT customer_name
FROM Customers
WHERE customer_id IN (SELECT customer_id FROM Orders);

## Subquery with EXISTS
SELECT customer_name
FROM Customers c
WHERE EXISTS (
    SELECT * FROM Orders o
    WHERE o.customer_id = c.customer_id
);

## Subquery with =
SELECT customer_name
FROM Customers
WHERE customer_id = (
    SELECT customer_id
    FROM Orders
    WHERE amount = (SELECT MAX(amount) FROM Orders)
);


