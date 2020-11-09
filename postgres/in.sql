-- IN command


SELECT * FROM person
WHERE country_of_birth
IN ('China', 'Brazil', 'France');
--return all the row that country_of_birth matched with the params


-- for comparison with OR command, that return the same result as above
SELECT * FROM person
WHERE country_of_birth = 'China'
OR country_of_birth = 'Brazil'
OR country_of_birth = 'France';


-- IN makes sql queries look simple and easy to read
SELECT * FROM person
WHERE country_of_birth
IN ('Indonesia','Singapore', 'USA', 'Ukraine', 'Poland', 'Germany', 'Australia'); --and so on.