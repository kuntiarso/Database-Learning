-- HAVING command


SELECT country_of_birth, COUNT(*) FROM person
GROUP BY country_of_birth
HAVING COUNT(*) > 30
ORDER BY country_of_birth;
-- will return all the countries with at least have 30 person
-- order by country starts from a to z