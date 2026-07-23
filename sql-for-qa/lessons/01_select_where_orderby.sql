/*Создать базу данных*/
create database qa_store;

/*Использовать базу данных*/
USE qa_store

/*Создать таблицу со столбцами id, name и city*/
create table customers (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100), city VARCHAR(100), age INT) 

/*Вставить значения в таблицу в столбцы name, city, age*/
insert into customers (name, city, age) VALUES ('Anna', 'Berlin', 25),
('John', 'Paris', 31),
('Kate', 'London', 28),
('Mike', 'Berlin', 35),
('Emma', 'Madrid', 22),
('David', 'Rome', 40),
('Olivia', 'Paris', 27),
('James', 'London', 33)

/*Посмотреть все(*) значения таблицы*/
SELECT * FROM customers

/*Посмотреть значения name, city таблицы*/
select name, city FROM customers

/*Посмотреть все значения таблицы, которые содержат значение city = Berlin*/
select * FROM customers WHERE city = "Berlin"

/*Отсортировать данные в таблице по возрасту по убыванию*/
select * from customers ORDER BY age DESC

/*Отсортировать данные в таблице по возрасту возрастанию*/
select * from customers ORDER BY age ASC

/*Отсортировать данные в таблице по имени в обратном алфавитном порядке*/
select * from customers ORDER BY name DESC

/*Посмотреть все данные таблицы, которые содержат значение city = Berlin*/
SELECT * FROM customers WHERE city = 'Berlin'

/*Посмотреть все данные таблицы, в которых возраст > или = 30*/
SELECT * FROM customers WHERE age >= 30;

/*Посмотреть все данные таблицы, в которых содержится имя Anna*/
SELECT * FROM customers WHERE name = 'Anna'

/*Посмотреть все данные таблицы, в которых содержится город London*/
select * from customers where city = "London"

/*Посмотреть все данные таблицы, в которых возраст > 25*/
select * from customers where age > 25

/*Посмотреть все данные таблицы, в которых имя Emma*/
select * from customers where name = "Emma"

/*Посмотреть все данные таблицы, в которых возраст < или равен 40*/
select * from customers where age <= 40

/*Посмотреть все данные таблицы, в которых содержится город Paris*/
select * from customers where city = "Paris"

/*Посмотреть все данные таблицы, в которых 2 обязательных условия*/
select * from customers where city = "Berlin" AND age > 30
select * from customers where city = "London" AND age > 30
select * from customers where age > 30 AND city = "Paris" 
select * from customers where age < 30 AND city = "Paris" 

/*Посмотреть все данные таблицы, в которых выполняется одно любое из 2 условий*/
select * from customers where city = "Berlin" OR city = "Paris"
select * from customers where city = "Berlin" OR city = "Madrid" 

/*Посмотреть все данные таблицы, в которых выполняется 2 обязательных условия city и age, в т.ч. одно любое из 2 улсовий city*/
select * from customers where city = "Rome" OR city = "London" AND age > 30 