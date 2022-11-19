use sakila;
-- Упражнение 10.1
SELECT c.first_name, sum(p.amount) 
FROM customer c 
LEFT OUTER JOIN payment p 
ON c.customer_id = p.customer_id 
GROUP BY c.first_name ;

-- Упражнение 10.2
SELECT c.first_name, sum(p.amount) 
FROM payment p 
RIGHT OUTER JOIN customer c 
ON c.customer_id = p.customer_id 
GROUP BY c.first_name;
-- Задание к семестровому проекту 1

use vk2;

select p.name, p.lastname, v.url_video 
from profile p
left outer join video v 
on p.video_id = v.id
group by p.name;

-- Задание к семестровому проекту 2

select p.name, p.lastname, a.url_photo  
from profile p
right outer join avat a 
on p.video_id = a.id
group by p.name;

