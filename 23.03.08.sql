

-- 회원 정보와 회원 등급 정보 1 : 1 관계로 설계
-- DROP TABLE IF EXISTS members;
CREATE TABLE member(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    address VARCHAR(100)
);

CREATE TABLE member_grade(
	member_id INT PRIMARY KEY,
    grade VARCHAR(10),
    point INT,
    FOREIGN KEY (member_id) references member(id)
);

desc member;
desc member_grade;

-- 직원 정보와 직위 정보를 저장하는 테이블 설계 1 : 1 관계
CREATE TABLE employee(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE employee_position(
	employee_id INT PRIMARY KEY,
	position VARCHAR(50) NOT NULL,
    dismissal_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);

desc employee;
desc employee_position;

-- product, product_detail

CREATE TABLE product(
	id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT
);

CREATE TABLE product_detail(
	product_id INT PRIMARY KEY,
    description TEXT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);
