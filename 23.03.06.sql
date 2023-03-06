
-- 데이터 베이스 생성
-- CREATE DATABASE <데이터 베이스 이름>
CREATE DATABASE mydb;

-- DB를 사용하려면 사용한다고 명령어를 실행 해야 한다.
use mydb;

-- 테이블 생성시, SQL 작성시 어떤 DB를 사용해야 하는지 먼저 선택 되어야 한다.

-- 굵은 글씨는 MySQL에서 쓰는 예약어
-- 예약어는 대문자로 사용하고 우리가 직접 정의하는 단어는 소문자 사용
-- 테이블 생성
CREATE TABLE student(
	student_id INT,
    -- VARCHAR -> 문자를 넣는 데이터 타입, VAR는 가변형 즉 0 ~ 50자까지
    -- NOT NULL -> 제약 사항, 빈 값을 넣으면 오류
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
);

select * from student;
desc student;

-- 과목 테이블 생성하기
CREATE TABLE subject(
	subject_id INT,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department VARCHAR(50),
    professor CHAR(50) NOT NULL
);

SELECT * FROM subject;
desc subject;

desc student;
-- 이미 생성된 테이블에 기본 키 추가하는 쿼리 사용 방법
-- ALTER - 수정 TABLE - 테이블을 ADD - 추가하다 PRIMARY KEY - 기본값을
ALTER TABLE student ADD PRIMARY KEY(student_id);
 -- 사전기반지식 : 특정 컬럼을 기본키로 만들게 되면 중복된 데이터를 허용 못하고
 -- NULL 값이 있어서는 안됨
 
 -- subject 테이블에 PK 추가 대상 - subject_id
 -- 제약 확인
 ALTER TABLE subject ADD PRIMARY KEY(subject_id);
 desc subject;
 
 -- 생성될 시점에 테이블 생성 명령어를 보여줘
 SHOW CREATE TABLE student;

-- 테이블을 삭제하는 명령어 확인
DROP TABLE student;
DROP TABLE subject;

-- 학생 테이블 생성 PK 추가
CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(50) NOT NULL
);
desc student;

CREATE TABLE subject(
	subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    credit INT NOT NULL,
    department VARCHAR(10) NOT NULL,
    professor VARCHAR(20) NOT NULL
);

desc subject;

CREATE TABLE employee(
	employee_id INT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    age INT,
    department VARCHAR(10) NOT NULL
);

SELECT * FROM employee;
desc employee;

CREATE TABLE customer(
	customer_id INT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
);

SELECT * FROM customer;
desc customer;

CREATE TABLE product(
	id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT
);

desc product;

-- `order` 예약어는 기본적으로 테이블 이름을 선점할 수 없다.
-- 하지만 강제적으로 `` 백틱을 사용하여 테이블 이름이라고 명시할
-- 수 있다.
CREATE TABLE `order`(
	id INT PRIMARY KEY,
    customer_order VARCHAR(50),
    product_name VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    order_date DATE NOT NULL
);

CREATE TABLE membership(
	member_id INT PRIMARY KEY,
    name VARCHAR(10) NOT NULL,
    grade VARCHAR(10) NOT NULL,
    benefit TEXT NOT NULL,
    address VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    join_date DATE NOT NULL
);

desc membership;