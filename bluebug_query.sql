create database BlueBug

use BlueBug

select * from books


-- 1. Average price for each rating
select rating ,avg(price) as avg_price from books
group by rating

-- 2. The 5 most expensive books rated 4 or 5
select * from
(select *, Dense_Rank() over (partition by rating order by price desc) as DR from books
where rating in (4,5) )as Rank_table 
where  DR <=5

-- 3. How many books are out of stock, per rating
select rating,count(*) as out_of_stock
from books
where in_stock <> 'in stock'
group by rating;