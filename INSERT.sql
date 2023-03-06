-- 데이터 저장(한줄 주석)
/*
 여러줄 주석
*/

-- DROP TABLE student;
-- DROP TABLE subject;
-- DROP TABLE product;
-- use mydb;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50)
);

-- 기본 문구 모양
-- INSERT INTO 테이블명(컬럼명1, 컬럼명2, ..) VALUES (값1, 값2);

INSERT INTO student(student_id, name, grade, major) 
VALUES (1, "홍길동", 3, "컴퓨터공학과");

INSERT INTO student(student_id, name, grade, major)
VALUES (2, "김철수", 4, "전자공학과");

INSERT INTO student(student_id, name, grade, major)
VALUES (3, '이영희', 2, '경영학과');

INSERT INTO student(student_id, name, grade, major)
VALUE (4, '티모', 1, '롤학과');

-- 복수형으로 인설트 쿼리문 작성하기
-- 테이블에 데이터를 삭제하는 명령어
DELETE FROM student; -- 테이블 안에 있는 데이터만 삭제하는 명령어이다.

-- 복수형으로 insert 쿼리문 작성하기
INSERT INTO student(student_id, name, grade, major)
VALUES
	(1001, '김철수', 2, '컴퓨터공학과'),
    (1002, '이영희', 3, '수학과'),
    (1003, '박민수', 1, '전자공학과');
    
-- 복수형으로 데이터 3행을 넣어주세요. 단 VALUE로 사용해보세요.

INSERT INTO student(student_id, name, grade, major)
VALUE (1004, '홍길동', 2, '국문학과');

INSERT INTO student(student_id, name, grade, major)
VALUE (1005, '고길동', 2, '국제무역학과');

INSERT INTO student(student_id, name, grade, major)
VALUE (1006, '박찬호', 2, '사회체육학과');

-- INSERT 구문에서 복수행 쿼리를 실행할 때 하나라도 오류가 있으면
-- 데이터는 정상 저장되지 않는다.
INSERT INTO student(student_id, name, grade, major)
VALUES
	(1007, '김철수3', 2, '컴퓨터공학과'),
    (1008, '이영희3', 3, '수학과'),
    (1009, '박민수3', 1, '전자공학과');

SELECT * FROM student;

desc employee;

INSERT INTO employee(employee_id, name, age, department)
VALUES
	(1, '김영희', '25', '영업부'),
    (2, '김철수', '26', '인사과'),
    (3, '박민수', '30', '영업부'),
    (4, '곽두칠', '35', '인사과'),
    (5, '김두식', '28', '보안과');

desc customer;

INSERT INTO customer(customer_id, name, email, address)
VALUES
	(1, '김리나', 'abcd@naver.com', '부산시 동구'),
    (2, '김덕철', 'abb@gmail.com', '부산시 남구'),
    (3, '박정우', 'cdse@hanmail.net', '부산시 중구'),
    (4, '황정민', 'hjm@naver.com', '부산시 동구'),
    (5, '이정재', 'ljj@gmail.com', '부산시 진구');

SELECT * FROM customer;
SELECT * FROM employee;

CREATE TABLE product(
	product_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL
);

INSERT INTO product(product_id, name, price)
VALUE(1, '냉장고', 5000000);

INSERT INTO product(product_id, name, price)
VALUE(2, 'TV', 1500000);

INSERT INTO product(product_id, name, price)
VALUE(3, '컴퓨터', 2000000);

SELECT * FROM product;

desc student;

-- 테이블 제약사항에 NULL 허용 의미와 NOT NULL 허용 의미를 알고 있음
-- 이미 생성된 테이블 제약 사항 변경하기
ALTER TABLE student MODIFY grade INT NULL;

desc student;

INSERT INTO student(student_id, name, major)
VALUES(1, '홍길동', '검술학과');

-- grade 제약을 NOT NULL로 변경해보기
-- 테이블 값이 하나 들어가 있음
-- 오류
ALTER TABLE student MODIFY grade INT NOT NULL;

SELECT * FROM student;

DELETE FROM student WHERE student_id = 1;

-- major 컬럼 제약을 NOT NULL 변경해 주세요.
ALTER TABLE student MODIFY major VARCHAR(50) NOT NULL;

-- 컬럼 선언 부분을 생략도 가능하다. 단 전부 값을 넣으려고 하는 상황일 때
INSERT INTO student VALUES(1, '홍길동', 3, '검술학과');

SELECT * FROM student;

-- insert 구문 컬럼명 선언 방식
-- 1. 전부 작성하는 방법
-- 2. 제약 사항이 null인 열이 있다면 넣고 싶은 열만 지정해서 구문을 작성할 수 있다.
-- 3. 전부 데이터를 넣는 상황이라면 컬럼 선언 부분을 생략 가능하다.

DROP TABLE student;

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) DEFAULT '미정' NOT NULL
);

DESC student;

-- 디폴트 제약을 사용했을 때 값을 넣는 방법 1
INSERT INTO student(student_id, name, grade, major)
VALUES
	(1, 'John', 3, '경영학과'),
    (2, 'Jane', 2, '경영학과'),
    (3, 'Mike', 1, DEFAULT),
    (4, 'David', 2, DEFAULT);
    
SELECT * FROM student;

-- 디폴트 제약을 사용했을 때 값을 넣는 방법 2
INSERT INTO student(student_id, name, grade)
VALUES
	(5, '홍길동1', 2),
    (6, '홍길동2', 3),
    (7, '홍길동3', 1),
    (8, '홍길동4', 3);

-- professor 컬럼 제약 사항을 default로 추가하고 값을 빈 문자열로 만들어 주세요.
-- 빈 문자열의 의미는 "" 처리하면 된다.
CREATE TABLE subject(
	subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    professor VARCHAR(50) NOT NULL
);

SELECT * FROM subject;

-- 테이블이 생성 되어 있을 때 제약 변경 default 구문 추가
ALTER TABLE subject MODIFY professor VARCHAR(50) DEFAULT "" NOT NULL;

desc subject;