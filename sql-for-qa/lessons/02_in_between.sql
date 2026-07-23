USE qa_store;

-- Topic: IN operator
-- Description: Searching multiple values

/*Найтит все запросы, которые содержат города London, Paris, Madris)*/
select * from customers WHERE city IN("London","Paris","Madrid");

/*Найтит все запросы из таблицы, которые содержат возраст 22, 25, 30)*/
select * from customers WHERE age IN (22,25,30);

/*Найтит все запросы из таблицы, которые НЕ из London и Paris*/
select * from customers WHERE city NOT IN ("London","Paris");

-- Topic: BETWEEN operator
-- Description: Searching ranges

/*Найти все данный из таблицы где возраст в диапозоне от 25 до 25*/
select * from customers WHERE age BETWEEN 25 AND 35;

/*Найти все данный из таблицы где возраст в диапозоне от 30 до 40*/
select * from customers WHERE age BETWEEN 30 AND 40;







