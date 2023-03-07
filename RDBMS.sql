

CREATE TABLE school(
	school_id INT PRIMARY KEY,
    school_name VARCHAR(20) NOT NULL,
    city VARCHAR(20)
);

CREATE TABLE student(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    grade VARCHAR(3) NOT NULL,
    school_id INT,
    foreign key (school_id) references school(school_id)
);

INSERT INTO school(school_id, school_name, city)
VALUES
	(1, '서울대학교', '서울'),
    (2, '고려대학교', '서울'),
    (3, '연세대학교', '서울'),
    (4, '한양대학교', '서울');
    
SELECT * FROM school;

INSERT INTO student(student_id, student_name, grade, school_id)
VALUES
	(1, '홍길동', '1학년', 1),
    (2, '김유신', '2학년', 2),
    (3, '이순신', '1학년', 3),
    (4, '유관순', '3학년', 1),
    (5, '안중근', '2학년', 4);

-- 제약 키 FK를 사용하게 된다면 여러가지 제약 사항이 생기게 된다.
SELECT * FROM student;

desc student;

insert into student(student_id, student_name, grade, school_id)
value (6, '야수오', '1학년', 10);
/*
Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`mydb`.`student`, CONSTRAINT `student_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school` (`school_id`))
*/

-- 야구팀과 야구 선수 관계 1 : N

CREATE TABLE team(
	id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(50) NOT NULL
);

create table player(
	player_id INT PRIMARY KEY AUTO_INCREMENT,
    player_name VARCHAR(50) NOT NULL,
    team_id INT,
    foreign key (team_id) references team(id)
);

INSERT INTO team(id, team_name)
VALUES
	(1, 'LG 트윈스'),
    (2, 'NC 다이노스'),
    (3, '두산 베어스');
    
INSERT INTO player(player_name, team_id)
VALUES
	('허경민', 1),
    ('김하성', 2),
    ('최원준', 3);

CREATE TABLE department(
	department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(20) NOT NULL
);

CREATE TABLE employee(
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(10) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) references department(department_id)
);

INSERT INTO department(department_name)
VALUES
	('현장 관리부'),
    ('마케팅부'),
    ('관리팀');

INSERT INTO employee(employee_name, department_id)
VALUES
	('홍길동', 1),
    ('김영희', 2),
    ('이순신', 3),
    ('황정민', 3),
    ('이정재', 2);
    
SELECT * FROM employee;

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE `order`(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id) references product(id)
);

INSERT INTO product(name, price)
VALUES
	('노트북', 1000000),
    ('스마트폰', 700000),
    ('키보드', 50000);
    
INSERT INTO `order`(order_date, product_id)
VALUES
	('2022-02-15', 2),
    ('2022-02-16', 1),
    ('2022-02-17', 3);
    
SELECT * FROM `order`;