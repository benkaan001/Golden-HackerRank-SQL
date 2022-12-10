/*

P(R) represents a pattern drawn by Julia in R rows.
The following pattern represents P(5):

* * * * *
* * * *
* * *
* *
*

Write a query to print the pattern P(20).

*/



SET @counter = 21;
SELECT REPEAT('* ', @counter := @counter-1)
FROM information_schema.tables
WHERE @counter > 1;