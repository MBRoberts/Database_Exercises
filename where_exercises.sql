


SELECT * FROM employees
    WHERE (first_name = 'Irena' OR first_name =  'Vidya' OR first_name =  'Maya') AND gender = 'M' ORDER BY last_name DESC, first_name DESC;
    
SELECT * FROM employees
    WHERE last_name LIKE 'E%'
    ORDER BY emp_no DESC;
    
SELECT * FROM employees	
    WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
    
SELECT * FROM employees
    WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees
    WHERE last_name LIKE '%q%';
    
SELECT * FROM employees
    WHERE last_name LIKE 'e%'
    OR last_name LIKE '%e';
    
SELECT * FROM employees
    WHERE last_name LIKE 'e%'
    AND last_name LIKE '%e';
    
SELECT * FROM employees
    WHERE hire_date LIKE '199%'
    AND birth_date LIKE '%-12-25'
    ORDER BY birth_date,  hire_date DESC;
    
SELECT * FROM employees
    WHERE last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%';
    
-- extra query exercise
    
SELECT first_name FROM employees WHERE last_name LIKE 'h%' ORDER BY birth_date;

SELECT first_name, last_name FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '%12-25';

SELECT count(*) FROM employees WHERE birth_date LIKE '%-02-29';
