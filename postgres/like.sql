-- LIKE command


SELECT * FROM person
WHERE email
LIKE '%@google.com';
-- result shows data person that have email ends with ...@google.com
-- percentage means all


-- another example
-- result should shows email not only ends with .com,
-- but all of everything. for ex: .co.uk, .co.id, etc.
SELECT * FROM person
WHERE email
LIKE '%@google.%';


-- for getting the data based on the number of the characters
-- result should shows the person's email with the 7 char before @
SELECT * FROM person
WHERE email
LIKE '_______@%';


-- another example
-- this will return nothing as the database store country name with capitalize letters
SELECT * FROM person
WHERE country_of_birth
LIKE 'p%';


-- but ILIKE ignores capitalize
-- this will return the country with first letter 'p',
-- although the all the countries named with capitalize
SELECT * FROM person
WHERE country_of_birth
ILIKE 'p%';
