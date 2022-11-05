SELECT actor.first_name, actor.last_name, film.title, film.length
FROM actor, film, film_actor
WHERE actor.actor_id = film_actor.actor_id
AND film.film_id = film_actor.film_id
AND film.length =
(
	SELECT MAX(length)
	FROM film
);

-- AYNI SORGU INNER JOIN ILE

SELECT actor.first_name, actor.last_name, film.title, film.length
FROM actor
JOIN film_actor
ON film_actor.actor_id = actor.actor_id
JOIN film
ON film.film_id = film_actor.film_id
WHERE film.length =
(
	SELECT MAX(length)
	FROM film
);

-- Icerisinde en az 4 tane e veya E bulunduran kac adet film vardır?

SELECT COUNT(title)
FROM film
WHERE title ILIKE '%e%e%e%e%';

-- Kategori isimlerini ve kategori basına düsen film sayısını yazınız

SELECT category.name, COUNT(film_category.film_id)
FROM category, film_category
WHERE category.category_id = film_category.category_id
GROUP BY category.name;

-- En cok film bulunan rating kategorisi hangisidir

SELECT film.rating, COUNT(film.rating)
FROM film
GROUP BY film.rating
ORDER BY COUNT(film.rating) DESC
LIMIT 1;

-- Film tablosunda 'K' karakteri ile baslayan en uzun ve replacement_cost en az olan 3 filmi sıralayınız.

SELECT title, length, replacement_cost
FROM film
WHERE title LIKE 'K%' 
ORDER BY length DESC, replacement_cost ASC
LIMIT 3;

-- En cok alısveris yapan musterinin adı nedir ?

SELECT customer.first_name, COUNT(payment.customer_id)
FROM customer, payment
WHERE customer.customer_id = payment.customer_id
GROUP BY customer.first_name
ORDER BY COUNT(payment.customer_id) DESC
LIMIT 1;

-- En cok harcayan musterinin adı nedir ?

SELECT customer.first_name, SUM(payment.amount)
FROM customer, payment
WHERE customer.customer_id = payment.customer_id
GROUP BY customer.first_name
ORDER BY SUM(payment.amount) DESC
LIMIT 1;