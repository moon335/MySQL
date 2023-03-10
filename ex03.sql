
SELECT * FROM employees;

desc employees;

SELECT * FROM employees
where emp_no = 10002;

SELECT * FROM buyTBL;
SELECT * FROM userTBL;

desc buyTBL;
desc userTBL;

-- RENAME TABLE shopdb TO showdb;

INSERT INTO userTBL(userName, birthYear, addr, mobile)
VALUES('티모', '2000', '대구', '010-1234-1234');

INSERT INTO buyTBL(userName, prodName, price, amount)
VALUES('티모', '컴퓨터', 150, 1);

UPDATE userTBL
	SET birthYear = '1990', addr = '천안', mobile = '010-2222-2222'
    WHERE userName = '야스오2';
    
DELETE from userTBL WHERE userName = '티모';
DELETE from buyTBL WHERE userName = '유진스';

-- 구매 테이블에 데이터 입력할 때 유저 테이블에 이름이 없으면 입력 안됨 !!

-- 자식 테이블에 먼저 삭제하고 부모 테이블에 정보를 삭제한다.

UPDATE buyTBL
SET prodName = '냉장고', price = 200, amount = 1
WHERE userName = '이승기' AND prodName = '냉장고';

UPDATE userTBL
SET userName = '뉴진스'
WHERE userName = '티모';