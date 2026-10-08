SET LINESIZE 200
SET PAGESIZE 50
COLUMN first_name FORMAT A12
COLUMN dept       FORMAT A12

SELECT emp_id,
       first_name,
       salary,
       fn_annual_salary(emp_id)    AS annual_salary,
       fn_years_of_service(emp_id) AS years_service,
       fn_calculate_tax(salary)    AS monthly_tax,
       fn_dept_name(dept_id)       AS dept
  FROM employees
 ORDER BY emp_id;