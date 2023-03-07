
-- drop table `order`;

CREATE TABLE `order` (
  id INT PRIMARY KEY,
  customer_order VARCHAR(50) NOT NULL,
  product_name VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  order_date DATE NOT NULL
);

-- 데이터를 입력하는 쿼리 구문을 작성해 주세요.
INSERT INTO `order` VALUE(1, '문 앞에 나둬 주세요.', '치킨', 1, '2023-03-06');

-- DATE 타입에 값을 넣을 때 작은 따옴표나 큰 따옴표를 사용해도 되고
-- 정수값을 입력하여도 된다. 단 날짜 형식에 맞는 값이어야 한다.
-- 1년은 12개월인데 13이라는 값을 넣으면 알아서 오류를 일으켜 준다.

INSERT INTO `order` VALUE(2, '문 앞에 나둬 주세요.', '치킨', 1, 20230306);

INSERT INTO `order` VALUE(3, '문 앞에 나둬 주세요.', '치킨', 1, '20230306');

SELECT * FROM `order`;

-- DROP table customer;

-- AUTO_INCREMENT
-- 고객 테이블 생성

CREATE TABLE customer(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    address VARCHAR(100) NOT NULL
);

INSERT INTO customer(name, email, address)
VALUES
	('김철수', 'a@naver.com', '서울시 강남구 역삼동'),
    ('박영희', 'b@naver.com', '서울시 강동구 천호동'),
    ('김철수', 'c@naver.com', '서울시 강남구 역삼동');
    
SELECT * FROM customer;

-- 영화

CREATE TABLE movie(
	movie_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    running_time INT NOT NULL
);

ALTER TABLE movie ADD `release` DATE NOT NULL;

desc movie;

INSERT INTO movie(name, price, running_time, `release`)
VALUES
	('대외비', 15000, 115, '2021-08-07'),
    ('스즈메의 문단속', 15000, 122, 20230308),
    ('더 퍼스트 슬램덩크', 15000, 124, 20230104),
    ('앤트맨과 와스프: 퀀텀매니아', 15000, 125, '2023-02-15'),
    ('서치2', 15000, 110, 20230222);

SELECT * FROM movie;
