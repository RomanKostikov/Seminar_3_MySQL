create table employee_tbl (id int, name varchar(100), work_date date, daily_typing_pages int);

INSERT employee_tbl VALUES
(1, "John", "2007-01-24", 250),
(2, "Ram", "2007-05-27", 220),
(3, "Jack", "2007-05-06", 170),
(3, "Jack", "2007-04-06", 100),
(4, "Jill", "2007-04-06", 220),
(5, "Zara", "2007-06-06", 300),
(5, "Zara", "2007-02-06", 350);

select * from employee_tbl;
-- 1.	Рассчитайте общее количество всех страниц dialy_typing_pages
select sum(daily_typing_pages) sum_page from employee_tbl;

-- 2.	Выведите общее количество напечатанных страниц каждым человеком (с помощью предложения GROUP BY)  
select id, name, sum(daily_typing_pages) from employee_tbl group by id, name order by name;

-- 3.	Посчитайте количество записей в таблице
select count(*) 'Количество записей' from employee_tbl;

-- 4.	Выведите количество имен, которые являются уникальными 
select count(distinct name) 'Уникальных имен' from employee_tbl;

-- 5. 	Найдите среднее арифметическое по количеству ежедневных страниц для набора (daily_typing_pages)
select avg(daily_typing_pages) 'Среднее значение', 
sum(daily_typing_pages) 'Сумма',
count(*) 'Количество строк',
sum(daily_typing_pages)/count(*) 'Математическое среднее'
from employee_tbl;
