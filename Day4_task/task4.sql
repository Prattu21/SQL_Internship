use olympics;

select * from athlete_events;
select * from noc_regions;

select sum(age) from athlete_events;

select count(distinct team) from athlete_events;

select avg(weight) from athlete_events;

select name,count(sex) from athlete_events
group by name;

select name,count(sex) from athlete_events
group by name
having count(sex) > 5;


