-- Find all the employees with the same hire date as employee 101010 using a sub-query.

SELECT concat(e.first_name, ' ', e.last_name) AS 'Full Name', e.hire_date AS 'Hire Date'
    FROM employees AS e
        WHERE e.hire_date IN (
            SELECT hire_date 
            FROM employees 
            WHERE emp_no = 101010
        );

-- Find all the titles held by all employees with the first name Aamod

SELECT DISTINCT t.title AS 'Titles held by Aamods'
    FROM titles AS t
        WHERE t.emp_no IN (
            SELECT emp_no 
            FROM employees
            WHERE first_name = 'Aamod'
        );
        
-- Find all the department managers that are female

SELECT concat(e.first_name, ' ', e.last_name) AS 'Female Dept Managers'
    FROM employees AS e
    WHERE e.gender = 'F'
    AND e.emp_no IN (
        SELECT emp_no 
        FROM dept_manager
    );
    
-- BONUS Find all the department names that have female managers

SELECT d.dept_name AS 'Departments w/female managers'
    FROM departments AS d
    WHERE d.dept_no IN (
        SELECT dm.dept_no 
        FROM dept_manager AS dm
        WHERE dm.emp_no IN (
            SELECT em.emp_no
            FROM employees AS em
            WHERE em.gender = 'F'
        )
    );

