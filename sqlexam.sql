
CREATE TABLE student(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    grade INT NOT NULL,
    major VARCHAR(10)
);

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price INT NOT NULL
);

INSERT INTO product(product_name, price)
VALUES
	('TV', 150),
    ('노트북', 100),
    ('에어컨', 130);
    
CREATE TABLE buyTBL(
	id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(30) NOT NULL,
    addr VARCHAR(100) NOT NULL,
    tel VARCHAR(20) NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

INSERT INTO buyTBL(customer_name, addr, tel, product_id)
VALUES
	('김철수', '부산', '010-1234-2345', 1),
    ('김철수', '부산', '010-1234-2345', 3),
    ('황정민', '서울', '010-2465-7535', 2),
    ('홍길동', '인천', '010-8432-1984', 2),
    ('이순신', '대구', '010-9123-4681', 1);
    
SELECT customer_name, addr, tel, product_name, price
FROM buyTBL as b
INNER JOIN product as p
ON b.product_id = p.id;