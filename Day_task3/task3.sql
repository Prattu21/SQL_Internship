select * from authors;

select name from authors;

select name from authors where
country ='US';

select name from authors
where name='Paulo Coelho' and country='US';

select name from authors
where country like '%US%' or country like '%United Kingdom';

select name from authors where author_id between 2 and 8;