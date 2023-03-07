-- WHERE 사용해보기

-- 학과가 '컴퓨터공학과' 학생들의 이름과 학번을 조회하고 싶을 때
-- 사용하는 쿼리문을 작성해보자
SELECT * FROM student;

SELECT student_id, name 
FROM student
WHERE major = '컴퓨터공학과';

-- student 테이블에서
-- 1. grade가 3인 학생들 조회 하기

SELECT *
FROM student
WHERE grade = 3;

-- 2. 이름이 홍길동인 학생 조회하기

SELECT *
FROM student
WHERE name = '홍길동';

-- 3. 학번이 1부터 10까지인 학생들 조회 (between  and  )

SELECT *
FROM student
WHERE student_id BETWEEN 1 AND 10;

-- 4. 학과가 컴퓨터 공학과이고, 학년이 2학년인 학생들만 조회해줘

SELECT *
FROM student
WHERE major = '디자인학과' AND grade = 1;

-- 5. 학과가 컴퓨터 공학과 이거나, 학년이 2학년인 학생들을 조회해 주세요.

SELECT *
FROM student
WHERE major = '컴퓨터공학과' OR grade = 2;

-- 6. 학생 이름이 홍길동이 아닌 학생들을 조회하기

SELECT *
FROM student
WHERE name != '홍길동';

SELECT *
FROM student
WHERE name <> '홍길동';

-- 7. 학생들의 학년이 2학년 이상인 사람들을 조회하기

SELECT *
FROM student
WHERE grade >= 2;

-- 8. 학생들의 학년이 2학년 미만인 사람들 조회

SELECT *
FROM student
WHERE grade < 2;

-- 9. 학년이 1학년 이거나 3학년, 4학년인 학생들 조회

SELECT *
FROM student
WHERE grade IN (1, 3, 4);

CREATE TABLE subject (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_name VARCHAR(50) NOT NULL,
  credit INT NOT NULL,
  department VARCHAR(50) NOT NULL,
  professor VARCHAR(50) NOT NULL
);

CREATE TABLE customer (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50),
  address VARCHAR(100) NOT NULL
);

INSERT INTO subject (subject_id, subject_name, credit, department, professor)
VALUES
	(1, '영어회화', 3, '외국어학과', '김영희'),
	(2, '프로그래밍 기초', 3, '컴퓨터공학과', '박철수'),
	(3, '데이터베이스 개론', 3, '컴퓨터공학과', '이승호'),
	(4, '컴퓨터 시스템 개론', 3, '컴퓨터공학과', '홍길동'),
	(5, '선형대수학', 3, '수학과', '김영수'),
	(6, '미적분학', 3, '수학과', '박순영'),
	(7, '국어문학사', 3, '국어국문학과', '최지혜'),
	(8, '국어문법론', 3, '국어국문학과', '이상호'),
	(9, '일본어회화', 3, '외국어학과', '김현진'),
	(10, '중국어학', 3, '외국어학과', '최영식'),
	(11, '미국사', 3, '사학과', '박영진');

INSERT INTO customer (id, name, email, address) 
VALUES
	(1, '김철수', 'kim@example.com', '서울시 강남구'),
	(2, '박영희', 'park@example.com', '서울시 서초구'),
	(3, '이민수', NULL, '경기도 성남시 분당구'),
	(4, '최영진', 'choi@example.com', '서울시 송파구'),
	(5, '한미영', 'han@example.com', '경기도 수원시 장안구'),
	(6, '강종현', 'kang@example.com', '서울시 강서구'),
	(7, '신영수', 'shin@example.com', '경기도 의정부시'),
	(8, '유승환', 'yoo@example.com', '경기도 부천시'),
	(9, '서민지', 'seo@example.com', '서울시 종로구'),
	(10, '임진우', 'lim@example.com', '경기도 안양시 동안구');
    
-- subject table에서
-- 1. 과목 이름이 '미국사'인 데이터 조회하는 쿼리
-- 2. 학점이 3점인 과목 데이터를 조회하는 쿼리
-- 3. 국어국문학과에서 개설된 과목 데이터를 조회하는 쿼리
-- 4. 과목 이름이 '영어회화'이거나 교우명이 '이승호'인 과목 데이터를 조회하는 쿼리

SELECT *
FROM subject
WHERE subject_name = '미국사';

SELECT *
FROM subject
WHERE credit = 3;

SELECT *
FROM subject
WHERE department = '국어국문학과';

SELECT *
FROM subject
WHERE subject_name = '영어회화' OR professor = '이승호';

-- 5. 과목 번호가 5보다 큰 데이터를 조회하는 쿼리

SELECT *
FROM subject
WHERE subject_id > 5;

-- 6. 과목 이름이 '데이터베이스 개론'이 아닌 데이터를 조회하는 쿼리

SELECT *
FROM subject
WHERE subject_name != '데이터베이스 개론';

SELECT *
FROM subject
WHERE subject_name <> '데이터베이스 개론';
-- mysql에서는 문자열 값을 다룰 때는 공백도 하나의 값으로 생각한다.

-- 7. 학과가 '컴퓨터공학과'이고 교수명이 '박철수'인 과목 데이터를 조회하는 쿼리

SELECT *
FROM subject
WHERE department = '컴퓨터공학과' AND professor = '박철수';

-- 교수명이 '김현진'이거나 '최영식'이면서 학과가 '외국어학과'인 과목 데이터를 조회하는 쿼리

SELECT *
FROM subject
WHERE professor IN ('김현진','최영식') AND department = '외국어학과';

-- 습관적으로 검증 쿼리를 출력해 볼 수 있다.

SELECT *
FROM subject
WHERE professor = '홍길동';

SELECT *
FROM customer;

-- 1. 서울시에 사는 고객들을 조회하는 쿼리

SELECT *
FROM customer
WHERE address LIKE '서울시%';

-- 2. id가 2부터 5 사이의 고객을 조회하는 쿼리

SELECT *
FROM customer
WHERE id between 2 AND 5;

-- 3. 이메일에 k로 시작하는 고객들을 조회하는 쿼리

SELECT *
FROM customer
WHERE email LIKE 'k%';

-- 4. 고객 id가 5 이상인 고객들을 조회하는 쿼리

SELECT *
FROM customer
WHERE id >= 5;

-- 5. ID가 5 이상이면서 서울시에 사는 사람의 이름을 조회하는 쿼리

SELECT name
FROM customer
WHERE id >= 5 AND address LIKE '서울시%';

-- 학생 문제
-- 1. 강남 3구에 사는 사람들을 조회(서초구, 송파구, 강남구)

SELECT *
FROM customer
WHERE address in ('서울시 강남구', '서울시 서초구', '서울시 송파구');

-- 2. email을 입력하지 않은 사람의 데이터를 출력하시오

SELECT *
FROM customer
WHERE email IS NULL;

-- 3. ID가 5이상이며 주소가 서울시에 거주하는 사람 이름을 검색해라

SELECT *
FROM customer
WHERE id >= 5 
	AND address IN ('서울시 강남구', '서울시 서초구', '서울시 송파구', '서울시 강서구', '서울시 종로구');

-- 4. 이메일이 NULL이 아니고 주문번호가 2번이 넘으며 종로구에 사시는 분을 검색해보자

SELECT *
FROM customer
WHERE email IS NOT NULL AND id > 2 AND address = '서울시 종로구';

-- 5. 주소가 '서울'이면서 id가 5 이하인 고객 조회하는 쿼리

SELECT *
FROM customer
WHERE address LIKE '서울%' AND id <= 5;

-- 6. 아이디가 3에서 8까지의 사람 중 '경기도 의정부시'에 거주하고 있는 사람 중 이메일을 입력한 사람을 출력하시오.

SELECT *
FROM customer
WHERE (id between 3 and 8)
	AND address = '경기도 의정부시' AND email IS NOT NULL;

-- 7. email이 NULL인 사람을 조회하는 쿼리 (IS NULL 을 사용해보세요)

SELECT *
FROM customer
WHERE email IS NULL;

-- 8. 서울시에 사는 고객들을 조회하는 쿼리 (LIKE 사용해보기) 

SELECT *
FROM customer
WHERE address LIKE '서울시%';

SELECT *
FROM customer
WHERE name IN ('신영수', '이민수')
	AND address LIKE '경기도%' AND email IS NULL;
    
SELECT *
FROM customer
WHERE email LIKE '%k%';