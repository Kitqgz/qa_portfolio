# Проект портфолио: Тестирование SQL

## О проекте

В этом репозитории представлены SQL-запросы, созданные для практики тестирования (QA).

Проект демонстрирует навыки тестирования баз данных:
- проверка (валидация) данных
- выполнение SQL-запросов
- операции CRUD
- фильтрация данных
- агрегирование данных
- связи между таблицами


База данных: MySQL


## Структура базы данных

Проект включает тестовую базу данных `qa_store`, состоящую из трех таблиц:

### customers

Хранит информацию о клиентах.

Columns:
- id
- name
- city
- age


### products

Хранит информацию о товарах.

Columns:
- id
- product_name
- category
- price


### orders

Хранит информацию о заказах.

Columns:
- id
- customer_id
- product_id
- quantity
- status


## Связи в базе данных

customers
|
| customer_id
|
orders
|
| product_id
|
products

## Рассматриваемые темы SQL

### Базовые запросы

✅ SELECT  
✅ WHERE  
✅ ORDER BY  


### Фильтрация данных

✅ LIKE  
✅ IN  
✅ BETWEEN  
✅ AND / OR  


### Анализ данных

✅ COUNT()  
✅ SUM()  
✅ AVG()  
✅ MIN()  
✅ MAX()  


### Группировка данных

✅ GROUP BY  


### Связи между таблицами

✅ INNER JOIN  
✅ LEFT JOIN  
✅ RIGHT JOIN


## Структура проекта
sql-for-qa

```text
sql-for-qa
├── README.md
│
├── database
│   └── qa_store.sql
│
├── lessons
│   ├── 01_select.sql
│   ├── 02_where.sql
│   ├── 03_like.sql
│   ├── 04_in_between.sql
│   ├── 05_aggregate_functions.sql
│   ├── 06_group_by.sql
│   └── 07_joins.sql
```

## Как запустить
1. Установите MySQL
2. Импортируйте файл базы данных: database/qa_store.sql
3. Откройте SQL-файлы из папки `lessons`
4. Выполните запросы в MySQL Workbench


## Продемонстрированные навыки в области QA
- Проверка данных с помощью SQL
- Тестирование баз данных
- Написание SQL-запросов
- Проверка целостности данных
- Работа с реляционными базами данных
- Понимание связей между таблицами

