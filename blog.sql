
-- blog
-- 서버 프로그램 구현 - MYSQL <-- 서버와 연동

CREATE DATABASE myblog;

use myblog;

-- 사용자 생성
CREATE USER 'bloguser'@'%' IDENTIFIED BY '1q2w3e4r5t';

-- 사용자 기본 권한 조회
-- DB를 선택해야함
use mysql;
SELECT USER, HOST FROM USER;

-- '%' 어디서든지 접근 가능한 권한 (IP주소 개념)

SELECT * FROM USER WHERE USER = 'bloguser';

GRANT ALL PRIVILEGES ON *.* TO 'bloguser'@'%';

-- 방금 수정한 권한을 변경 즉시 적용하려면 한가지 명령어를 더 주어야 한다.
FLUSH PRIVILEGES;

