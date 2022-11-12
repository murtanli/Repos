use sakila;
#УПРАЖНЕНИЕ 5.1

SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ct
ON a.city_id = ct.city_id 
WHERE a.district = 'California';

#УПРАЖНЕНИЕ 5.2
select f.title
from film f
inner join film_actor fa 
on f.film_id  = fa.film_id
inner join actor a 
on fa.actor_id = a.actor_id 
where a.first_name = 'JOHN';

#УПРАЖНЕНИЕ 5.3
select a1.address addr1, a2.address addr2, a1.city_id
from address a1
inner join address a2
where a1.city_id = a2.city_id 
and a1.address_id  <> a2.address_id;

#Запросы к моей бд
use vk2;
#ex 1
select a.url_photo, p.name
from avat a
inner join profile p 
on a.id = p.id
where length(p.name) > 5;
# ex 2
select p.name,p.lastname,v.url_video,a.url_photo,u.`log`
from profile p
inner join video v 
on p.id = v.id 
inner join avat a
on a.id = p.id
inner join `user` u 
on u.id = p.id;
#ex 3
select v.url_video,p.name
from `like` l
inner join video v 
on l.video_id  = v.id
inner join profile p 
on l.profile_id = p.id
where v.url_video like '%biz%';