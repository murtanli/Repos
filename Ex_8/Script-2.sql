use sakila;
#УПРАЖНЕНИЕ 3.1
/*Сортировка по имени*/select actor_id,first_name,last_name from actor order by first_name desc;
/*Сортировка по фамилии*/select actor_id,first_name,last_name from actor order by last_name desc;
#УПРАЖНЕНИЕ 3.2
select actor_id,first_name,last_name from actor where last_name = 'WILLIAMS' or 'DAVIS';
#УПРАЖНЕНИЕ 3.3
select rental_id,rental_date from rental where rental_date like '2005-07-05%';
#УПРАЖНЕНИЕ 3.4
select c.email, r.return_date 
FROM customer c
INNER JOIN rental r
ON c.customer_id = r.customer_id 
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY r.return_date desc;

