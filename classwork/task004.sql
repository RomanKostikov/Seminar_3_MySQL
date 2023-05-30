create table people (
id int primary key auto_increment,
name varchar(100) not null,
age int check (age > 0),
salary int not null);

insert into people(name, age, salary) values
('Дима', 23, 100),
('Петя', 23, 200),
('Вася', 23, 300),
('Коля', 24, 1000),
('Иван', 25, 2000);

select * from people;

-- a. Сгруппируйте поля по возрасту (будет 3 группы - 23 года, 24 года и 25 лет). Для каждой группы  найдите суммарную зарплату 
select age, sum(salary) from people group by age;
-- b. Сгруппируйте поля по возрасту (будет 3 группы - 23 года, 24 года и 25 лет). Найдите максимальную заработную плату внутри группы
select age, 
max(salary) 'Максимальная', 
min(salary) 'Минимальная', 
avg(salary) 'Средняя' 
from people 
group by age;

-- c. Сгруппируйте поля по возрасту (будет 3 группы - 23 года, 24 года и 25 лет). Найдите минимальную заработную плату внутри группы
select age, min(salary) from people group by age

-- 1. Выведите  только те строки, в которых суммарная зарплата больше или равна 1000
select age, sum(salary) sum_salary from people group by age having sum_salary >= 1000;
-- 2. 	Выведите только те группы, в которых количество строк меньше или равно двум
select age, count(salary) count_salary from people group by age having count_salary <= 2;
-- 3.	Выведите только те группы, в которых количество строк меньше или равно двум. Для решения используйте оператор “BETWEEN”
select age, count(salary) count_salary from people group by age having count_salary between 0 and 2;
-- 4.*	Выведите только те группы, в которых количество строк меньше или равно двум. Для решения используйте оператор “IN”
select age, count(salary) count_salary from people group by age having count_salary in (1,2);
