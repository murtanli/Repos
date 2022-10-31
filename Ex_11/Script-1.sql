#Упражненение 6.1
/*
A union B - {L,M,N,O,P,R,S,T}
A union all B - {L,M,N,0,P,P,Q,R,S,T}
A intersect В - {P}
A except В - {L,M,N,0}
*/
#УПРАЖНЕНИЕ 6.2
use sakila;
select c.first_name,c.last_name 
from customer c
where c.last_name like 'L%'
union all
select a.first_name ,a.last_name 
from actor a
where a.last_name  like 'L%';

#УПРАЖНЕНИЕ 6.3
use sakila;
select c.first_name first_name,c.last_name last_name 
from customer c
where c.last_name like 'L%'
union all
select a.first_name ,a.last_name 
from actor a
where a.last_name  like 'L%'
order by first_name;
