/* Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries. Use count and the appropriate join type to get a list of roles along with the number of users that has the role. Hint: You will also need to use group by in the query. */

SELECT r.name AS 'Role Name', count(u.name) AS 'Number of Users'
FROM users AS u
LEFT JOIN roles AS r
ON u.role_id = r.id
GROUP BY r.name;
 
 /*  Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department. */

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name AS 'Department Name'
    FROM employees AS e
JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
    WHERE now() BETWEEN dm.from_date AND dm.to_date;
    
--     Find the name of all departments currently managed by women.

SELECT DISTINCT d.dept_name AS 'Department Name'
    FROM employees AS e
JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
        WHERE e.gender = 'F' 
            AND now() BETWEEN dm.from_date AND dm.to_date;
    
--     Find the current titles of employees currently working in the Customer Service department.

SELECT t.title AS 'Title', count(*)
    FROM employees AS e
JOIN dept_emp AS de
    ON e.emp_no = de.emp_no
JOIN titles AS t
    ON t.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service'
    AND now() BETWEEN t.from_date AND t.to_date
    AND now() BETWEEN de.from_date AND de.to_date
GROUP BY t.title;

-- Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name', s.salary AS 'Salary'
    FROM departments AS d
JOIN dept_manager AS dm
    ON dm.dept_no = d.dept_no
JOIN employees AS e
    ON e.emp_no = dm.emp_no
JOIN salaries AS s
    ON s.emp_no = e.emp_no
WHERE now() BETWEEN s.from_date AND s.to_date 
    AND now() BETWEEN dm.from_date AND dm.to_date;

-- Find the names of all current employees, their department name, and their current manager's name.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name',
	CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
	FROM employees AS e
        	JOIN dept_emp AS de
            	ON de.emp_no = e.emp_no
        	JOIN departments AS d
            	ON d.dept_no = de.dept_no
        	JOIN dept_manager AS dm
            	ON dm.dept_no = d.dept_no 
        	JOIN employees AS em
            	ON em.emp_no = dm.emp_no
	WHERE de.to_date > now() 
        	AND dm.to_date > now();

