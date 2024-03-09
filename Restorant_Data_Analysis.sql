use restaurant_db;

-- 1. View the menu_items table.
 select * from menu_items;

-- 2. Find the number of items on the munu
 select  count(*) from menu_items;

-- 3. What are the least and most expensive items on the menu.alter
select * from menu_items
order by Price Desc;

-- 4. how many Italian dishes are on the menu
select count(*) from menu_items
where category = 'Italian';

select * from menu_items;
-- 5. What are the least and most expensive Italian dishes on the menu?
select * from menu_items
where category = 'Italian' 
order by price Desc;

-- 6. How many dishes are in each cateogary?
select category, count(category) as num_dishes
from menu_items
group by category ;


select * from menu_items;

-- 7.What is the average dish price within each cateogary
     select * from menu_items;

     select category, avg(price) as average_price_of_item from menu_items
     group by category;

-- 1.VIEW THE Order_details table
     select * from order_details;


-- 2. what is the date range of the table
      select * from order_details 
      order by order_date;
      select min(order_date),max(order_date) from order_details;

-- 3. How many ordrs were made within this date range?
      select count(distinct order_id) as Distinct_Order_date from order_details;


-- 4.How many items were ordered within this date range?
     select count(*) from order_details ;



-- 5. Which order had the most number of items?
     select * from order_details;
     select order_id,count(item_id) as num_item 
     from order_details
     group by order_id 
     order by num_item desc;
 

-- 6. how many orders had more than 12 items?

select * from order_details;
select count(order_id) from
(select order_id,count(item_id) as number_of_items 
from order_details
group by item_id
having number_of_items > 12) as num_order;




















































