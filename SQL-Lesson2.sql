-- ORDER BY (koşullardan sonra kullanılır)

SELECT * FROM film
ORDER BY title ASC;

SELECT * FROM film
ORDER BY length DESC;

SELECT title, length FROM film
ORDER BY length DESC;
SELECT title, length FROM film
ORDER BY title ASC, length DESC; -- ORDER BY 'dan sonra ilk hangi sütun yazılırsa önce ona göre sıralanır.

SELECT title, length FROM film
ORDER BY length DESC, title ASC;

SELECT DISTINCT length FROM film
ORDER BY length DESC;

SELECT title, rental_rate, length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC, length DESC;

-- LIMIT

SELECT * FROM film
WHERE rental_rate = 4.99
ORDER BY length
LIMIT 10;

-- OFFSET

SELECT * FROM country
OFFSET 6 -- ilk 6 veri atlanır
LIMIT 4; -- il 6 'dan sonraki veriler yazdırılır(7, 8, 9, 10. veriler)

SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1;

-- Aggregate Functions, COUNT(), MAX(), MIN(), AVG(), SUM()

SELECT COUNT(*) FROM film;

SELECT MAX(replacement_cost) FROM film;

SELECT MIN(replacement_cost) FROM film;

SELECT ROUND(AVG(length), 3) FROM film;

SELECT SUM(rental_rate) FROM film;

SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film
WHERE title LIKE 'A%';

-- GROUP BY

SELECT rental_rate, MAX(length) FROM film
GROUP BY rental_rate;

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate;

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost;

SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost;

SELECT replacement_cost, MIN(length) FROM film
GROUP BY replacement_cost
ORDER BY replacement_cost DESC;

SELECT replacement_cost, COUNT(*) FROM film
WHERE replacement_cost > 15
GROUP BY replacement_cost
ORDER BY replacement_cost DESC;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost DESC;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length) ASC;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY MIN(length) ASC
LIMIT 8;

SELECT rental_duration, length, MIN(rental_rate) FROM film
GROUP BY rental_duration, length;

SELECT rental_duration, length, MIN(rental_rate) FROM film
WHERE rental_duration > 3 AND length > 143
GROUP BY rental_duration, length;

SELECT replacement_cost, rental_rate, SUM(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost DESC, rental_rate DESC;

-- HAVING (WHERE satır bazlı filtreleme uygular, HAVING grup bazlı filtreleme yapar)

SELECT rental_rate, COUNT(*) FROM film
GROUP BY rental_rate HAVING COUNT(*) > 325;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC
LIMIT 5;

-- ALIAS

SELECT first_name AS isim, last_name AS soyisim FROM actor;

SELECT first_name AS "isim test", last_name AS "soyisim test" FROM actor;

SELECT COUNT(*) AS "Aktor Sayisi" FROM actor;

SELECT CONCAT(first_name, ' ', last_name) AS "Ad Soyad" FROM actor;