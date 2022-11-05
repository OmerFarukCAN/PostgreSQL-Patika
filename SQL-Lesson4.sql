-- INNER JOIN (TABLE1 ∩ TABLE2) --

SELECT *
FROM book
INNER JOIN author
ON book.author_id = author.author_id;

SELECT author.first_name, author.last_name, book.title
FROM book
INNER JOIN author
ON book.author_id = author.author_id;

SELECT book.title, author.first_name, author.last_name
FROM book
INNER JOIN author
ON book.author_id = author.author_id;

SELECT book.title, author.first_name, author.last_name
FROM author
INNER JOIN book -- inner join is symetric
ON book.author_id = author.author_id;

SELECT book.title, author.first_name, author.last_name
FROM book, author
WHERE book.author_id = author.author_id;

-- LEFT JOIN (TABLE1 ∪ TABLE2 / TABLE2) --

SELECT author.first_name, author.last_name, book.title
FROM author -- bu tabloda olan her şey
LEFT JOIN book -- bu tabloda olmasa bile getirilicek (olmayan degerler null ile getirilir.)
ON author.author_id = book.author_id;

SELECT book.title, author.first_name, author.last_name
FROM book
LEFT JOIN author
ON book.author_id = author.author_id;

SELECT author.first_name, author.last_name, book.title
FROM author -- bu tabloda olan her şey
LEFT JOIN book -- bu tabloda olmasa bile getirilicek (olmayan degerler null ile getirilir.)
ON author.author_id = book.author_id
WHERE book.book_id IS NOT NULL
ORDER BY book.title;

-- FULL JOIN (TABLE1 ∪ TABLE2) --

SELECT author.first_name, author.last_name, book.title
FROM book
FULL JOIN author
ON book.author_id = author.author_id;

SELECT *
FROM book
FULL JOIN author -- full join is symetric
ON book.author_id = author.author_id;

SELECT * 
FROM book
FULL JOIN author
ON book.author_id = author.author_id
WHERE (book.book_id IS NOT NULL AND author.author_id IS NOT NULL); -- same inner join this query

SELECT * 
FROM book
FULL JOIN author
ON book.author_id = author.author_id
WHERE (book.book_id IS NULL OR author.author_id IS NULL); -- Tabloların ortak olmayan değerleri

-- UNION --

(
SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5
)
UNION
(
SELECT *
FROM book
ORDER BY title
LIMIT 5
);

(
SELECT author_id, first_name
FROM author
)
UNION -- birlesim (aynı verileri bir kere yazar)
(
SELECT book_id, title
FROM book
);

-- INTERSECT --

(
SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5
)
INTERSECT -- kesisim
(
SELECT *
FROM book
ORDER BY title
LIMIT 5
);

-- EXCEPT --

(
SELECT *
FROM book
ORDER BY page_number DESC
LIMIT 5
)
EXCEPT -- ilk select'de bulunup ikincisinde olmayanları verir.
(
SELECT *
FROM book
ORDER BY title
LIMIT 5
);

-- SUBQUERIES --

SELECT * 
FROM book
WHERE page_number >
(
	SELECT page_number
	FROM book
	WHERE title = 'Gülün Adı'
);

SELECT title, page_number, (SELECT MAX(page_number) FROM book), ((SELECT MAX(page_number) FROM book) - page_number) AS differ
FROM book
WHERE page_number >
(
	SELECT page_number
	FROM book
	WHERE title = 'Gülün Adı'
);

SELECT first_name, last_name
FROM author
WHERE author_id = 
(
	SELECT author_id
	FROM book
	WHERE title = 'The Fearmakers'
);

-- ANY ALL --

SELECT first_name, last_name
FROM author
WHERE author_id = ANY -- herhangi bir kosulun saglanmasında true dondurur
(
	SELECT author_id
	FROM book
	WHERE title = 'The Fearmakers' OR title = 'Hell'
);

SELECT first_name, last_name
FROM author
WHERE author_id = ALL -- tüm şartların sağlanması durumunda true dondurur burada false döner veri çıktısı olmaz
(
	SELECT author_id
	FROM book
	WHERE title = 'The Fearmakers' OR title = 'Hell'
);

SELECT first_name, last_name
FROM author
WHERE author_id > ALL
(
	SELECT author_id
	FROM book
	WHERE title = 'The Fearmakers' OR title = 'Hell'
);

-- SUBQUERY AND JOIN --

SELECT author.first_name, author.last_name, book.title, book.page_number
FROM author
INNER JOIN book
ON author.author_id = book.author_id
WHERE page_number >
(
	SELECT AVG(page_number)
	FROM book
)
ORDER BY page_number DESC;

SELECT author.first_name, author.last_name, book.title, book.page_number -- yukarıdaki sorgunun INNER JOIN'siz hali
FROM author, book
WHERE author.author_id = book.author_id
AND page_number >
(
	SELECT AVG(page_number)
	FROM book
)
ORDER BY page_number DESC;