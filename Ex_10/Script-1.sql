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
from film fS
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
and a1.address_id  <> a2.address_id 