# Database Test Cases

## Project: QA Store Database

Database: MySQL

Tables:
- customers
- products
- orders

---

## Тестирование таблицы customers

| ID |  Тестовый сценарий | SQL-запрос | Ожидаемый результат |
|---|---|---|---|
| TC_DB_001 | Проверка наличия данных в таблице customers | SELECT COUNT(*) FROM customers; | Количество клиентов больше 0 |
| TC_DB_002 | Проверка существования клиента по ID | SELECT * FROM customers WHERE id = 1; | Возвращается запись о клиенте |
| TC_DB_003 | Проверка города клиента | SELECT city FROM customers WHERE name = 'Anna'; | Город должен быть Berlin|
| TC_DB_004 | Проверка возраста клиента | SELECT age FROM customers WHERE name = 'Emma'; | Возраст должен быть 22 |

---


## Тестирование таблицы products


| ID |  Тестовый сценарий | SQL-запрос | Ожидаемый результат |
|---|---|---|---|
| TC_DB_005 | Проверка наличия товаров | SELECT COUNT(*) FROM products; | Количество товаров больше 0 |
| TC_DB_006 | Проверка цены товара | SELECT price FROM products WHERE product_name = 'Laptop'; | Цена должна соответствовать ожидаемому значению |
| TC_DB_007 | Проверка категории товара | SELECT category FROM products WHERE product_name = 'Phone'; | Категория должна быть Electronics |


---


## Тестирование таблицы orders


| ID |  Тестовый сценарий | SQL-запрос | Ожидаемый результат |
|---|---|---|---|
| TC_DB_008 | Проверка наличия заказов | SELECT COUNT(*) FROM orders; | Количество заказов больше 0 |
| TC_DB_009 | Проверка статуса заказа | SELECT status FROM orders WHERE id = 1; | Статус должен соответствовать ожидаемому значению |
| TC_DB_010 | Проверка связи заказа с клиентом | SELECT * FROM orders WHERE customer_id = 1; | Заказ клиента существует |


---

## Тестирование целостности данных


| ID |  Тестовый сценарий | SQL-запрос | Ожидаемый результат |
|---|---|---|---|
| TC_DB_011 | Проверка наличия у заказа корректного клиента | SELECT orders.id FROM orders LEFT JOIN customers ON orders.customer_id = customers.id WHERE customers.id IS NULL; | Записи не найдены |
| TC_DB_012 | Проверка наличия у заказа существующего товара | SELECT orders.id FROM orders LEFT JOIN products ON orders.product_id = products.id WHERE products.id IS NULL; | Записи не найдены  |


---


## Тестирование операций JOIN


| ID |  Тестовый сценарий | SQL-запрос | Ожидаемый результат |
|---|---|---|---|
| TC_DB_013 | Проверка информации о заказе клиента | JOIN customers and orders tables | Данные о клиенте и заказе отображаются корректно |
| TC_DB_014 | Проверка информации о товаре в заказе | JOIN products and orders tables | Данные о товаре и заказе отображаются корректно |

