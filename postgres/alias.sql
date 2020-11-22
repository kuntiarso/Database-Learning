-- ALIAS command


SELECT *,
ROUND(price * .10, 2) AS ten_percent,
ROUND(price - (price * .10), 2) AS discount_price
from car;
-- AS(alias command) will make our column name like what we want to be,
-- instead of giving function name.