USE qa_store;

-- Topic: JOIN
-- Description: Combining data from tables

/*Соединить 2 таблицы по id, вывести имя и статус*/
select customers.name, orders.status from customers JOIN orders ON customers.id = orders.customer_id

/*Соединить 3 таблицы по id, вывести имя, статус, название продукта*/
select customers.name, products.product_name, orders.status from orders JOIN customers ON orders.customer_id = customers.id JOIN products ON orders.product_id = products.id;

/*Соединить столбцы имя и название товара по id*/
select customers.name, products.product_name from orders JOIN customers ON orders.customer_id = customers.id JOIN products ON orders.product_id = products.id;

/*Соединить столбцы имя и статус заказа, вывести только те, где статус оплачен*/
select customers.name, orders.status from orders JOIN customers ON orders.customer_id = customers.id WHERE status = "paid";

/*Вывести общее количество заказов каждого пользователя*/
select customers.name, count(orders.id) AS orders_count FROM customers JOIN orders ON customers.id = orders.customer_id GROUP BY customers.name; 

-- Topic: LEFT JOIN and RIGHT JOIN
-- Description: Finding unmatched records

/*Соединить таблицы, чтобы увидеть всех пользователей, даже без заказов*/
select customers.name, orders.status FROM customers LEFT JOIN orders ON customers.id = orders.customer_id;

/*Соединить таблицы, чтобы увидеть всех пользователей, даже без заказов*/
select customers.name, orders.id FROM customers LEFT JOIN orders ON customers.id = orders.customer_id;

/*Поиск пользователей без заказов*/
select customers.name from customers left join orders on customers.id = orders.customer_id where orders.id IS NULL;

/*Поиск клиентов и товаров, которые были ими заказаны - 3 таблицы*/
SELECT customers.name, products.product_name FROM customers LEFT JOIN orders ON customers.id = orders.customer_id LEFT JOIN products ON orders.product_id = products.id;

/*Поиск всех заказов по имени с помощью RIGHT JOIN*/
SELECT customers.name, orders.status FROM customers RIGHT JOIN orders ON customers.id = orders.customer_id;