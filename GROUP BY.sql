
show TABLES;

-- LIMIT 10, 5 10번째부터 5개 들고와라
SELECT * FROM salaries
LIMIT 10;

SELECT * 
FROM salaries
GROUP BY emp_no
HAVING emp_no = 10001;

-- group by의 조건절을 사용할 때는 having 절을 사용한다.
-- 2단계
SELECT *, count(salary)
FROM salaries
GROUP BY emp_no;

-- 3단계 max, min
SELECT *, count(salary) AS count, 
		max(salary) as max, min(salary) as min,
        sum(salary) as sum, round(avg(salary), 2) as avg
FROM salaries
GROUP BY emp_no;

SELECT * FROM dept_emp;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM dept_manager;
SELECT * FROM salaries;

-- 2문제 생성, 직접 쿼리 출력

-- 각 부서에는 몇 명이 있는지 출력해보자
SELECT dept_no, count(dept_no) as count
FROM dept_emp
GROUP by dept_no;

-- 각 직급 별로 몇 명이 있는지 출력해보자

SELECT title, count(title) as count
FROM titles
GROUP BY title;

-- 총 직원의 남자 사원 수와 여자 사원 수를 구해보자
SELECT gender, count(gender) as gender_count
FROM employees
GROUP BY gender;

-- emp_no로 그룹을 나누고 title table에서 title과 salaries table에서 salary를 출력하라
SELECT s.emp_no, t.title, s.salary
FROM salaries as s
INNER JOIN titles as t
ON t.emp_no = s.emp_no
GROUP BY emp_no;

-- 위에서 출력한 값의 연봉이 65000 이상인 사람만 출력하라(몇 명인지도 출력)
SELECT s.emp_no, t.title, s.salary, count(s.salary) as count
FROM salaries as s
INNER JOIN titles as t
ON t.emp_no = s.emp_no
GROUP BY emp_no
HAVING s.salary >= 65000;

-- Engineer(시니어, 어시스턴트, 일반 모두 포함)라는 직책을 가진 사원들의 최고 연봉을 출력하라
SELECT s.emp_no, t.title, max(s.salary)
FROM titles as t
INNER JOIN salaries as s
ON t.emp_no = s.emp_no
GROUP BY t.title
HAVING t.title LIKE '%Engineer%';

-- 각 부서에는 몇 명이 있는지 출력해보자
SELECT dept_no, count(dept_no) as count
FROM dept_emp
GROUP by dept_no;

-- 각 직급 별로 몇 명이 있는지 출력해보자

SELECT title, count(title) as count
FROM titles
GROUP BY title;

-- employees 테이블과 salaries 테이블을 활용해서 남자 직원의 최고 연봉을 구하시오
SELECT e.emp_no, e.gender, max(s.salary)
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no
GROUP BY e.gender
HAVING e.gender = 'M';


SELECT *
FROM employees
GROUP BY gender;

-- 2단계
SELECT *, count(gender)
FROM employees
GROUP BY gender;

-- 3단계 조건 2개 걸기
SELECT *, count(hire_date)
FROM employees
GROUP BY hire_date, gender;

-- 
SELECT *
FROM employees;

SELECT *
FROM departments;

SELECT *
FROM dept_emp;
-- employees(1) : dept_emp(N)
-- dept_emp(N) : employees(1)

-- employees : departments --> N : M 관계 차수를 가진다.
-- 중간 테이블 dept_emp 만들어서 N : M 관계를 표현하고 있다.

-- employees : dept_emp --> 1 : N 관계로 풀어진다.
-- departments : dept_emp --> 1 : N 관계로 풀어진다.

-- 1단계 join 해보기
SELECT * 
FROM employees as e
LEFT JOIN dept_emp as d
ON e.emp_no = d.emp_no;

-- 2단계 중복 컬럼 제거하기
SELECT * 
FROM employees as e
LEFT JOIN dept_emp as d
ON e.emp_no = d.emp_no
LEFT JOIN departments as dp
ON d.dept_no = dp.dept_no;

-- 3단계 
SELECT e.emp_no, e.first_name, d.dept_no, dp.dept_name 
FROM employees as e
LEFT JOIN dept_emp as d
ON e.emp_no = d.emp_no
LEFT JOIN departments as dp
ON d.dept_no = dp.dept_no;

-- 4단계 - 사용 방법 연습
SELECT e.emp_no, e.first_name, d.dept_no, dp.dept_name 
FROM employees as e
LEFT JOIN dept_emp as d
ON e.emp_no = d.emp_no
LEFT JOIN departments as dp
ON d.dept_no = dp.dept_no
GROUP BY dept_no
HAVING dept_no = 'd001';


select * from dept_manager;
select * from salaries;

-- d003 소속 매니저 사원 중 가장 높은 연봉과 월급의 평균값 출력
SELECT d.dept_no, max(s.salary), floor(max(s.salary) / 12)
FROM dept_manager as d
INNER JOIN salaries as s
ON d.emp_no = s.emp_no
GROUP BY d.dept_no
HAVING d.dept_no = 'd003';



SELECT * FROM titles;
-- Staff --> 결과 집합으로 Staff 직원의 이력을 결과 집합으로 만들고 싶음
SELECT *
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE t.title = 'Staff'
ORDER BY e.emp_no desc
LIMIT 10;

-- 2단계
SELECT e.emp_no, e.first_name, e.last_name, t.title
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE t.title = 'Staff'
LIMIT 10;

desc employees;

SELECT * FROM employees;
SELECT * FROM salaries;

SELECT e.first_name, e.last_name, count(s.salary) as '연봉 받은 횟수'
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no
GROUP BY e.emp_no
HAVING e.first_name = 'Georgi' 
	AND e.last_name = 'Facello';