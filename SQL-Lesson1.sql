-- SELECT

-- SELECT column1, column2, ... FROM table1;

-- SELECT * FROM film;

-- SELECT title, description FROM film;

-- SELECT first_name, last_name FROM actor;

-- WHERE

-- SELECT title, length, replacement_cost FROM film
-- WHERE replacement_cost = 14.99;

-- SELECT * FROM actor
-- WHERE first_name = 'Penelope';

-- SELECT title, length FROM film
-- WHERE length <> 90;

-- SELECT first_name, last_name FROM actor
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe';

-- SELECT first_name, last_name FROM actor
-- WHERE first_name = 'Penelope' OR first_name = 'Bob';

-- SELECT * FROM film
-- WHERE NOT length > 90 AND rental_rate = 4.99;

-- SELECT * FROM film
-- WHERE rental_rate = 4.99 AND rental_duration = 3 AND replacement_cost > 20;

-- SELECT * FROM film
-- WHERE NOT (rental_rate = 4.99 AND replacement_cost = 20.99);

-- SELECT * FROM actor
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe' OR first_name = 'Joe';

-- SELECT * FROM actor
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe' OR first_name = 'Joe' AND last_name = 'Swankx';

-- SELECT * FROM actor
-- WHERE first_name = 'Penelope' AND last_name = 'Monroe' AND last_name = 'Swank' OR first_name = 'Joe';

-- BETWEEN

-- SELECT title, length FROM film
-- WHERE length BETWEEN 99 AND 120; -- 99 and 120 include

-- SELECT title, length FROM film
-- WHERE length NOT BETWEEN 99 AND 120;

-- SELECT rental_rate, replacement_cost FROM film
-- WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);

-- IN

-- SELECT title, length FROM film
-- WHERE length IN(40, 50, 60);

-- SELECT title, length FROM film
-- WHERE length IN(40, 50, 60) AND title IN('Adaptation Holes');

-- Select replacement_cost FROM film
-- WHERE replacement_cost NOT IN (10.99, 12.99, 16.99);

-- LIKE ~~

-- SELECT * FROM customer
-- WHERE first_name LIKE 'Mary%';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'M%';

-- SELECT * FROM actor
-- WHERE first_name ~~ 'C%';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'J__n';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'J%n';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'Ma__e%';

-- SELECT * FROM customer
-- WHERE first_name LIKE '%ley';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'S%ley';

-- SELECT * FROM customer
-- WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';

-- SELECT * FROM customer
-- WHERE first_name NOT LIKE 'A%';

-- SELECT * FROM customer
-- WHERE first_name NOT LIKE 'D%n'; -- D ile baslayıp n ile bitenleri getirmez. D ile baslayıp n ile bitmeyenleri yine getirir. !

-- ILIKE ~~*

-- SELECT * FROM customer
-- WHERE first_name ILIKE 'b%'; -- not case sensitive

-- SELECT * FROM actor
-- WHERE first_name ~~* 'b%';

-- SELECT * FROM actor
-- WHERE first_name !~~* 'b&'; -- NOT same !

-- DISTINCT

-- SELECT DISTINCT first_name FROM actor;

-- SELECT DISTINCT replacement_cost FROM film -- Unique replacement_cost data
-- ORDER BY replacement_cost DESC; -- default ASC

-- SELECT DISTINCT rental_rate, replacement_cost FROM film -- iki veri yanyana tekrar etmez.
-- ORDER BY rental_rate, replacement_cost DESC;

-- COUNT

-- SELECT COUNT(*) FROM actor;

-- SELECT COUNT(*) FROM actor
-- WHERE first_name LIKE 'A%';

-- SELECT COUNT(*) AS Penelope FROM actor
-- WHERE first_name = 'Penelope';

-- SELECT COUNT(DISTINCT first_name) FROM actor;

-- SELECT COUNT(DISTINCT length) FROM film;