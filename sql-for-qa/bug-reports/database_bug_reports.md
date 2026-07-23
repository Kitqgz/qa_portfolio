# Database Bug Reports

## Project: QA Store Database

Database: MySQL

Tables:
- customers
- products
- orders

---
# BUG_DB_001

## Title
В заказе содержится несуществующий customer_id

## Severity
High

## Priority
High

## Environment
MySQL - qa_store database

## Description
В таблице `orders` содержится значение `customer_id`, которого нет в таблице `customers`.
Это приводит к нарушению целостности связей между данными заказов и клиентов.

## Предусловия
В базе данных присутствуют таблицы:
- customers
- orders

## Шаги для воспроизведения
1. Открыть таблицу `orders`
2. Проверить значения `customer_id`
3. Сравнить `customer_id` со значениями `customers.id`

SQL-запрос:
```sql
SELECT orders.id, orders.customer_id
FROM orders
LEFT JOIN customers
ON orders.customer_id = customers.id
WHERE customers.id IS NULL;
```

## Expected Result
Все значения customer_id в таблице orders должны иметь соответствующие записи в таблице customers.

## Actual Result
Существуют записи заказов с отсутствующими клиентами.

# BUG_DB_002

## Title
Заказ содержит несуществующий product_id

## Severity
High

## Priority
High

## Environment
MySQL - qa_store database

## Description
Таблица orders содержит значения product_id, которых нет в таблице products.

## Шаги для воспроизведения

```sql
SELECT orders.id, orders.product_id
FROM orders
LEFT JOIN products
ON orders.product_id = products.id
WHERE products.id IS NULL;
```

## Expected Result
Каждый product_id в таблице orders должен существовать в таблице products.

## Actual Result
Заказы могут содержать недопустимые ссылки на товары.



#BUG_DB_003

## Title
Цена товара содержит некорректное значение

## Severity
Medium

## Priority
Medium

## Environment
MySQL - qa_store database

## Description
Цена товара не соответствует ожидаемой стоимости.

## Шаги для воспроизведения

Выполнить:
```sql
SELECT *
FROM products
WHERE price < 0;
Ожидаемый результат
```

## Expected Result
Цена товара всегда должна быть больше нуля.

## Actual Result
Возвращаются товары с некорректными значениями цены.


