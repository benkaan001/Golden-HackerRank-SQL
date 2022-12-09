/*
Samantha was tasked with calculating the average monthly salaries for all employees
in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken
until after completing the calculation.
She wants your help finding the difference between her miscalculation
(using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error
(i.e.: actual - miscalculated average monthly salaries),
and round it up to the next integer.

Sample Input:

ID      NAME        SALARY
1       Kristen     1410
2       Ashley      2006
3       Julia       2210
4       Maria       3000

Sample Output:

2016

Explanation:

Samantha computes an average salary of 98.00.
The actual average salary is 2159.00.

The resulting error between the two calculations is
2159.00 - 98.00 = 2061.00 .
Since it is equal to the integer 2061, it does not get rounded up.

*/

SELECT CEIL( AVG(salary) - AVG(REPLACE(salary, '0', '')) )
FROM employees;

