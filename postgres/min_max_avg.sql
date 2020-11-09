-- MIN, MAX, AVG command


-- min, will return minimum price
SELECT MIN(price) FROM car;


-- max, will return the maximum price
SELECT MAX(price) FROM car;


-- avg, will return the average value from price
SELECT AVG(price) FROM car;


-- round the average value
SELECT ROUND(AVG(price)) FROM car;


-- combine with group by
SELECT make, MIN(price) FROM car
GROUP BY make;


-- combine with group by and order by
SELECT make, MAX(price) FROM car
GROUP BY make
ORDER BY max DESC;