-- SUM command


SELECT SUM(price) FROM car;
-- return sum of all price


-- modify query with group by
SELECT make, SUM(price) FROM car
GROUP BY make;


-- modify query with group by and order by
SELECT make, SUM(price) FROM car
GROUP BY make
ORDER BY sum DESC;