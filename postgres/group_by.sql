-- GROUP BY command


SELECT country_of_birth, COUNT(*) FROM person
GROUP BY country_of_birth;
-- will return the country names with the count result


-- grouping plus modified the result with order by
SELECT country_of_birth, COUNT(*) FROM person
GROUP BY country_of_birth
ORDER BY count DESC;