-- Упражнение 8.1
SELECT count(*) FROM payment;

-- Упражнение 8.2
SELECT customer_id, count(*), sum(amount) 
FROM payment 
GROUP BY customer_id;

-- Упражнение 8.3
SELECT customer_id, count(*), sum(amount) FROM payment GROUP BY customer_id HAVING count(*) >= 40;

