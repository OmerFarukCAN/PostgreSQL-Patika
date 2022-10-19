-- Answer 1
SELECT ROUND(AVG(rental_rate), 3) FROM film;

-- Answer 2
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';

-- Answer 3
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- Answer 4
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;