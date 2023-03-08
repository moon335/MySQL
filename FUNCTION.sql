
SELECT now();

SELECT CURDATE();

SELECT CURTIME();

-- String Function

-- 아스키 코드값 출력
SELECT ASCII('U');

-- 문자열 길이 반환
SELECT char_length('my sql test');

-- 문자열을 더함
SELECT concat("green", "class", "100") as title;

-- 문자열 사이마다 맨 처음 입력한 값이 추가됨
SELECT concat_ws("->", "class", "mysql", "홍길동");

-- 문자열 안에 특정 단어가 몇 번째에 포함되는지 출력, 띄워쓰기 하면 안됨
SELECT find_in_set('q', 's,q,l');

-- 소수점 몇 자리까지 표기하는지 정할 수 있는 함수
SELECT format(2500.123, 3);

-- 소문자로 변경
SELECT lcase('HELLO JAVA');

-- 대문자로 변경
SELECT ucase('hello java');

-- 양 끝 공백 제거
SELECT trim('  MY S Q L  ');

-- 특정 대상들을 모두 바꿈
SELECT replace('  MY S Q L  ', ' ', '');

-- MySql Numberic function
SELECT * FROM buyTBL;

SELECT *, sum(price) as '상품가격의 총 합'
FROM buyTBL;

SELECT *, (select sum(price) from buyTBL) as '총합계'
from buyTBL;

-- avg
select *, avg(price) as '상품평균가격'
from buyTBL;

SELECT *, (SELECT avg(price) FROM buyTBL) as '평균값'
FROM buyTBL;

-- 올림 함수
SELECT ceil(25.12);

-- 반올림 함수
SELECT round(123.56, 1);

-- 내림
SELECT floor(25.75);

SELECT min(price)
from buytbl;

SELECT prodName, min(price)
from buytbl;

SELECT prodName, max(price)
from buyTBL;

-- SELECT @@GLOBAL.sql_mode;
-- SELECT @@SESSION.sql_mode;

-- SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION,STRICT_TRANS_TABLES';

-- ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION

select * from student;

desc student;