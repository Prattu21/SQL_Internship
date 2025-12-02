## Library Management Database

This project demonstrates the creation and management of a simple **Library Database** using MySQL. It includes tables for **members**, **books**, and **authors**, with relationships and constraints to maintain data integrity.

## Tables

### Members Table
Stores information about library members.

- **member_id**: Auto-increment primary key  
- **name**: Name of the member (cannot be null)  
- **email**: Email address (unique)  
- **phone**: Contact number  

### Books Table
Stores information about books available in the library.

- **book_id**: Auto-increment primary key  
- **title**: Title of the book (cannot be null)  
- **author_id**: Foreign key referencing `authors` table  
- **genre**: Genre of the book  

### Authors Table
Stores details about authors.

- **author_id**: Auto-increment primary key  
- **name**: Name of the author (cannot be null)  
- **email**: Email address of the author  

## Handling Missing Values
- Columns like `email` or `phone` can accept `NULL` if the information is not available.  
- Default values can also be set where necessary to prevent errors during insertion.  

## Relationships
- **Books → Authors**: Many-to-one relationship (`author_id` in books references `author_id` in authors)  
- **Members → Borrowed Books**: Can be implemented through a separate `borrowed_books` table to track which member borrowed which book.  

## Notes
- Ensure proper indexing on foreign keys to optimize queries.  
- Use constraints like `NOT NULL` and `UNIQUE` to maintain data integrity.  
