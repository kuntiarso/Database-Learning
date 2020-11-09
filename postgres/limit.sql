-- limit, offset, and fetch --


SELECT * FROM person
LIMIT 10;
--return only first 10 row


SELECT * FROM person
OFFSET 10
LIMIT 5;
--after row 10, return only first 5 row.
--ex: row 11,12,13,14,15.


SELECT * FROM person
OFFSET 10
FETCH FIRST 10 ROW ONLY;
--after row 10, return the next 10 row.


-- fetch actually has the same meaning to limit.
-- But instead of limit, fetch is standard sql command.
SELECT * FROM person
OFFSET 10
FETCH FIRST ROW ONLY;
--after row 10, return the only next row (row 11);

SELECT * FROM person
OFFSET 10
FETCH FIRST 1 ROW ONLY;
--the same meaning as above command;