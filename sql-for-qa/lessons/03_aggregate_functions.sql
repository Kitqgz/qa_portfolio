USE qa_store;

/*Найти общее количество строк в таблице*/
select count(*) as общееколичество from customers;

/*Найти общее количество строк в таблице, где город = London*/
select count(*) as london_users from customers where city = "London";

/*Найти минимальное значение возраста в таблице*/
select min(age) AS youngcustomer from customers;

/*Найти максимальное значение возраста в таблице*/
select max(age) AS oldcustomer from customers;

/*Найти среднее значение возраста в таблице*/
select AVG(age) AS average_age from customers;

/*Найти максимальную цену товара в таблице*/
select MAX(price) AS max_price from products;

/*Найти минимальную цену товара в таблице*/
select MIN(price) AS min_price from products;

/*Найти среднюю цену товара в таблице*/
select ROUND (AVG(price),2) AS avg_price from products;

/*Найти сумму всех цен товара в таблице*/
select sum(price) AS sum_all_price from products;

/*Найти общее количество строк в таблице*/
select count(*) AS total_orders from orders;

/*Найти количество оплченных заказов*/
select count(*) AS paid_orders FROM orders WHERE status = "paid";

/*Найти количество доставленных заказов*/
select count(*) AS delivered_orders From orders WHERE status = "delivered";