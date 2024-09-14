SELECT actor_id, first_name, last_name 
FROM actor 
WHERE actor_id = (SELECT actor_id FROM film_actor GROUP BY actor_id ORDER BY COUNT(film_id) DESC LIMIT 1);
