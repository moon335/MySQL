
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- emp_no 10001번의 처음 연봉과 마지막 연봉을 비교하여 얼마나
-- 인상되었는지 구해보자
-- 인상률 구하는 식 : (인상 후 / 인상전 - 1) × 100%

SELECT e.emp_no, e.first_name, e.last_name, (max(s.salary)/min(s.salary)-1)*100 as '인상률'
FROM salaries as s
INNER JOIN employees as e
WHERE s.emp_no = 10001;


SELECT * FROM category;

desc category;

INSERT INTO category(name) VALUES ('운동');
INSERT INTO category(name) VALUES ('공부');
INSERT INTO category(name) VALUES ('연애');
INSERT INTO category(name) VALUES ('집안일');

UPDATE category SET name = '헬스' WHERE id = 1;

DELETE FROM category WHERE id = 7;

SELECT * FROM todolist;

desc todolist;

INSERT INTO todolist(title, description, priority, completed, category_id)
VALUES
	('운동', '헬스장가기', 1, 1, 1),
    ('집안일', '청소하기', 2, 0, 4),
    ('공부하기', '코딩공부', 0, 1, 2);
    
UPDATE todolist
SET title = '먹기', description = '게임', priority = 2, completed = 1, category_id = 3
WHERE id = 3;

DELETE FROM todolist WHERE id = 8;




