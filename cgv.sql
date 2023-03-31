
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
	('admin', '1234', '현우', '1111-11-11', '01012341234', 'a@naver.com');

SELECT * FROM user;

SELECT * FROM user WHERE userId = 'admin' AND password = '1234';

UPDATE user
SET password = '', tel = '', email = ''
WHERE userId = '';


DELETE FROM user WHERE userId = 'asd123' AND password = '1234';

CREATE TABLE seat(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    isChecked BOOLEAN NOT NULL
);

CREATE TABLE movie(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
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

INSERT INTO seat(name, isChecked)
VALUES
	('B1', true),
    ('B2', true),
    ('B3', true),
    ('B4', true),
    ('B5', true),
    ('B6', true),
    ('B7', true),
    ('B8', true),
    ('B9', true),
    ('B10', true);

SELECT * FROM seat;
SELECT * FROM movie;
UPDATE seat
set isChecked = 1
WHERE id = 1;

INSERT INTO movie(name, price, movieRated)
VALUES
	('스즈메의 문단속', 15000, '12세 이상'),
    ('소울메이트', 15000, '12세 이상'),
    ('던전앤드래곤', 15000, '12세 이상'),
    ('웅남이', 15000, '15세 이상'),
    ('슬램덩크', 15000, '12세 이상');
    
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
    ('강원', '강릉'),
    ('강원', '강릉'),
    ('강원', '강릉'),
    ('강원', '강릉'),
    ('강원', '강릉'),