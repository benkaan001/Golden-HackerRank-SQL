/*
We define an employee's total earnings to be their monthly
salary x months  worked,
and the maximum total earnings to be the maximum total earnings
for any employee in the Employee table.

Write a query to find the maximum total earnings for all employees
as well as the total number of employees who have maximum total earnings.
Then print these values as 2 space-separated integers.


Input Format:

The Employee table containing employee data for a company is described as follows:

Column          Type
employee_id     Integer
name            String
months          Integer
salary          Integer


Sample Output:

69952 1


Explanation:

The maximum earnings value is 69952.
The only employee with earnings = 69952 is Kimberly,
so we print the maximum earnings value (69952)
and a count of the number of employees who have earned $69952
(which is 1) as two space-separated values.

*/

SELECT MAX((salary * months)), COUNT(*)
FROM employee
WHERE (salary * months ) = (
    SELECT MAX(salary * months)
    FROM employee
);