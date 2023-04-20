-- 트랜잭션 처리해보기
START TRANSACTION;

insert into user_tb(username, password, fullname)
VALUES('john', '1234', 'kim');

insert into user_tb(username, password, fullname)
VALUES('Mike', '222', 'Lee');

ROLLBACK;