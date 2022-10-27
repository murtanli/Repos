use sakila;
#УПРАЖНЕНИЕ 4.3
select * from payment p 
where amount = 1.98 or amount =  7.98 or amount = 9.98;
#УПРАЖНЕНИЕ 4.4
select last_name from customer c
where last_name like '_A%W';
#Запросы к моей бд
use vk2;
# ex 1
select * from `user`
where pas = 0 or pas like '____';
# ex 2
select * from avat 
where url_photo like '%com%' and id mod 2 = 0;
# ex 3
select * from profile
where length(name) = 2 and lastname like '%s%';