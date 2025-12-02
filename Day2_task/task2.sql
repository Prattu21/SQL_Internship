create database library_db;

use library_db;

create table authors (
    author_id int auto_increment primary key,
    name varchar(100) not null,
    country varchar(50)
);

create table books(
    book_id int auto_increment primary key,
    title varchar(150) not null,
    author_id int,
    genre varchar(50),
    publication_year int,
    available_copies int default 1,
    foreign key (author_id) references authors(author_id)
);

create table members(
	member_id int auto_increment primary key,
    name varchar(100) not null,
    email varchar(100) unique,
    phone varchar(15),
    join_date date default (current_date)
);

create table issued_books(
    issue_id int auto_increment primary key,
    member_id int,
    book_id int,
    issue_date date default (current_date),
    due_date date,
    return_date date,
    foreign key (member_id) references members(member_id),
    foreign key (book_id) references books(book_id)
);

insert into authors (name, country)
values
('Paulo Coelho', 'Brazil'),
('J.K. Rowling', 'United Kingdom'),
('George Orwell', 'United Kingdom'),
('Haruki Murakami', 'Japan'),
('R.K. Narayan', 'India');

insert into members (member_id,name, email, phone, join_date)
values ('1','Alice Johnson', null, '9876543210', '2025-10-22');

UPDATE authors 	
SET country = 'US'
WHERE name = 'Paulo Coelho';

DELETE FROM authors
WHERE name = 'Haruki Murakami';





    

