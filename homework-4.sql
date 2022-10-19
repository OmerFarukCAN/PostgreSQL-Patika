-- Answer 1
SELECT DISTINCT replacement_cost FROM film;

-- Answer 2
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- Answer 3
SELECT COUNT(*) FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- Answer 4
SELECT COUNT(country) FROM country
Where country LIKE '_____';

-- Answer 5
SELECT COUNT(city) FROM city
WHERE city ILIKE '%r';