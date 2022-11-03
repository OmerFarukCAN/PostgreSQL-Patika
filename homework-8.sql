-- CREATE TABLE --

CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);

-- INSERT INTO --

insert into employee (name, birthday, email) values ('Cassie', '1928-12-17', 'coley0@va.gov');
insert into employee (name, birthday, email) values ('Sula', null, 'sbertin1@msu.edu');
insert into employee (name, birthday, email) values ('Mikael', null, 'msemble2@mail.ru');
insert into employee (name, birthday, email) values ('Alexei', '1907-12-16', 'afevier3@netvibes.com');
insert into employee (name, birthday, email) values ('Karrie', '2020-02-15', 'kjesse4@godaddy.com');
insert into employee (name, birthday, email) values ('Alisha', '1965-06-27', 'aagglione5@archive.org');
insert into employee (name, birthday, email) values ('Amalle', '1981-02-08', 'ahemerijk6@examiner.com');
insert into employee (name, birthday, email) values ('Derril', '1981-03-06', 'dplevin7@sfgate.com');
insert into employee (name, birthday, email) values ('Harp', '2017-01-22', 'hmckinlay8@gizmodo.com');
insert into employee (name, birthday, email) values ('Ardith', '1951-06-02', 'amccartan9@marketwatch.com');
insert into employee (name, birthday, email) values ('Bradford', '1981-10-24', 'botterwella@tiny.cc');
insert into employee (name, birthday, email) values ('Horatius', null, 'hvorleyb@odnoklassniki.ru');
insert into employee (name, birthday, email) values ('Jackie', '1927-04-07', 'jbispoc@com.com');
insert into employee (name, birthday, email) values ('Nickolaus', '2001-10-21', 'ngriswaited@imageshack.us');
insert into employee (name, birthday, email) values ('Mavra', '2000-07-11', 'mmcilherrane@soundcloud.com');
insert into employee (name, birthday, email) values ('Malia', '2019-09-20', 'mhallattf@soup.io');
insert into employee (name, birthday, email) values ('Antone', '1937-06-09', null);
insert into employee (name, birthday, email) values ('Elissa', null, 'edavsleyh@booking.com');
insert into employee (name, birthday, email) values ('Mart', '1968-09-25', 'mduni@pbs.org');
insert into employee (name, birthday, email) values ('Erie', '2005-05-26', 'eargabritej@biblegateway.com');
insert into employee (name, birthday, email) values ('Taite', '1975-02-11', 'tplewesk@jugem.jp');
insert into employee (name, birthday, email) values ('Angelia', '1956-09-21', 'acapitanol@stumbleupon.com');
insert into employee (name, birthday, email) values ('Steward', '2022-05-09', 'ssapirm@indiegogo.com');
insert into employee (name, birthday, email) values ('Oren', '1968-01-01', 'oturlandn@chicagotribune.com');
insert into employee (name, birthday, email) values ('Yorker', '2019-01-08', null);
insert into employee (name, birthday, email) values ('Georgeta', '1916-07-28', 'gtoppp@desdev.cn');
insert into employee (name, birthday, email) values ('Pennie', null, 'pglazierq@deliciousdays.com');
insert into employee (name, birthday, email) values ('Elinor', '1957-07-27', 'ecordeyr@g.co');
insert into employee (name, birthday, email) values ('Lindsy', '2005-12-31', null);
insert into employee (name, birthday, email) values ('Marietta', null, null);
insert into employee (name, birthday, email) values ('Ethelred', '1987-02-09', null);
insert into employee (name, birthday, email) values ('Brandyn', '1945-05-01', 'binglesfieldv@phpbb.com');
insert into employee (name, birthday, email) values ('Michaeline', null, 'mcrannw@google.pl');
insert into employee (name, birthday, email) values ('Agatha', '1953-01-18', 'aobellx@discovery.com');
insert into employee (name, birthday, email) values ('Reggi', '1919-10-30', 'rmeadey@taobao.com');
insert into employee (name, birthday, email) values ('Mortimer', '1983-11-15', null);
insert into employee (name, birthday, email) values ('Bobbee', '1967-12-30', 'bmctavish10@cloudflare.com');
insert into employee (name, birthday, email) values ('Ryan', '2004-05-22', 'rlegrys11@drupal.org');
insert into employee (name, birthday, email) values ('Phillip', '1987-08-30', 'panney12@1und1.de');
insert into employee (name, birthday, email) values ('Nissie', null, null);
insert into employee (name, birthday, email) values ('Trish', '1927-06-16', 'tpopplestone14@addthis.com');
insert into employee (name, birthday, email) values ('Feliks', '1936-06-17', 'fcardinale15@microsoft.com');
insert into employee (name, birthday, email) values ('Travis', '1931-11-21', 'twaldrum16@gizmodo.com');
insert into employee (name, birthday, email) values ('Corey', null, 'cslucock17@seattletimes.com');
insert into employee (name, birthday, email) values ('Paton', null, 'pfockes18@hatena.ne.jp');
insert into employee (name, birthday, email) values ('Hadria', '1999-08-18', 'hboarleyson19@artisteer.com');
insert into employee (name, birthday, email) values ('Arabelle', '1940-07-23', null);
insert into employee (name, birthday, email) values ('Court', '2017-02-18', 'cdaverin1b@ning.com');
insert into employee (name, birthday, email) values ('Vallie', '1983-12-31', 'vbartalot1c@e-recht24.de');
insert into employee (name, birthday, email) values ('Vaughn', '1905-06-21', 'vdand1d@amazon.com');

-- UPDATE --

UPDATE employee
SET name = 'A___'
WHERE name LIKE 'A%'
RETURNING *;

UPDATE employee
SET email = null
WHERE employee_id = 13
RETURNING *;

UPDATE employee
SET birthday = '1995-07-13'
WHERE name = 'Hadria'
RETURNING *;

UPDATE employee
SET email = 'cassie@va.gov'
WHERE name = 'Cassie' and employee_id = 1
RETURNING *;

UPDATE employee
SET birthday = '2000-03-17'
WHERE name = 'Sula'
RETURNING *;

-- DELETE --

DELETE FROM employee
WHERE email LIKE 'a%'
RETURNING *;

DELETE FROM employee
WHERE employee_id > 20
RETURNING *;

DELETE FROM employee
WHERE name = 'A___';

DELETE FROM employee
WHERE name LIKE '%d'
RETURNING *;

DELETE FROM employee
WHERE email LIKE '%ru'
RETURNING *;