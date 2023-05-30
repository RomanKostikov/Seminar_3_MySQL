create table employee2 (id int, name varchar(100), surname varchar(100), specialty varchar(100), seniority int, salary int, age int);

insert employee2 (id, name, surname, specialty, seniority, salary, age)
values (1,'Вася', 'Васькин', 'начальник', 40, 100000, 60),
(2,'Петя', 'Петькин', 'начальник', 8, 70000, 30),
(3,'Катя', 'Каткина', 'инженер', 2, 70000, 25),
(4,'Саша', 'Сашкин', 'инженер', 12, 50000, 35),
(5,'Иван', 'Иванов', 'рабочий', 40, 30000, 59),
(6,'Петр', 'Петров', 'рабочий', 20, 25000, 40),
(7,'Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
(8,'Антон', 'Антонов', 'рабочий', 8, 19000, 28),
(9,'Юра', 'Юркин', 'рабочий', 5, 15000, 25),
(10,'Максим', 'Воронин', 'рабочий', 2, 11000, 22),
(11,'Юра', 'Галкин', 'рабочий', 3, 12000, 24),
(12,'Люся', 'Люськина', 'рабочий', 10, 10000, 49);

select * from employee2;

-- 1.	Выведите уникальные (неповторяющиеся) значения полей "name"
select distinct name, surname
from employee2
order by name desc;

-- 2.	Выведите первые две первые записи из таблицы
select *
from employee2
order by id desc
limit 2;

-- 3.	Пропустите  первые 4 строки ("id" = 1, "id" = 2,"id" = 3,"id" = 4)
-- и извлеките следующие 3 строки ("id" = 5, "id" = 6, "id" = 7)
select *
from employee2
order by id
limit 4, 3;
-- 4*. 	Пропустите две последнии строки (где id=12, id=11) и извлекаются следующие за ними 3 строки (где id=10, id=9, id=8)
select *
from employee2
order by id desc
limit 2, 3;
-- 4. отсортировали по возрастанию последнии 3 стрроки
SELECT *
FROM (
SELECT *
FROM employee2
ORDER BY id DESC
LIMIT 2, 3) T
ORDER BY id;
-- select * from employee2