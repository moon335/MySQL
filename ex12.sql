INSERT INTO size_tb(name)
VALUES
	('220'),
    ('225'),
    ('230'),
    ('235'),
    ('240'),
    ('245'),
    ('250'),
    ('255'),
    ('260'),
    ('265'),
    ('270'),
    ('275');
    
INSERT INTO brand_tb(name)
VALUES
	('나이키'),
    ('아디다스'),
    ('발렌시아가'),
    ('디올'),
    ('Burberry'),
    ('휠라');
    
INSERT INTO category_tb(name)
VALUES
	('신발'),
    ('상의'),
    ('바지'),
    ('가방'),
    ('후드'),
    ('악세사리'),
    ('반팔'),
    ('후드집업'),
    ('니트'),
    ('코트');
    
INSERT INTO product_tb(name, purchase, gender, model_number, release_date, color, brand_id, category_id, size_id)
VALUES
	('조던 1 레트로 하이 OG 시카고 2022', 355000, '남여공용', 'DZ5485-612', '2022-12-01', 'VARSITY RED/BLACK/SAIL/MUSLIN', 1, 1, 4),
    ('(W) 조던 1 x 트래비스 스캇 레트로 로우 OG SP 미디움 올리브', 740000, '남여공용', 'DZ4137-106', '2023-04-26', 'SAIL/UNIVERSITY RED/BLACK/MEDIUM OLIVE', 1, 1, 4),
    ('나이키 덩크 로우 레트로 그레이 포그', 281000, '남여공용', 'DD1391-103', '2021-09-21', 'WHITE/GREY FOG', 1, 1, 4),
    ('나이키 에어포스 1 07 로우 화이트', 129000, '남여공용', '315122-111/CW2288-111', '2022-12-01', 'WHITE/WHITE', 1, 1, 4),
    ('나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 244000, '남여공용', 'DH2482-101', '2023-04-11', 'WHITE/BLACK', 1, 1, 4),
    ('조던 1 x 트래비스 스캇 레트로 로우 OG SP 블랙 팬텀', 445000, '남여공용', 'DM7866-001', '2023-03-28', 'BLACK/PHANTOM/ALE BROWN/RACER BLUE/TEAM ORANGE', 1, 1, 4),
    ('나이키 에어포스 1 07 WB 플랙스', 152000, '남여공용', 'CJ9179-200', '2022-12-01', 'FLAX/GUM/LIGHT BROWN/BLACK/WHEAT', 1, 1, 4),
    ('조던 1 레트로 하이 OG 시카고 2022', 355000, '남여공용', 'DZ5485-612', '2022-12-01', 'VARSITY RED/BLACK/SAIL/MUSLIN', 1, 1, 4);

INSERT INTO user_tb(first_name, last_name, username, password, tel, address, email, role)
VALUES
	('김','아무개','aaaa','1234','010-1234-1234','부산시 동구','a@naver.com', 'user'),
    ('이','아무개','bbbb','1234','010-1234-1234','부산시 서구','b@naver.com', 'user'),
    ('박','아무개','cccc','1234','010-1234-1234','부산시 남구','c@naver.com', 'user'),
    ('나','아무개','dddd','1234','010-1234-1234','부산시 중구','d@naver.com', 'manager'),
    ('유','아무개','ffff','1234','010-1234-1234','부산시 동구','f@naver.com', 'admin');
    
INSERT INTO review_tb(title, content, user_id, prod_id)
VALUES
	('좋아요','ㅎㅎ',1, 2),
    ('이뻐요','맘에 들어요',2, 2),
    ('안녕하세요','하이요',3, 2);

INSERT INTO cart_tb(amount, user_id, prod_id)
VALUES
	(1, 1, 3),
    (1, 2, 2),
    (1, 3, 3),
    (1, 1, 5),
    (1, 4, 1);
    
INSERT INTO order_tb(address, cart_id)
VALUES
	('부산시 동구',1),
    ('부산시 서구',2),
    ('부산시 남구',3),
    ('부산시 중구',4);
    
select p.*, b.name, s.name, c.name
from product_tb as p
inner join brand_tb as b
on p.brand_id = b.id
inner join size_tb as s
on p.size_id = s.id
inner join category_tb as c
on p.category_id = c.id
where p.id = 2;