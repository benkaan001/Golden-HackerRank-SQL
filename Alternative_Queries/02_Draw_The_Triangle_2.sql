/*

P(R) represents a pattern drawn by Julia in R rows.
The following pattern represents P(5):

*
* *
* * *
* * * *
* * * * *
Write a query to print the pattern P(20).

*/

SET @counter = 0;
SELECT REPEAT('* ', @counter := @counter+1)
FROM information_schema.tables
LIMIT 20; /* alternatively -> WHERE @counter <20 instead of LIMIT 20 */


/* ALSO PASSES CASE TESTS */

SELECT '*' FROM DUAL;
SELECT '* *' FROM DUAL;
SELECT '* * *' FROM DUAL;
SELECT '* * * *' FROM DUAL;
SELECT '* * * * *' FROM DUAL;
SELECT '* * * * * *' FROM DUAL;
SELECT '* * * * * * *' FROM DUAL;
SELECT '* * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * * * * * *' FROM DUAL;
SELECT '* * * * * * * * * * * * * * * * * * * *' FROM DUAL;