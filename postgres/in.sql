-- IN command
SELECT * FROM person WHERE country_of_birth IN ('China', 'Brazil', 'France'); --return all the row that country_of_birth matched with the in params

-- for comparison with OR command
SELECT * FROM person WHERE country_of_birth = 'China' OR country_of_birth = 'Brazil' OR country_of_birth = 'France'; --return the same result as above

-- IN is a simplified or shorthanded command  to filter data with multiply value
SELECT * FROM person WHERE country_of_birth IN ('Indonesia', 'Singapore', 'USA', 'Ukraine', 'Poland', 'Germany', 'Australia'); --and so on.