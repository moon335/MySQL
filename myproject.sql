
CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
    userId VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(60) NOT NULL,
    userName VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    tel VARCHAR(30) NOT NULL
);

CREATE TABLE product(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE `order`(
	id INT PRIMARY KEY AUTO_INCREMENT,
    userId INT,
    prodId INT,
    orderDate DATETIME NOT NULL,
    amount INT NOT NULL,
    priceSum INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES user(id),
    FOREIGN KEY (prodId) REFERENCES product(id)
);
drop table `order`;
desc product;
SELECT * FROM user;

SELECT * FROM product WHERE name = '족발';

INSERT INTO product(name, price)
VALUES
	('족발', 30000),
    ('보쌈', 27000),
    ('피자', 29000),
    ('돈까스', 10900),
    ('닭갈비', 16000),
    ('찜닭', 27800),
    ('샐러드', 14500),
    ('스테이크', 22400),
    ('필라프', 9500),
    ('파스타', 11500),
    ('치킨', 19000),
    ('짜장면', 7000),
    ('탕수육', 17000),
    ('짬뽕', 7000),
    ('유산슬', 50000),
    ('깐풍새우', 40000),
    ('쌀국수', 7900),
    ('소고기볶음밥', 8900),
    ('치킨마요덮밥', 3700),
    ('참치마요덮밥', 3500),
    ('소고기죽', 8500),
    ('떡볶이', 13000),
    ('김밥', 4000),
    ('유부마리4종류', 5600),
    ('칼국수', 6000),
    ('육개장칼국수', 8000),
    ('햄버거세트', 11900),
    ('불고기버거', 7900),
    ('치즈버거', 7900),
    ('새우버거', 7900),
    ('치킨버거', 7900),
    ('에그드랍샌드위치', 9800),
    ('햄치즈토스트세트', 11400),
    ('클래식샌드위치', 5500),
    ('치킨텐더샌드위치', 6400),
    ('치킨텐더샐러드', 7500),
    ('구운버섯샐러드', 7500);
    
    
INSERT INTO `order`(userId, prodId, orderDate, amount, priceSum)
VALUES
	(4, 1, now(), 1, (1 * 30000));
    
select count(amount) - 1 as '총 수량', sum(price) as '합 금액'
from `order` as o
inner join product as p
on o.prodId = p.id
WHERE o.userId = 1;

delete from user;
select *
from `order`;
