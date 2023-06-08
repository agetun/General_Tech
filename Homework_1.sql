create database homeworks_48_49;
use homeworks_48_49;

-- Создать таблицу students с полями:
-- id первичный ключ авто-инкремент
-- name (не null)
-- lastname (не null)
-- avg_mark (от 0 до 5)
-- gender char(1) (“M” или “F”)
create table students (
	id integer primary key auto_increment,
    name varchar(64) not null,
    lastname varchar(64) not null,
    avg_mark numeric(2, 1) check (avg_mark between 0 and 5),
    gender char(1) check (gender in ('M', 'F'))
);

-- Добавить 5 записей студентов
insert into students (name, lastname, avg_mark, gender) value ('Олег', 'Петров', 4.3, 'M'),
															('Семен', 'Степанов', 3.1, 'M'),
															('Ольга', 'Семенова', 4.7, 'F'),
															('Игорь', 'Романов', 3.1, 'M'),
															('Ирина', 'Иванова', 2.2, 'F');
                                                            
select * from students;

-- найти учеников, у которых оценка больше 4
select 
* 
from students
where avg_mark > 4;

-- найти учеников, у которых не входит в диапазон от 3 до 4
select 
* 
from students
where avg_mark ;

-- найти учеников, у которых имя начинается на И
select 
* 
from students
where name like 'И%';

-- найти учеников, у которых оценка 2.2 или 3.1 или 4.7
select 
* 
from students
where avg_mark in (2.2, 3.1, 4.7);
