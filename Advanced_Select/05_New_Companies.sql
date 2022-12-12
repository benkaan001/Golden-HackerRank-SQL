/*
    COMPANY TABLE -> company_code(str), founder(str)
    EMPLOYEE TABLE -> employee_code(str), manager_code(str),
                      senior_manager_code(str), lead_manager_code(str),
                      compnay_code(str)
    CONSTRAINTS:

        The tables may contain duplicate records.
        Sort the result alphabetically based on company_code string
            i.e C_1, C_2, C_10 ---> C_1, C_10, C_2
*/



SELECT c.company_code, c.founder,
        COUNT(DISTINCT e.lead_manager_code),
        COUNT(DISTINCT e.senior_manager_code),
        COUNT(DISTINCT e.manager_code),
        COUNT(DISTINCT e.employee_code)
FROM company c
JOIN employee e
ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;