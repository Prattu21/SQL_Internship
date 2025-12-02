### Retrieves all columns and all records
The * symbol means select everything, so it displays every piece of information for each author.

### Using where
SELECT name FROM authors WHERE country = 'US';
→ Displays the names of authors who belong to the United States.
The WHERE clause is used to apply a condition — selecting only those rows where the country value is 'US'.

### Using and
SELECT name FROM authors WHERE name = 'Paulo Coelho' AND country = 'US';
→ Retrieves the author named “Paulo Coelho” who is from the US.
The AND operator ensures both conditions must be true —
the author’s name must be 'Paulo Coelho' and the country must be 'US'.

### Using or
Selects authors whose country name contains either “US” or “United Kingdom”.
The LIKE keyword allows pattern matching.
The % symbol acts as a wildcard representing any sequence of characters.
The OR operator returns rows that satisfy either of the conditions.

### Using between
Retrieves names of authors whose author_id values are between 2 and 8 (inclusive).
The BETWEEN operator is used to filter data within a specific numeric range.
