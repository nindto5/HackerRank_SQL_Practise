-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

SELECT
    C.company_code,
    C.founder,
    COUNT(DISTINCT LM.lead_manager_code) AS total_lead_managers,
    COUNT(DISTINCT SM.senior_manager_code) AS total_senior_managers,
    COUNT(DISTINCT M.manager_code) AS total_managers,
    COUNT(DISTINCT E.employee_code) AS total_employees
FROM
    Company AS C
LEFT JOIN Lead_Manager AS LM ON C.company_code = LM.company_code
LEFT JOIN Senior_Manager AS SM ON C.company_code = SM.company_code
LEFT JOIN Manager AS M ON C.company_code = M.company_code
LEFT JOIN Employee AS E ON C.company_code = E.company_code
GROUP BY
    C.company_code, C.founder
ORDER BY
    C.company_code ASC;
