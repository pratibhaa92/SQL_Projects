Objective 3: Analyze Customer Behavious

-- 1. Combine the menu_items and order_details tables into single table
      select * from menu_items;
      select * from order_details;

      select * from order_details od left join menu_items mi
      on od.item_id = mi.menu_item_id;

-- 2. What were the least and most ordered item ? what cateogaries they in?
      select item_name, category,count(order_details_id) as num_purchase
      from order_details od left join menu_items mi
      on od.item_id = mi.menu_item_id
      group by item_name,category
      order by num_purchase;


-- 3. What were the top 5 order that spent the most money
      select order_id, sum(price) as total_spend 
      from order_details od left join menu_items mi
      on od.item_id = mi.menu_item_id
      group by order_id 
      order by total_spend  desc
      limit 5;

-- 4. view the details of the highest spend order. what insights can you gather from 
      select category, count(item_id) as num_items
      from order_details od left join menu_items mi
      on od.item_id = mi.menu_item_id
      where order_id = 440
      group by(category);


-- 5.view the details of the top  5 higest spend order. what insights can you gather 
     select order_id,category, count(item_id) as num_items
     from order_details od left join menu_items mi
     on od.item_id = mi.menu_item_id
     where order_id in (440, 2075,1957,330,2675)
     group by order_id, category;