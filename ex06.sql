SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM departments;
SELECT * FROM dept_emp;


-- salaries 테이블을 emp_no로 묶어 연봉이 높은 
-- 순서대로 내림차순으로 정렬해보자
SELECT * 
FROM salaries
GROUP BY emp_no
ORDER BY salary desc;

-- employees 테이블과 salaries테이블을 이용하여 
-- 연봉이 100000 이상인 사람 중 연봉이 높은 순으로 사번, 연봉, 고용일을 출력하시오.
-- 단, 중첩 서브쿼리(WHERE절)를 사용하시오.

SELECT e.emp_no, s.salary, e.hire_date
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
WHERE e.emp_no IN (SELECT salary FROM salaries WHERE salary >= 100000)
ORDER BY s.salary desc;




-- 중첩 쿼리문을 사용하여 각 부서의 번호와 해당되는 부서의 현재 
-- 매니저의 사번, 성, 이름, 생일을 조회해보자
SELECT d.dept_no, e.emp_no, e.first_name, e.last_name, e.birth_date
FROM employees as e
INNER JOIN dept_manager as d
ON e.emp_no = d.emp_no
WHERE e.emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date = '9999-01-01');

-- 중첩쿼리를 사용해서 개발부(Development)에서 아직 일하는 사람 중 생일이 4월인 
-- 사람의 first_name, birth_date, dept_name,to_date를 출력하시오.
SELECT e.first_name, e.birth_date, d.dept_name, dp.to_date
FROM employees as e
INNER JOIN dept_emp as dp
ON  e.emp_no = dp.emp_no
INNER JOIN  departments as d
ON dp.dept_no = d.dept_no
WHERE e.birth_date LIKE '%04-%' 
AND dp.to_date IN (SELECT to_date FROM dept_emp WHERE to_date = '9999-01-01') 
AND d.dept_name = 'Development';


-- 사원 중 남자인 직원들의 emp_no, dept_no, from_date, to_date를
-- join을 사용하지 않고 서브쿼리를 이용하여 출력해보자
SELECT *
FROM dept_emp
WHERE emp_no IN (
	SELECT emp_no
    FROM employees
    WHERE gender = 'M'
);


SELECT *
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
WHERE de.dept_no
IN (SELECT dept_no FROM dept_emp WHERE from_date >= '1990-01-01');


SELECT dept_no FROM dept_emp WHERE from_date >= '1990-01-01';


-- 현재 Engineer 중 입사일이 1989-08-24 이후인 사원들의
-- 사번, 직급, 성, 이름, 성별, 입사일을 입사일 기준 오름차순으로 출력해보자
SELECT t.emp_no, t.title, e.first_name, e.last_name, e.gender, e.hire_date
FROM titles as t
INNER JOIN employees as e
ON t.emp_no = e.emp_no
WHERE t.title = 'Engineer' AND to_date = '9999-01-01' AND e.hire_date >= '1989-08-24'
ORDER BY e.hire_date asc;



