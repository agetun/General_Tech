-- ДЗ
-- 1. Клиент ищет билеты из точки А в точку Б. Однако есть важное условие — стоимость билета не должна превышать 13200. 
-- Напишите запрос, который выведет id билетов, стоимость которых меньше или равна 13200.
-- В выборке должен присутствовать один атрибут — id.

select
	id
from tickets
where price <= 13200;

-- 2. Менеджеры авиакомпании потребовали выяснить количество различных моделей самолетов. Выведите все доступные модели, исключая дубликаты.
-- В выборке должен присутствовать один атрибут — model_name.

select distinct
	model_name
from airliners;


-- 3. Аналитическое подразделение решило уточнить у авиакомпании количество билетов не бизнес-класса.
-- Напишите запрос, который выведет id билетов, класс обслуживания в которых отличен от бизнес-класса (Business).
-- В выборке должен присутствовать один атрибут —  id.

select
	id
from tickets
where service_class <> 'Business';

select * from tickets;


-- 4. Напишите запрос, который выведет id клиентов, чье значение атрибута name начинается на Daria.
-- В выборке должен присутствовать один атрибут — id.

select
	id
from clients
where name like 'Daria%';

-- 5. Определите id рейсов, которые должны были вылететь из аэропорта Домодедово (DME), но были отменены.
-- В выборке должен присутствовать один атрибут — id.

select
	id
from trips
where departure = 'DME' and status = 'Cancelled';


select * from airliners;