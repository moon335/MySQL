


CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
	userId VARCHAR(20) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL,
    username VARCHAR(50) NOT NULL,
    birthDate DATE NOT NULL,
    tel VARCHAR(15) NOT NULL,
    email VARCHAR(50)
);

INSERT INTO user(userId, password, username, birthDate, tel, email)
VALUES
	('admin', '1234', '김현우', '1111-11-11', '01012341234', 'a@naver.com');

SELECT * FROM user;

SELECT * FROM user WHERE id = 1;

UPDATE user
SET password = '', tel = '', email = ''
WHERE userId = '';

SELECT * FROM seat WHERE isChecked = 1 AND movieId = 1;


DELETE FROM user WHERE userId = 'asd123' AND password = '1234';

CREATE TABLE seat(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    isChecked BOOLEAN NOT NULL,
    subSection INT NOT NULL,
    movieId INT,
    FOREIGN KEY (movieId) REFERENCES movie(id)
);

CREATE TABLE movie(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    runningTime VARCHAR(30) NOT NULL,
    movieRated VARCHAR(50) NOT NULL
);

CREATE TABLE theater(
	id INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(30) NOT NULL,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE ticket(
	id INT PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    startTime VARCHAR(10) NOT NULL,
    userId INT,
    theaterId INT,
    movieId INT,
    seatId INT,
    FOREIGN KEY (userId) REFERENCES user(id),
    FOREIGN KEY (theaterId) REFERENCES theater(id),
    FOREIGN KEY (movieId) REFERENCES movie(id),
    FOREIGN KEY (seatId) REFERENCES seat(id)
);

INSERT INTO seat(name, isChecked, subSection)
VALUES
	('A1', true, 5),
    ('A2', true, 5),
    ('A3', true, 5),
    ('A4', true, 5),
    ('A5', true, 5),
    ('A6', true, 5),
    ('A7', true, 5),
    ('A8', true, 5),
    ('A9', true, 5),
    ('A10', true, 5);

INSERT INTO seat(name, isChecked, subSection)
VALUES
	('B1', true, 5),
    ('B2', true, 5),
    ('B3', true, 5),
    ('B4', true, 5),
    ('B5', true, 5),
    ('B6', true, 5),
    ('B7', true, 5),
    ('B8', true, 5),
    ('B9', true, 5),
    ('B10', true, 5);

SELECT * FROM user;
SELECT * FROM seat;
SELECT * FROM movie;
SELECT * FROM theater;
SELECT * FROM ticket;

DELETE FROM user WHERE userId = 'asd123' AND password = '12345' ;

UPDATE seat
set isChecked = 1
WHERE isChecked = 0;

drop table user;

desc movie;
SELECT * FROM movie WHERE name = '스즈메의 문단속';


INSERT INTO movie(name, price, runningTime, movieRated)
VALUES
	('스즈메의 문단속', 15000, '122분', '12세 이상'),
    ('소울메이트', 15000, '124분', '12세 이상'),
    ('던전앤드래곤', 15000, '134분', '12세 이상'),
    ('웅남이', 15000, '97분', '15세 이상'),
    ('슬램덩크', 15000, '124분', '12세 이상'),
    ('존윅4', 15000, '169분', '18세 이상'),
    ('리바운드', 15000, '122분', '12세 이상'),
    ('에어', 15000, '112분', '15세 이상'),
    ('흐르다', 15000, '123분', '12세 이상'),
    ('멍뭉이', 15000, '113분', '전체연령가'),
    ('치킨래빗', 15000, '92분', '전체연령가'),
    ('아바타-물의길', 15000, '192분', '12세 이상');
    
INSERT INTO theater(city, name)
VALUES
	('서울', '강남점'),
    ('서울', '강변점'),
    ('서울', '건대입구점'),
    ('서울', '구로점'),
    ('서울', '대학로점'),
    ('경기', '경기광주점'),
    ('경기', '고양행신점'),
    ('경기', '광교점'),
    ('경기', '광교상현점'),
    ('경기', '광영역점'),
    ('인천', '계양점'),
    ('인천', '부평점'),
    ('인천', '송도타임스페이스점'),
    ('인천', '연수역점'),
    ('인천', '인천점'),
    ('강원', '강릉점'),
    ('강원', '원주점'),
    ('강원', '춘천점'),
    ('강원', '기린점'),
    ('강원', '인제점'),
    ('강원', '원통점'),
    ('대전/충청', '논산점'),
    ('대전/충청', '당진점'),
    ('대전/충청', '대전점'),
    ('대전/충청', '대전가수원점'),
    ('대전/충청', '세종점'),
    ('대전/충청', '아산점'),
    ('대전/충청', '천안점'),
    ('대구', '대구점'),
    ('대구', '대구수성점'),
    ('대구', '대구스타디움점'),
    ('대구', '대구연경점'),
    ('대구', '대구월성점'),
    ('부산/울산', '서면점'),
    ('부산/울산', '대연점'),
    ('부산/울산', '부산명지점'),
    ('부산/울산', '서면삼정타워점'),
    ('부산/울산', '센텀시티점'),
    ('부산/울산', '울산동구점'),
    ('부산/울산', '울산삼산점'),
    ('부산/울산', '울산진장점'),
    ('경상', '거제점'),
    ('경상', '경산점'),
    ('경상', '구미점'),
    ('경상', '김천율곡점'),
    ('경상', '김해점'),
    ('경상', '김해장유점');

INSERT INTO theater(city, name)
VALUES
	('광주/전라/제주', '광양점'),
    ('광주/전라/제주', '광주상무점'),
    ('광주/전라/제주', '나누점'),
    ('광주/전라/제주', '목포점'),
    ('광주/전라/제주', '순천점'),
    ('광주/전라/제주', '여수웅천점'),
    ('광주/전라/제주', '제주점');
    
INSERT INTO theater(city, name)
VALUES
	('경상', '김해율하점');
    
INSERT INTO ticket(`date`, startTime, userId, theaterId, movieId, seatId)
VALUES
	('2023-04-03', '14:00', 5, 4, 5, 15);
    
SELECT * FROM ticket;
DELETE FROM ticket WHERE id = 44;

SELECT * FROM ticket WHERE id = 1;


SELECT t.id, t.date, t.startTime, u.username, th.city as city, th.name as theaterName, s.name as seatName, m.name as movieName, m.price as price, m.movieRated as movieRated, m.runningTime as runningTime
FROM ticket as t
INNER JOIN user as u
ON t.userId = u.id
INNER JOIN theater as th
ON t.theaterId = th.id
INNER JOIN movie as m
ON t.movieId = m.id
INNER JOIN seat as s
ON t.seatId = s.id
WHERE t.userId = 5;

SELECT t.id, t.date, t.startTime, u.username, th.city as city, th.name as theaterName, s.name as seatName, m.name as movieName, m.price as price, m.movieRated as movieRated, m.runningTime as runningTime
FROM ticket as t
INNER JOIN user as u
ON t.userId = u.id
INNER JOIN theater as th
ON t.theaterId = th.id
INNER JOIN movie as m
ON t.movieId = m.id
INNER JOIN seat as s
ON t.seatId = s.id
WHERE t.userId = 5 AND t.seatId = 1;


UPDATE theater
SET name = '나주점'
WHERE id = 50;