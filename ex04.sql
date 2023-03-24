
SELECT * FROM salaries;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM titles;

SELECT * FROM departments;



-- dept_manager 테이블과 employees 테이블을 join하여
-- 각 부서의 번호와 현재 매니저의 사원번호, 이름, 성을 출력해보자
SELECT d.dept_no, d.emp_no, e.first_name, e.last_name
FROM dept_manager as d
INNER JOIN employees as e
ON d.emp_no = e.emp_no
WHERE d.to_date = '9999-01-01';

-- 사원번호 10030번까지의 사원들의 최고 연봉을 구하라
SELECT emp_no, max(salary) as '최고 연봉'
FROM salaries
GROUP BY emp_no
having emp_no < 10030;

-- 사원 번호 10100번까지의 사원들이 연봉을 받은 횟수를 구하라
SELECT emp_no, count(salary) as '연봉 받은 횟수'
FROM salaries
GROUP BY emp_no
HAVING emp_no < 10100;


CREATE TABLE food_product(
	product_id VARCHAR(10) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_cd VARCHAR(10),
    category VARCHAR(10),
    price INT
);

INSERT INTO food_product(product_id, product_name, product_cd, category, price)
VALUES
	('P0018', '맛있는고추기름', 'CD_OL00008', '식용유', 6100),
    ('P0019', '맛있는카놀라유', 'CD_OL00009', '식용유', 5100),
    ('P0020', '맛있는산초유', 'CD_OL00010', '식용유', 6500),
    ('P0021', '맛있는케첩', 'CD_SC00001', '소스', 4500),
    ('P0022', '맛있는마요네즈', 'CD_SC00002', '소스', 4700),
    ('P0039', '맛있는황도', 'CD_CN00008', '캔', 4100),
    ('P0040', '맛있는명이나물', 'CD_CN00009', '캔', 3500),
    ('P0041', '맛있는보리차', 'CD_TE00010', '차', 3400),
    ('P0042', '맛있는메밀차', 'CD_TE00001', '차', 3500),
    ('P0099', '맛있는맛동산', 'CD_CK00002', '과자', 1800);
    

-- 카테고리가 식용유와 소스인 식품들을 가격순으로 내림차순 정렬해보자
SELECT category, product_name, price
FROM food_product
WHERE category = '식용유' OR category = '소스'
ORDER BY price desc;