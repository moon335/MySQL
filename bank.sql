
-- 유저 테이블 설계해 보기
CREATE TABLE user_tb(
	id int AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) not null UNIQUE,
    password VARCHAR(30) not null,
    fullname VARCHAR(50) not null,
    created_at TIMESTAMP not null DEFAULT now()
);

-- 사용자의 계좌 정보 테이블
CREATE TABLE account_tb(
	id int AUTO_INCREMENT PRIMARY KEY,
    number VARCHAR(30) not null UNIQUE,
    password VARCHAR(20) not null,
    balance BIGINT not null COMMENT '계좌 잔액',
    user_id int,
    created_at TIMESTAMP not null DEFAULT now()
);

-- 입금 내역 저장
-- 출금 내역 저장
-- 사용자간 이체 내역 저장

-- 사용자들의 history 테이블 설계
-- BIGINT 8바이트 크기의 정수형
-- 조(10의 12승) -- 경(10의 16승) -- 해(10의 20승)
-- 자(10의 24승) -- 양(10의 28승)
CREATE TABLE history_tb(
	id int AUTO_INCREMENT PRIMARY KEY COMMENT '거래 내역 ID',
    amount BIGINT not null COMMENT '거래 금액',
    w_account_id int COMMENT '출금 계좌 id',
    d_account_id int COMMENT '입금 계좌 id',
    w_balance BIGINT COMMENT '출금 요청된 계좌의 잔액',
    d_balance BIGINT COMMENT '입금 요청된 계좌의 잔액',
    created_at TIMESTAMP not null DEFAULT now()
);


 
INSERT INTO user_tb(username, password, fullname, created_at) values('길동', '1234',
'고', now());
INSERT INTO user_tb(username, password, fullname, created_at) values('둘리', '1234',
'애기공룡', now());
INSERT INTO user_tb(username, password, fullname, created_at) values('콜', '1234',
'마이', now());

SELECT * FROM user_tb;

INSERT INTO account_tb(number, password, balance, user_id, created_at)
values('1111', '1234', 900, 1, now());
INSERT INTO account_tb(number, password, balance, user_id, created_at)
values('2222', '1234', 1100, 2, now());
INSERT INTO account_tb(number, password, balance, user_id, created_at)
values('333', '1234', 0, 3, now());

SELECT * FROM account_tb;
DELETE FROM history_tb;
ALTER TABLE history_tb AUTO_INCREMENT = 1;

-- 히스토리 추적 내용 (이체, 입금, 출금)
-- 히스토리 테이블에 insert 구문을 작성
-- 이체 내역을 기록 ( 1번 계좌에서 2번 계좌로 100원 이체)
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES(100, 900, 1100, 1, 2, now());

-- 출금 내역 ( 1번 계좌에서 100원을 출금 처리)
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES(100, 800, NULL, 1, NULL, now());

SELECT * FROM history_tb;

-- 입금 내역 (1번 계좌에 500원 입금 처리)
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES(500, null, 700, null, 1, now());

-- 출금 내역 (3번이 1000 출금, 잔액 0원인 상태를 거래 내역 기록)
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES(1000, 1000, null, 3, null, now());

-- 이체 연습
-- 입금 연습
-- 출금 연습


-- 입금 출금 이체, 거래내역
-- 어떤 데이터를 뽑아 낼 수 있는가
-- 이체
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES
	(500, 1, 3, 1200, 0, now());

-- 입금
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES
	(500, null, 1, null, 700);

-- 출금
INSERT INTO history_tb(amount, w_balance, d_balance,
						w_account_id, d_account_id, created_at)
VALUES
	(100, 1, null, 1200, null, now());

SELECT * FROM history_tb;

-- history_tb에서 계좌 id 1번인 입금 내역을 만드시오
SELECT amount, d_account_id, d_balance, created_at
FROM history_tb
WHERE d_account_id = 1;

-- history_tb에서 계좌 id 1번인 출금 내역을 만드시오
SELECT amount, w_account_id, w_balance, created_at
FROM history_tb
WHERE w_account_id = 1;

-- histroy_tb 에서 계좌 id 1번인 입출금 쿼리를 만드시오
SELECT *
FROM history_tb
WHERE w_account_id = 1 OR d_account_id = 1;

-- fullname 애기공룡의 계좌 id를 뽑아 계좌 입출금 내역을 출력해주세요.
SELECT *
FROM history_tb
WHERE w_account_id in (
	SELECT id
    FROM user_tb
    WHERE fullname = '애기공룡'
) OR d_account_id in (
	SELECT id
    FROM user_tb
    WHERE fullname = '애기공룡'
);

SELECT * 
FROM history_tb AS h 
WHERE h.id in (
			SELECT u.id
			FROM user_tb AS u
			INNER JOIN account_tb AS a 
			ON u.id = a.id
			WHERE u.username = '둘리' AND u.fullname = '애기공룡'
);

SELECT h.d_account_id, h.amount, h.d_balance, h.created_at, a.number
FROM history_tb as h
INNER JOIN account_tb as a
ON h.d_account_id = a.user_id
WHERE h.d_account_id IS NOT NULL;

SELECT h.w_account_id, h.amount, h.w_balance, h.created_at, a.number
FROM history_tb as h
INNER JOIN account_tb as a
ON h.w_account_id = a.user_id
WHERE h.w_account_id IS NOT NULL;

-- 500원 이상 출금한 유저의 정보를 출력해보자
SELECT *
FROM user_tb
WHERE id IN (
	SELECT w_account_id
    FROM history_tb
    WHERE amount > 500
);

