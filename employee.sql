
SELECT * FROM employees;

SELECT * FROM salaries;

SELECT dept_no, from_date, to_date, COUNT(dept_no) AS 'count'
FROM dept_manager
GROUP BY dept_no
HAVING dept_no >= 'd005';

SELECT *
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
WHERE s.salary >= 70000;