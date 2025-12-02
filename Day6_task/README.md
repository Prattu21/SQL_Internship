# task6
### Scalar Subquery
A scalar subquery returns one value (one row, one column).
Example: Show customers whose order amount is greater than the average order amount

### Corelated Subquery
A correlated subquery runs once for each row in the outer query.
Example: Find customers who have placed orders greater than 400

### Subquery Inside IN
Returns results if a value is in a list returned by a subquery.
Example: Show customers who have placed any order

### Subquery Inside exits
Checks if a subquery returns any rows.
Example: Show customers who have at least one order

### Subquery Inside =
Used when the subquery returns exactly one value.
Example: Show the name of the customer who placed the highest order
