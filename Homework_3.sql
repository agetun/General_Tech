-- ДЗ
use uni;

-- 1. Найти компетенции, которых нет ни у одного преподавателя.
select 
	t1.title
from competencies t1
left join teachers2competencies t2
on t1.id = t2.competencies_id
where t2.competencies_id is null;

-- 2. Вывести название курса и имя старосты.
select
	t1.title,
    t2.name
from courses t1
inner join students t2
on t1.headman_id = t2.id;

-- 3*. Вывести имя студента и имена старост, которые есть на курсах, которые он проходит.
select
	t1.name,
    t3.title as course_name,
    t4.name as headman_name
from students t1
inner join students2courses t2
on t1.id = t2.student_id
inner join courses t3
on t2.course_id = t3.id
inner join students t4
on t3.headman_id = t4.id;