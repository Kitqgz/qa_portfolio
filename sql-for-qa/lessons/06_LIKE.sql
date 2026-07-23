USE qa_store;

-- Topic: LIKE operator
-- Description: Searching data by pattern

/*Поиск пользователя по первой букве имени*/
select * from customers WHERE name LIKE "A%";

/*Поиск пользователя по последней букве имени*/
select * from customers WHERE name LIKE "%a";

/*Поиск пользователя у которого в имени есть буква m*/
select * from customers WHERE name LIKE "%m%";

/*Поиск пользователя у которого город начинается на B*/
select * from customers WHERE city LIKE "B%";

/*Поиск пользователя у которого заканчивается на don/
select * from customers WHERE city LIKE "%don";