
CREATE DATABASE shopdb;

USE shopdb;

CREATE TABLE userTBL(
	userName CHAR(3) NOT NULL,
    birthYear INT NOT NULL,
    addr CHAR(2) NOT NULL,
    mobile CHAR(13) NOT NULL,
    PRIMARY KEY (userName)
);

ALTER TABLE userTBL MODIFY mobile VARCHAR(13);

DESC userTBL;

CREATE TABLE buyTBL(
	userName CHAR(3) NOT NULL,
    prodName CHAR(3) NOT NULL,
    price INT NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (userName) REFERENCES userTBL(userName)
);

INSERT INTO userTBL VALUES('이승기', 1987, '서울', '010-1234-1234');
insert IntO USERTBL Values('홍길동', 1911, '부산', '010-2222-3333');
Insert into userTBL VALUES('이순신', 1999, '대구', '010-3333-4444');

insert inTo buyTBL values('이승기', '운동화', 50, 1);
iNSERT Into buyTBL Values('이승기', '노트북', 150, 1);
INSErt into BUYTBL values('홍길동', '책', 10, 5);
INSeRT iNTO BUyTBL values('홍길동', '모니터', 200, 2);
insErT InTO bUYTBL vALUEs('이순신', '청바지', 40, 1);
inSert into buyTBL VAlUEs('이순신', '책', 10, 3);

-- 에러 발생
-- 현재 부모 테이블 userTBL에 야스오는 없는 사람이기 때문에 존재할 수 없다.
INSERT into buyTBL values('야스오', '책', 10, 3);

SELECT * FROM userTBL;
SELECT * FROM buyTBL;

-- inner join
SELECT *
FROM userTBL
INNER JOIN buyTBL
ON userTBL.userName = buyTBL.userName;

-- left join
SELECT *
FROM userTBL
LEFT JOIN buyTBL
ON userTBL.userName = buyTBL.userName;

-- right join
SELECT *
FROM userTBL
RIGHT JOIN buyTBL
ON userTBL.userName = buyTBL.userName;

-- 야스오 회원 가입함
INSERT INTO userTBL(userName, birthYear, addr, mobile)
VALUES('야스오', 2020, '부산', '010-1234-1234');

SELECT *
FROM userTBL
LEFT JOIN buyTBL
ON userTBL.userName = buyTBL.userName
WHERE buyTBL.userName IS NOT NULL;

-- as(별칭) 사용해서 다시 inner join

SELECT *
FROM userTBL AS U
INNER JOIN buyTBL AS B
ON U.userName = B.userName;

-- 별칭 사용 left join, left join is not null 작성하기

SELECT *
FROM userTBL AS U
LEFT JOIN buyTBL AS B
ON U.userName = B.userName;

SELECT *
FROM userTBL AS U
LEFT JOIN buyTBL AS B
ON U.userName = B.userName
WHERE B.userName IS NOT NULL;

-- LEFT JOIN 기준 테이블 선정
-- 기준 테이블 선정에 따라 결과 집합이 다를 수 있다.
-- 기준 테이블 선정 기준은 작은 데이터를 기준으로 하는 것이 좋다.
SELECT *
FROM buyTBL as b
LEFT JOIN userTBL as u
ON b.userName = u.userName;

-- right join

SELECT u.userName, b.prodName, b.price, b.amount
FROM userTBL as u
RIGHT JOIN buyTBL as b
ON u.userName = b.userName;

-- 연산 사용해보기
SELECT u.userName, b.prodName, b.price, b.amount, (b.price * b.amount) AS 'SUM'
FROM userTBL as u
RIGHT JOIN buyTBL as b
ON u.userName = b.userName;

-- 문제 작성 3문제

-- 기준 테이블은 userTBL로 하고 LEFT JOIN을 사용하여
-- 주문자 이름과, 주소, 전화번호, 상품 이름, 가격, 주문 수량
-- 을 출력해보자 (단, 주문 정보가 없는 경우 출력하지 않는다.)

SELECT u.userName, u.addr, u.mobile, b.prodName, b.price, b.amount
FROM userTBL as u
LEFT JOIN buyTBL as b
ON u.userName = b.userName
WHERE b.userName IS NOT NULL;

-- 기준 테이블은 userTBL로 하고 inner join을 사용하여
-- 주문자 이름, 전화번호, 상품명을 출력해보자

SELECT u.userName, u.mobile, b.prodName
FROM userTBL as u
INNER JOIN buyTBL as b
ON u.userName = b.userName;

-- 기준 테이블은 buyTBL로 하고 LEFT JOIN을 사용하여
-- 주문자 이름, 주소, 상품명, 가격을 출력해보자
-- 단, 주문 정보가 없는 경우 출력하지 않는다

SELECT u.userName, u.addr, b.prodName, b.price
FROM buyTBL as b
LEFT JOIN userTBL as u
ON b.userName = u.userName;


-- 문제

-- 1. 성이 이씨이면서 태어난 년도가 1999년인 구매한 아이템 정보를 표시해 주세요

SELECT u.userName, b.prodName, b.price, b.amount
FROM userTBL as u
INNER JOIN buyTBL as b
ON u.userName = b.userName
WHERE u.userName LIKE '이%' 
	AND u.birthYear = 1999;
    
-- 2. 기준 테이블은 userTBL로 하고 LEFT JOIN을 사용하여 주문자 이름과, 주소, 전화번호, 상품 이름, 가격, 주문 수량 을 출력해보자 (단, 주문 정보가 없는 경우 출력하지 않는다.)

SELECT u.userName, u.addr, u.mobile, b.prodName, b.price, b.amount
FROM userTBL as u
LEFT JOIN buyTBL as b
ON u.userName = b.userName
WHERE b.userName IS NOT NULL;

-- 3. LEFT JOIN을 사용하여 NULL값도 확인할 수 있게 출력해보자

SELECT *
FROM userTBL as u
LEFT JOIN buyTBL as b
ON u.userName = b.userName;

-- 4. userTBL 기준으로 INNER JOIN하고 buyTBL에서 수량이 3개 이상인 데이터만 조회해라

SELECT *
FROM userTBL as u
INNER JOIN buyTBL as b
ON u.userName = b.userName
WHERE b.amount >= 3;

-- 5. buyTBL 기준으로 RIGHT JOIN하고, userName이 '이승기'이거나
-- '야스오'이면서 userTBL의 userName이 null이 아닌 데이터를 조회해라

SELECT *
FROM buyTBL as b
RIGHT JOIN userTBL as u
ON b.userName = u.userName
WHERE (b.userName = '이승기'
	OR b.userName = '야스오')
	AND u.userName IS NOT NULL;
    
-- 6. 기준 테이블로 buyTBL을 사용해서 LEFT JOIN을 수행하고,
-- 1999년에 태어난 사람은 총 몇 개의 물품을 구매했는지 구하시오.

SELECT sum(b.amount) as '총 구매 개수'
FROM buyTBL as b
LEFT JOIN userTBL as u
ON b.userName = u.userName
WHERE u.birthYear = 1999;

-- 7. 기준 테이블로 userTBL을 사용해서 INNER JOIN을 수행하고,
-- '책'을 구매한 사람들의 이름과 전화번호를 출력하시오.

SELECT u.userName, u.mobile
FROM userTBL as u
INNER JOIN buyTBL as b
ON u.userName = b.userName
WHERE b.prodName = '책';

-- 8. 기준 테이블로 buyTBL을 사용해서 RIGHT JOIN을 수행하고,
-- '대구'에 사는 사람이 구매한 물품들을 출력하시오.

SELECT b.prodName
FROM buyTBL as b
RIGHT JOIN userTBL as u
ON b.userName = u.userName
WHERE u.addr = '대구';