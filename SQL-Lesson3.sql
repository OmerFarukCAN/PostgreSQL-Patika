-- CREATE TABLE --

-- CREATE TABLE <table_name>(
-- 	<column_name> <data_type> <constraint>,
-- 	...
-- 	<column_name> <data_type> <constraint>
-- );

-- CREATE TABLE author (
-- 	author_id SERIAL PRIMARY KEY, -- SERIAL AUTOMATIC INCREMENT
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	email VARCHAR(100),
-- 	birthday DATE
-- );

-- INSERT INTO --

-- INSERT INTO author (first_name, last_name, email, birthday) -- didnt write author_id because its serial
-- VALUES
-- 	('Haruki', 'Murakami', 'haruki@murakami.com', '1948-11-07'),
-- 	('Sabahattin', 'Ali', 'sabahattin@ali.com', '1914-07-11'),
-- 	('Orhan', 'Pamuk', 'orhan@pamuk.com', '1950-04-14'),
-- 	('Halide Edip', 'Adıvar', 'halide@edip.com', '1884-07-11'),
-- 	('Zygmunt', 'Bauman', 'zygmunt@bauman.com', '1911-07-12');

-- CREATE TABLE author2 (LIKE author); -- creates without data

-- INSERT INTO author2
-- SELECT *
-- FROM author
-- WHERE first_name = 'Sabahattin';

-- SELECT *
-- FROM author2;

-- CREATE TABLE author3 AS -- creates with data
-- SELECT *
-- FROM author;

-- SELECT *
-- FROM author3;

-- DROP TABLE IF EXISTS --

-- DROP TABLE IF EXISTS author4; -- hata mesajı almamak için if exists yazılır.

-- DROP TABLE IF EXISTS author3;

-- SELECT *
--FROM author

-- UPDATE --

-- UPDATE <table_name>
-- SET column1 = value1,
-- 	column2 = value2,
-- 	...
-- WHERE contiditon;

-- UPDATE author
-- SET first_name = 'Emrah Safa',
-- 	last_name = 'Gürkan',
-- 	email = 'emrah@gürkan.com',
-- 	birthday = '1980-01-01'
-- WHERE author_id = 10;

-- UPDATE author
-- SET first_name = 'XXXX',
-- 	last_name = 'YYYY'
-- WHERE first_name LIKE 'V%';

-- UPDATE author
-- SET last_name = 'UPDATE'
-- WHERE first_name = 'Jaye'
-- RETURNING *;

-- DELETE --

-- DELETE FROM author
-- WHERE author_id > 11
-- RETURNING *;

-- DATA TYPES --

-- CREATE TABLE test (
-- 	real_type REAL,
-- 	double_type DOUBLE PRECISION,
-- 	numeric_type NUMERIC
-- );

-- INSERT INTO test
-- VALUES(1.12345678912345678912,
-- 	   1.12345678912345678912,
-- 	   1.12345678912345678912
-- );

-- CREATE TABLE test2 (
-- 	float4_type FLOAT4,
-- 	float8_type FLOAT8,
-- 	decimal_type DECIMAL
-- );

-- INSERT INTO test2
-- VALUES(1.12345678912345678912,
-- 	   1.12345678912345678912,
-- 	   1.12345678912345678912
-- );

-- SELECT (10.0 :: INTEGER);

-- SELECT (10.444444444444444444 :: REAL);

-- SELECT (10.444444444444444444 :: DOUBLE PRECISION);

-- SELECT (10.444444444444444444 :: NUMERIC);

-- NOT NULL --

-- CREATE TABLE users (
-- 	id SERIAL PRIMARY KEY,
-- 	username VARCHAR(20),
-- 	email VARCHAR(50),
-- 	age INTEGER
-- );

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('tester', 'tester@gmail.com', 23);

-- INSERT INTO users (email, age)
-- VALUES
-- 	('gamer@gmail.com', 35);

-- ALTER --

-- DELETE FROM users
-- WHERE username IS NULL;

-- ALTER TABLE users
-- ALTER COLUMN username
-- SET NOT NULL;

-- INSERT INTO users (email, age)
-- VALUES
-- 	('tester@gmail.com', 23); -- error username NOT NULL.

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('','gamer@gmail.com', 36); --empty is not same null

-- UNIQUE --

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('tester2', 'tester@gmail.com', 44);

-- UPDATE users
-- SET email = 'tester2@gmail.com'
-- WHERE id = 5;

-- ALTER TABLE users
-- ADD UNIQUE (email);

-- SELECT *
-- FROM users;

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('tester3', 'tester@gmail.com', 25); -- error 'tester@gmail.com' already exists cannot dublicate

-- CHECK --

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('gamer3', 'gamer3@gmail.com', -22);

-- UPDATE users
-- SET age = 22
-- WHERE id = 8;

-- ALTER TABLE users
-- ADD CHECK (age > 18);

-- SELECT *
-- FROM users;

-- INSERT INTO users (username, email, age)
-- VALUES
-- 	('gamer3', 'gamer3@gmail.com', -22); -- eror age must be > 18