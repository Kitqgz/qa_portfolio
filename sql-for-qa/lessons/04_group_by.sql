use qa_store;

-- Topic: GROUP BY
-- Description: Grouping data for analysis

/* Найти общее количетсво пользователей объединить их по городам*/
select city, count(*) as users_count from customers GROUP by city;

/* Найти общее количетсво товаров объединить их по категориям*/
select category, count(*) as all_product from products group by category;

/* Найти среднюю цену товара в каждой категории*/
select category, AVG(price) as avg_price from products group by category;

select status, count(*) as all_orders_status from orders group by status;