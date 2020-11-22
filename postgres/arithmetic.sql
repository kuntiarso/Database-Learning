-- ARITHMETIC on postgres


SELECT *, ROUND(price * .10, 2) from car;
-- return new column valued with 10% of each prices and have 2 decimal at the end
-- ex: price: 12764,73 & newColumn: 1276,47


SELECT *, ROUND(price * .10, 2), ROUND(price - (price * .10), 2) from car;
-- return new column valued with price - 10% of each price and also have 2 decimal at the end
-- ex: 12764,73 (price) - 1276,47 (10% of price) = 11488,26 (newColumn)