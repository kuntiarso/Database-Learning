-- BETWEEN command


SELECT * FROM person
WHERE date_of_birth
BETWEEN DATE '2000-01-01' AND DATE '2010-01-01';
-- return all the data of person that was born between that range
-- note that DATE above is also postgres command