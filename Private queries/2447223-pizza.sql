SELECT * from longlist;
 select title, author, year from longlist where year = 2021;
 select title, format from longlist where format <> "hardcover";
  select title, format from longlist where not format = "hardcover";
select title from longlist;
select title from longlist
where title like "%fly%";
select title, year from longlist where year BETWEEN 2021 and 2024;
select title, pages from longlist where pages <= 300;
select title, rating from longlist where rating > 3 order by rating limit 10;
select round(avg(rating), 2) from longlist;
select round(avg(votes), 2) as "Average of Votes" from longlist;
select count(*) from longlist;
select distinct count(year) from longlist;
select title, author from longlist limit 10;
select distinct publisher from longlist;
select title, rating from longlist
 order by rating desc limit 5;
 select title from longlist where pages > 300;
 select title from longlist 
 where title like "%love%";
 select title, year from longlist where not year BETWEEN 2000 and 2010;
 select title, translator from longlist where translator is NULL;
 select title, year from longlist order by year;
 select author, title from longlist order by rating desc limit 5;
 select title, rating, pages from longlist 
 where rating >= 4 and pages < 200;
 select title, rating from longlist where rating != 3.5;
 select count(title) from longlist;
 select round(avg(rating), 2) as "Average Rating of Books Published in 2022" from longlist where year = 2022;
 select title from longlist where pages = 500 or year = 2021;
 select title from longlist where title like "A%" and title like "%_love%"; 
 select title, rating from longlist where  rating = round(rating, 1);