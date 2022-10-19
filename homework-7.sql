-- Answer 1
SELECT rating, title FROM film
GROUP BY rating, title;

-- Answer 2
SELECT replacement_cost, COUNT(title) FROM film
GROUP BY replacement_cost HAVING COUNT(title) > 50;

-- Anser 3
SELECT store_id, COUNT(customer) FROM customer
GROUP BY store_id;

-- Answer 4
SELECT country_id, COUNT(city) from city
GROUP BY country_id
ORDER BY COUNT(city) DESC
LIMIT 1;