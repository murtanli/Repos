
-- Упражнение 10.1
SELECT с.name, sum(р.amount) 
FROM customer c 
LEFT OUTER JOIN payment p 
ON c.customer_id = p.customer_id 
GROUP BY c.name;

-- Упражнение 10.2
SELECT c.name, sum(р.amount) 
FROM payment p 
RIGHT OUTER JOIN customer c 
ON c.customer_id = p.customer_id 
GROUP BY c.name;

