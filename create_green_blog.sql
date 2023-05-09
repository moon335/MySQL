-- UTF-8 언어 확인
SHOW VARIABLES LIKE 'character_set%';
SHOW VARIABLES LIKE 'c%';

-- java : utf-8 -> 1 ~ 4 동적으로 처리
-- mysql : utf-8 : 3byte
-- mysql : utf-8mb4 확장 : 4byte

-- 데이터 베이스 생성하기
create database green_blog;
use green_blog;
-- 사용자 생성 및 권한 처리(로컬호스트는 허용이 안된 상태)
create user 'ten'@'%' IDENTIFIED by '1q2w3e4r5t!';
grant all privileges on *.* to 'ten'@'%';
-- 로컬 호스트도 허용 시키기
create user 'ten'@'localhost' IDENTIFIED by '1q2w3e4r5t!';
grant all privileges on *.* to 'ten'@'localhost';

FLUSH PRIVILEGES;

-- 사용자 확인
use mysql;
select user, host from user;
