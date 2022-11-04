-- ANSWER 1 --
SELECT city.city, country.country
FROM city
INNER JOIN country
ON city.country_id = country.country_id;

-- ANSWER 2 --
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id;

-- ANSWER 3 --
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM rental
INNER JOIN customer
ON rental.customer_id = customer.customer_id;