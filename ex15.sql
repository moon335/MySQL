-- faq_tb

create table faq_tb(
	id int primary key auto_increment,
    title varchar(100) not null,
    content text not null,
    category varchar(50) not null
);

insert into faq_tb(title, content, category)
values('패널티 정책','판매자와 구매자의 건전한 거래를 위하여 아래 사유에 따라 페널티가 부과됩니다.결제정보 오류로 페널티 결제 실패 시, 이용약관 제24조("서비스수수료")에 따라 별도의 고지없이 재결제를 시도합니다.','이용정책'),
	  ('가품,손상/오염/사용감 있는 상품 판매에 대한 제재','가품 ・ 손상/오염/사용감 있는 상품 판매를 시도하여 적발된 경우 판매금액의 15.0% 페널티가 부과되며 판매자는 적발 즉시 이용정지 처리됩니다.','이용정책'),
      ('배송 사고 보상 프로세스','배송 과정 중 분실/도난 사고 발생 시, 아래 프로세스에 따라 보상이 진행될 수 있습니다.','이용정책'),
      ('포인트 보상 정책','TencoShop은 이용약관 제 36조에 따라 상품의 판매/구매 과정 중 당사의 귀책사유로 인한 회원의 피해 발생 시 다음과 같이 포인트 보상정책을 실시하고 있습니다.','이용정책'),
	  ('내 정보가 도용된 것 같아요','고객님의 휴대폰 명의로 이미 가입된 다른 아이디가 존재하는 경우 본인 명의 확인이 가능한 자료를 첨부하여 1:1 문의 바랍니다.','공통'),
      ('포인트 사용 방법이 궁금해요.','포인트는 1,000 포인트 이상부터 구매 금액 제한 없이 사용할 수 있습니다.','공통'),
      ('해외 배송이 가능한가요?','TencoShop은 현재 국내 사용자를 대상으로 운영중입니다.','공통'),
      ('이메일 아이디를 변경하고 싶어요.','로그인한 후, 마이 페이지 > 프로필 수정의 이메일 주소 변경을 통해 이메일 아이디를 변경할 수 있습니다.','공통'),
      ('상품 구매는 어떻게 하나요?','서비스 가입 후 로그인 한 회원은 누구나 상품을 구매할 수 있습니다.','구매'),
      ('계좌 이체 한도는 얼마인가요?','이용 은행에 따라 계좌 이체 한도가 다를 수 있습니다.','구매'),
      ('빠른배송은 무엇인가요?','미리 보관된 상품을 즉시 구매할 경우 당일 출고가 가능합니다.','구매'),
      ('상품을 직접 픽업하고 싶어요.','택배 발송을 통해서만 상품을 전달해 드리고 있습니다.','구매'),
      ('이용 제한 정책','TencoShop은 회원이 이용약관 또는 관련 법령을 위반하거나 서비스의 정상적인 운영을 방해한 경우, 이용약관 제 7 조 (이용제한 등)에 따라 일시 또는 영구적으로 서비스 이용을 제한할 수 있습니다.','이용정책'),
      ('부적절행위 금지','이용약관 제 7조(이용제한 등), 21조(부적절 행위)에 따라 일시정지나 영구이용정지 조치됩니다. 허위사실 유포 관련 고의성이 확인될 시, 유관부서로 이관되어 처리될 수 있습니다.','이용정책'),
      ('포인트 정책','TencoShop 서비스 이용 중 이벤트 참여 등으로 적립된 포인트는 아래 정책이 적용됩니다.','이용정책'),
      ('전기통신금융사기(피싱)로 결제가 되었어요.','전기통신금융사기(피싱)가 확인되는 경우 피해 구제를 위해 피싱에 이용된 결제 계좌의 금융 회사 영업점에 지급 정지 신청과 수사 기관을 통한 피해 사실 신고가 필요합니다.','공통'),
      ('고객센터 연락처를 알려주세요.','서비스를 이용하며 느끼신 불편한 점이나 바라는 점을 알려주세요. 소중한 의견으로 더욱 성장하는 TencoShop이 되겠습니다.','공통'),
      ('탈퇴 신청 방법 및 개인정보 삭제 여부가 궁금해요.','탈퇴 하시려면 마이페이지를 통해 진행이 가능하며 탈퇴 이후에는 동일한 이메일로 재가입 할 수 없습니다.','공통'),
      ('할부 결제에 대해 알고 싶어요.','현재 즉시 구매의 경우 할부 결제를 제공하고 있습니다.','구매'),
      ('현금 영수증은 어떻게 발급하나요?','계좌 이체로 구매한 상품에 대하여 현금 영수증을 발급할 수 있습니다.','구매');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- board_category_tb 
insert into board_category_tb(name)
values('공지'),('이벤트 발표'),('쇼룸'),('전시 안내');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- board_tb

create table board_tb(
	id int primary key auto_increment,
    admin_name varchar(50),
    title varchar(200) not null,
    content text not null,
    admin_id int,
    board_category_id int not null,
    foreign key (admin_id) references user_tb(id),
    foreign key (board_category_id) references board_category_tb(id)
);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- board_tb
insert into board_tb(title,content,board_category_id)
values('서비스 수수료 안내','서비스 수수료를 조정할 예정입니다.',1),  
	  ('신발 당첨 안내','전대영님이 나이키 신발에 당첨되었습니다.',2),
      ('김현우 전시회','김현우님의 코딩 전시회 예정 일정 23-05-13일',4),
      ('이치승 쇼룸','이치승 쇼룸',3),
      ('강민정 당첨','강민정님이 이벤트에 당첨되었습니다.',2),
      ('김미정님 1억원 이벤트 당첨','1억원 이벤트에 김미정님이 당첨되었습니다. 당첨금은 계좌이체를 통해 전달할 예정입니다.',2);

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- category_tb
insert into category_tb(name)
values('신발'),('아우터'),('상의'),('하의'),('가방'),('지갑'),('시계');

-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE brand_tb AUTO_INCREMENT = 1; 

-- brand_tb
insert into brand_tb(name)
values ('2000Archives'),('A Cold Wall'),
	   ('AMI'),('Art of Field'),('AOP'),
       ('AQ'),('Cavish'),('CERRIC'),	
       ('Darling Youre Bad'),
	   ('Emis'),('EAAH'),('ENOR'),
       ('Fetch'),('Fitbit'),
	   ('GCDS'),('Hunter'),('HAVELESS'),
	   ('INSTANTFUNK'),('Insane Garage'),
	   ('Jordan'),('JOEGUSH'),
	   ('Keen'), ('KANGHYUK'), ('KINDERSALMON'), ('LouisVuitton'), ('LEHA'), ('LastResortAB'),
	   ('MamanetFille'), ('MILLO'), ('Mizuno'), ('Nike'), ('NewBalance'), ('Nonnod'), ('OverThePitch'), 
       ('OpeningProject'), ('OJOS'), ('POLORalphLauren'), ('PunchDrunkParties'), ('PolarSkateCo'),
       ('Recto'), ('Rootfinder'), ('StoneIsland'), ('Stussy'), ('Supreme'), ('seo'), ('THRASHER'), 
       ('THEIDENTITYPROJECT'), ('THEILMA'), ('TypingMistake'), ('UGG'), ('UlikaSanctus'), ('Undermycar'), 
       ('VDR'), ('WINDERKAMMER'), ('WonChaser'), ('Waviness'), ('YIEYIE');

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE product_tb AUTO_INCREMENT = 1; 

-- product_tb
insert into product_tb(eng_name, kor_name, purchase, gender, model_number, release_date, color, release_price, img_route, brand_id, category_id, size_id, size_category_id)
values ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,1,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,2,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,3,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,4,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,5,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,6,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,7,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,8,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,9,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,10,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,11,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,12,1),
       ('2000Archives No.2 Denim Heeled Boots Black Denim','2000아카이브스 넘버2 데님 힐 부츠 블랙 데님',261000,'','99772','23-04-11','black',261000,'2000Archives2.jpg',1,1,13,1),
       
       ('A Cold Wall Printed Denim Jean Black','어콜드월 프린티드 데님 진 블랙',685000,'','85645','22-07-11','black',685000,'AColdWall1.jpg',2,4,15,2),
       ('A Cold Wall Printed Denim Jean Black','어콜드월 프린티드 데님 진 블랙',685000,'','85645','22-07-11','black',685000,'AColdWall1.jpg',2,4,16,2),
       ('A Cold Wall Printed Denim Jean Black','어콜드월 프린티드 데님 진 블랙',685000,'','85645','22-07-11','black',685000,'AColdWall1.jpg',2,4,17,2),
       ('A Cold Wall Tech Pant Dark Brown','어콜드월 테크 팬츠 다크 브라운',685000,'','83460','22-09-11','brown',685000,'AColdWall2.jpg',2,4,15,2),
       ('A Cold Wall Tech Pant Dark Brown','어콜드월 테크 팬츠 다크 브라운',685000,'','83460','22-09-11','brown',685000,'AColdWall2.jpg',2,4,16,2),
       ('A Cold Wall Tech Pant Dark Brown','어콜드월 테크 팬츠 다크 브라운',685000,'','83460','22-09-11','brown',685000,'AColdWall2.jpg',2,4,17,2),
       
       ('AMI de Coeur Oversize Intarsia Sweater Black Red','아미 빅 하트 로고 오버사이즈 인타르시아 스웨터 블랙 레드',388000,'','E22/BF/UKS002-018-009','21-09-11','black',388000,'AMI1.jpg',3,3,15,2),
       ('AMI de Coeur Oversize Intarsia Sweater Black Red','아미 빅 하트 로고 오버사이즈 인타르시아 스웨터 블랙 레드',388000,'','E22/BF/UKS002-018-009','21-09-11','black',388000,'AMI1.jpg',3,3,16,2),
       ('AMI de Coeur Oversize Intarsia Sweater Black Red','아미 빅 하트 로고 오버사이즈 인타르시아 스웨터 블랙 레드',388000,'','E22/BF/UKS002-018-009','21-09-11','black',388000,'AMI1.jpg',3,3,17,2),
       ('AMI de Coeur T-Shirts Natural White','아미 스몰 하트 로고 티셔츠 내츄럴 화이트',160000,'','UTS004-726-175','23-02-11','NATURAL WHITE/RED',160000,'AMI2.jpg',3,3,14,2),
       ('AMI de Coeur T-Shirts Natural White','아미 스몰 하트 로고 티셔츠 내츄럴 화이트',160000,'','UTS004-726-175','23-02-11','NATURAL WHITE/RED',160000,'AMI2.jpg',3,3,15,2),
       ('AMI de Coeur T-Shirts Natural White','아미 스몰 하트 로고 티셔츠 내츄럴 화이트',160000,'','UTS004-726-175','23-02-11','NATURAL WHITE/RED',160000,'AMI2.jpg',3,3,16,2),
       ('AMI de Coeur T-Shirts Natural White','아미 스몰 하트 로고 티셔츠 내츄럴 화이트',160000,'','UTS004-726-175','23-02-11','NATURAL WHITE/RED',160000,'AMI2.jpg',3,3,17,2),
       
       ('Art Of Field Packable Hooded Half Jacket Ivory','아트오브필드 패커블 후드 하프 자켓 아이보리',179000,'','108634','23-05-01','IVORY',179000,'ArtofField1.jpg',4,2,17,2),
       ('Art Of Field Section Short Sleeved T-Shirt Light Gray','아트오브필드 섹션 숏슬리브 티셔츠 라이트 그레이',49000,'','108639','23-02-01','Gray',49000,'ArtofField2.jpg',4,3,16,2),
       ('Art Of Field Section Short Sleeved T-Shirt Light Gray','아트오브필드 섹션 숏슬리브 티셔츠 라이트 그레이',49000,'','108639','23-02-01','Gray',49000,'ArtofField2.jpg',4,3,17,2),
       
       ('AOP Bar Tack Curve Pants Denim','에이옵 바 택 커브 팬츠 데님',209000,'',' 109844','21-06-01','Black',209000,'AOP1.jpg',5,4,16,2),
       ('AOP Bar Tack Curve Pants Denim','에이옵 바 택 커브 팬츠 데님',209000,'',' 109844','21-06-01','Black',209000,'AOP1.jpg',5,4,17,2),
       ('AOP Large Fit Curve Pants Stone Sand','에이옵 라지핏 커브팬츠 샌드',174000,'',' 103496','23-01-01','White',174000,'AOP2.jpg',5,4,16,2),
       ('AOP Large Fit Curve Pants Stone Sand','에이옵 라지핏 커브팬츠 샌드',174000,'',' 103496','23-01-01','White',174000,'AOP2.jpg',5,4,17,2),
       
       ('AQ Faux Fur Jacket Sky Leopard','에이큐 포우 퍼 자켓 스카이 레오파드',489000,'',' 116231','23-03-01','Blue',489000,'AQ1.jpg',6,2,15,2),
       ('AQ Faux Fur Jacket Sky Leopard','에이큐 포우 퍼 자켓 스카이 레오파드',489000,'',' 116231','23-03-01','Blue',489000,'AQ1.jpg',6,2,16,2),
       ('AQ Faux Fur Jacket Sky Leopard','에이큐 포우 퍼 자켓 스카이 레오파드',489000,'',' 116231','23-03-01','Blue',489000,'AQ1.jpg',6,2,17,2),
       ('AQ Blood Logo Velour Pant Burgundy','에이큐 블러드 로고 벨루어 팬츠 버건디',128000,'',' 116233','23-03-05','Burgundy',128000,'AQ2.jpg',6,4,20,2),
       
       ('Cavish Record Shop Short Sleeve T-Shirt White 23SS','카비시 레코드 샵 숏 슬리브 티셔츠 화이트 23SS',49000,'',' 114004','23-04-29','White',49000,'Cavish1.jpg',7,3,14,2),
       ('Cavish Record Shop Short Sleeve T-Shirt White 23SS','카비시 레코드 샵 숏 슬리브 티셔츠 화이트 23SS',49000,'',' 114004','23-04-29','White',49000,'Cavish1.jpg',7,3,15,2),
       ('Cavish Record Shop Short Sleeve T-Shirt White 23SS','카비시 레코드 샵 숏 슬리브 티셔츠 화이트 23SS',49000,'',' 114004','23-04-29','White',49000,'Cavish1.jpg',7,3,16,2),
       ('Cavish Record Shop Short Sleeve T-Shirt White 23SS','카비시 레코드 샵 숏 슬리브 티셔츠 화이트 23SS',49000,'',' 114004','23-04-29','White',49000,'Cavish1.jpg',7,3,17,2),
       ('Cavish Record Shop Short Sleeve T-Shirt White 23SS','카비시 레코드 샵 숏 슬리브 티셔츠 화이트 23SS',49000,'',' 114004','23-04-29','White',49000,'Cavish1.jpg',7,3,19,2),
       ('Cavish Sideline Football LS T-Shirt White - 23SS','카비시 사이드라인 풋볼 롱슬리브 티셔츠 화이트 - 23SS',59000,'',' 101385','23-05-01','White',59000,'Cavish2.jpg',7,3,15,2),
       ('Cavish Sideline Football LS T-Shirt White - 23SS','카비시 사이드라인 풋볼 롱슬리브 티셔츠 화이트 - 23SS',59000,'',' 101385','23-05-01','White',59000,'Cavish2.jpg',7,3,16,2),
       
       ('Cerric Women Contrast Stitch Jumper Khaki','세릭 우먼 콘트라스트 스티치 점퍼 카키',298000,'',' 106598','23-03-01','Khaki',298000,'CERRIC1.jpg',8,2,19,2),
       ('Cerric Women Halter Zipper Sleeveless Beige','세릭 우먼 홀터 지퍼 슬리브리스 베이지',149000,'',' 111100','23-05-01','Beige',149000,'CERRIC2.jpg',8,3,19,2),
       
       ('Darling Youre Bad Women Mesh Wrap Skirt Satin Shorts Black Set','달링유어배드 우먼 메쉬 랩 스커트 사틴 쇼츠 블랙 세트',67000,'',' 100820','23-02-09','Black ',67000,'Darling1.jpg',9,4,19,3),
       ('Darling Youre Bad Women Long Satin Ribbon Dress Black Rose','달링유어배드 우먼 롱 사틴 리본 드레스 블랙 로즈',98000,'',' 100829','23-02-10','Black ',98000,'Darling2.jpg',9,3,19,3),
       
       ('Emis Women Enamel Hobo Bag Black','이미스 우먼 애나멜 호보백 블랙',54000,'',' 113827','23-03-10','Black ',54000,'emis1.jpg',10,5,19,3),
       ('Emis Women Corduroy Wappen Bag Pink','이미스 우먼 코듀로이 와펜백 핑크',65000,'',' 90921','23-01-10','Pink ',65000,'emis2.jpg',10,5,19,3),
       
       ('Eaah Women Es Poplin Shirt Light Pink','이아 우먼 이에스 포플린 셔츠 라이트 핑크',138000,'',' 105351','23-02-05','Pink ',138000,'EAAH1.jpg',11,3,15,2),
       ('Eaah Women Es Poplin Shirt Light Pink','이아 우먼 이에스 포플린 셔츠 라이트 핑크',138000,'',' 105351','23-02-05','Pink ',138000,'EAAH1.jpg',11,3,16,2),
       ('Eaah Women Faux Leather Joie Skirt Black','이아 우먼 포 레더 조이 스커트 블랙',148000,'',' 105356','23-04-05','Black ',148000,'EAAH2.jpg',11,4,15,2),
       ('Eaah Women Faux Leather Joie Skirt Black','이아 우먼 포 레더 조이 스커트 블랙',148000,'',' 105356','23-04-05','Black ',148000,'EAAH2.jpg',11,4,16,2),
       
       ('En Or Women Tweed Trimming Single Jacket White','엔오르 우먼 트위드 트리밍 싱글 자켓 화이트',298000,'',' 107946','23-01-05','White ',298000,'ENOR1.jpg',12,2,15,2),
       ('En Or Women Tweed Trimming Single Jacket White','엔오르 우먼 트위드 트리밍 싱글 자켓 화이트',298000,'',' 107946','23-01-05','White ',298000,'ENOR1.jpg',12,2,16,2),
       ('En Or Women Combi Sleeveless Knit Top Khaki','엔오르 우먼 콤비 슬리브리스 니트 탑 카키',138000,'',' 107915','23-02-05','Khaki ',138000,'ENOR2.jpg',12,3,15,2),
       ('En Or Women Combi Sleeveless Knit Top Khaki','엔오르 우먼 콤비 슬리브리스 니트 탑 카키',138000,'',' 107915','23-02-05','Khaki ',138000,'ENOR2.jpg',12,3,16,2),
       
       ('Fetch Nylon Water Shorts Yellow','페치 나일론 워터 쇼츠 옐로우',79000,'',' 117529','23-04-05','Yellow ',79000,'Fetch1.jpg',13,4,15,2),
       ('Fetch Nylon Water Shorts Yellow','페치 나일론 워터 쇼츠 옐로우',79000,'',' 117529','23-04-05','Yellow ',79000,'Fetch1.jpg',13,4,16,2),
       ('Fetch Nylon Water Shorts Yellow','페치 나일론 워터 쇼츠 옐로우',79000,'',' 117529','23-04-05','Yellow ',79000,'Fetch1.jpg',13,4,17,2),
       ('Fetch Nylon Water Shorts Yellow','페치 나일론 워터 쇼츠 옐로우',79000,'',' 117529','23-04-05','Yellow ',79000,'Fetch1.jpg',13,4,18,2),
       ('Fetch Short Sleeve Sponsor Racing Jersey Black','페치 숏 슬리브 스폰서 레이싱 저지 블랙',99000,'',' 117515','23-04-30','Black ',99000,'Fetch2.jpg',13,3,15,2),
       ('Fetch Short Sleeve Sponsor Racing Jersey Black','페치 숏 슬리브 스폰서 레이싱 저지 블랙',99000,'',' 117515','23-04-30','Black ',99000,'Fetch2.jpg',13,3,16,2),
       ('Fetch Short Sleeve Sponsor Racing Jersey Black','페치 숏 슬리브 스폰서 레이싱 저지 블랙',99000,'',' 117515','23-04-30','Black ',99000,'Fetch2.jpg',13,3,17,2),
       ('Fetch Short Sleeve Sponsor Racing Jersey Black','페치 숏 슬리브 스폰서 레이싱 저지 블랙',99000,'',' 117515','23-04-30','Black ',99000,'Fetch2.jpg',13,3,18,2),
       
       ('Fitbit Versa4 Smartwatch Black','핏빗 버사4 스마트워치 블랙',319000,'',' 104926','22-09-20','Black ',319000,'Fitbit1.jpg',14,7,19,3),
       ('Fitbit Versa4 Smartwatch Waterfall Blue','핏빗 버사4 스마트워치 워터폴블루',319000,'',' 104925','22-09-20','Waterfall Blue ',319000,'Fitbit2.jpg',14,7,19,3),
       ('Fitbit Inspire 3 Fitness Tracker Lilac Bliss','핏빗 인스파이어3 피트니스 트래커 라일락블리스',139000,'',' 104931','22-05-20','Lilac Bliss',139000,'Fitbit3.jpg',14,7,19,3),
       ('Fitbit Ace3 Activity Tracker for kids Minions Yellow','핏빗 에이스3 어린이용 활동 트래커 미니언즈옐로우',99000,'',' 104937','22-03-20','Minions Yellow',99000,'Fitbit4.jpg',14,7,19,3),
       
       ('GCDS Band Logo Puffer Jacket Black','GCDS 밴드 로고 퍼퍼 자켓 블랙',1460000,'',' 89790','22-12-20','Black',1460000,'GCDS1.jpg',15,2,16,2),
       ('GCDS Band Logo Puffer Jacket Black','GCDS 밴드 로고 퍼퍼 자켓 블랙',1460000,'',' 89790','22-12-20','Black',1460000,'GCDS1.jpg',15,2,17,2),
       ('GCDS Plush Sweater Green','GCDS 플러시 스웨터 그린',655000,'',' 89471','22-11-06','Green',655000,'GCDS2.jpg',15,3,16,2),
       
       ('Hunter Women Original Play Short Rainboots Black','헌터 우먼 오리지날 플레이 숏 레인부츠 블랙',149000,'Women',' 99080','22-07-21','Black',149000,'Hunter1.jpg',16,1,2,1),
       ('Hunter Women Original Play Short Rainboots Black','헌터 우먼 오리지날 플레이 숏 레인부츠 블랙',149000,'Women',' 99080','22-07-21','Black',149000,'Hunter1.jpg',16,1,4,1),
       ('Hunter Women Original Play Short Rainboots Black','헌터 우먼 오리지날 플레이 숏 레인부츠 블랙',149000,'Women',' 99080','22-07-21','Black',149000,'Hunter1.jpg',16,1,6,1),
       ('Hunter Women Original Play Short Rainboots Black','헌터 우먼 오리지날 플레이 숏 레인부츠 블랙',149000,'Women',' 99080','22-07-21','Black',149000,'Hunter1.jpg',16,1,8,1),
       ('Hunter Women Original Short Rainboots Black','헌터 우먼 오리지날 숏 레인부츠 블랙',195000,'Women',' 99079','22-05-21','Black',195000,'Hunter2.jpg',16,1,2,1),
       ('Hunter Women Original Short Rainboots Black','헌터 우먼 오리지날 숏 레인부츠 블랙',195000,'Women',' 99079','22-05-21','Black',195000,'Hunter2.jpg',16,1,4,1),
       ('Hunter Women Original Short Rainboots Black','헌터 우먼 오리지날 숏 레인부츠 블랙',195000,'Women',' 99079','22-05-21','Black',195000,'Hunter2.jpg',16,1,6,1),
       ('Hunter Women Original Short Rainboots Black','헌터 우먼 오리지날 숏 레인부츠 블랙',195000,'Women',' 99079','22-05-21','Black',195000,'Hunter2.jpg',16,1,8,1),
       ('Hunter Women Original Short Rainboots Black','헌터 우먼 오리지날 숏 레인부츠 블랙',195000,'Women',' 99079','22-05-21','Black',195000,'Hunter2.jpg',16,1,10,1),
       ('Hunter Women Original Short Gloss Rainboots Yellow','헌터 우먼 오리지날 숏 글로스 레인부츠 옐로우',195000,'Women',' 99078','22-05-30','Yellow',195000,'Hunter3.jpg',16,1,2,1),
       ('Hunter Women Original Short Gloss Rainboots Yellow','헌터 우먼 오리지날 숏 글로스 레인부츠 옐로우',195000,'Women',' 99078','22-05-30','Yellow',195000,'Hunter3.jpg',16,1,4,1),
       ('Hunter Women Original Short Gloss Rainboots Yellow','헌터 우먼 오리지날 숏 글로스 레인부츠 옐로우',195000,'Women',' 99078','22-05-30','Yellow',195000,'Hunter3.jpg',16,1,6,1),
       ('Hunter Women Original Short Gloss Rainboots Yellow','헌터 우먼 오리지날 숏 글로스 레인부츠 옐로우',195000,'Women',' 99078','22-05-30','Yellow',195000,'Hunter3.jpg',16,1,8,1),
       ('Hunter Women Original Short Gloss Rainboots Yellow','헌터 우먼 오리지날 숏 글로스 레인부츠 옐로우',195000,'Women',' 99078','22-05-30','Yellow',195000,'Hunter3.jpg',16,1,10,1),
       ('Hunter Women Original Short Rainboots Suncap Orange','헌터 우먼 오리지날 숏 레인부츠 썬캡 오렌지',195000,'Women',' 99077','22-05-30','Orange',195000,'Hunter4.jpg',16,1,2,1),
       ('Hunter Women Original Short Rainboots Suncap Orange','헌터 우먼 오리지날 숏 레인부츠 썬캡 오렌지',195000,'Women',' 99077','22-05-30','Orange',195000,'Hunter4.jpg',16,1,4,1),
       ('Hunter Women Original Short Rainboots Suncap Orange','헌터 우먼 오리지날 숏 레인부츠 썬캡 오렌지',195000,'Women',' 99077','22-05-30','Orange',195000,'Hunter4.jpg',16,1,6,1),
       ('Hunter Women Original Short Rainboots Suncap Orange','헌터 우먼 오리지날 숏 레인부츠 썬캡 오렌지',195000,'Women',' 99077','22-05-30','Orange',195000,'Hunter4.jpg',16,1,8,1),
       ('Hunter Women Original Short Rainboots Suncap Orange','헌터 우먼 오리지날 숏 레인부츠 썬캡 오렌지',195000,'Women',' 99077','22-05-30','Orange',195000,'Hunter4.jpg',16,1,10,1),
       ('Hunter Original Short Side Adjustable Rainboots Dark Olive','헌터 오리지날 숏 사이드 어드저스터블 레인부츠 다크올리브',195000,'',' 99068','22-05-30','Dark Olive',195000,'Hunter5.jpg',16,1,10,1),
       ('Hunter Original Short Side Adjustable Rainboots Dark Olive','헌터 오리지날 숏 사이드 어드저스터블 레인부츠 다크올리브',195000,'',' 99068','22-05-30','Dark Olive',195000,'Hunter5.jpg',16,1,11,1),
       ('Hunter Original Short Side Adjustable Rainboots Dark Olive','헌터 오리지날 숏 사이드 어드저스터블 레인부츠 다크올리브',195000,'',' 99068','22-05-30','Dark Olive',195000,'Hunter5.jpg',16,1,12,1),
       ('Hunter Original Short Side Adjustable Rainboots Dark Olive','헌터 오리지날 숏 사이드 어드저스터블 레인부츠 다크올리브',195000,'',' 99068','22-05-30','Dark Olive',195000,'Hunter5.jpg',16,1,13,1),
       
       ('Haveless Women Lambs Wool Blend Ribbed Knit Cardigan Black','해브레스 우먼 메리노 울 블렌드 리브드 니트 가디건 블랙',138000,'',' 118485','21-09-30','Black',138000,'HAVELESS1.jpg',17,3,19,2),
       ('Haveless Women Sheer Short Sleeve Shirt Sky Blue','해브레스 우먼 쉬어 숏 슬리브 셔츠 스카이 블루',128000,'',' 118479','23-02-20','Sky Blue',128000,'HAVELESS2.jpg',17,3,19,2),
       
       ('Instantfunk Women V-Neck Slim Line Sweatshirt Melange White','인스턴트펑크 우먼 브이넥 슬림 라인 스웨트셔츠 멜란지 화이트',120000,'Women',' 100629','23-3-21','Melange White',120000,'INSTANTFUNK1.jpg',18,3,19,2),
       ('Instantfunk Women Denim Printed Hobo Bag Blue','인스턴트펑크 우먼 데님 프린트 호보백 블루',132000,'Women',' 100637','23-4-21',' Blue',132000,'INSTANTFUNK2.jpg',18,5,19,3),
       ('Instantfunk Women Low-Rise Denim Mini Skirt Blue','인스턴트펑크 우먼 로우라이즈 데님 미니 스커트 블루',92000,'Women',' 100618','23-3-21',' Blue',92000,'INSTANTFUNK3.jpg',18,4,16,2),
       ('Instantfunk Women Low-Rise Denim Mini Skirt Blue','인스턴트펑크 우먼 로우라이즈 데님 미니 스커트 블루',92000,'Women',' 100618','23-3-21',' Blue',92000,'INSTANTFUNK3.jpg',18,4,17,2),
       
       ('Insane Garage Garment Dye Graphic Hoodie Navy','인세인개러지 가먼트 다이 그래픽 후드 네이비',129000,'',' 105149','23-4-21',' Navy',129000,'Insane1.jpg',19,3,14,2),
       ('Insane Garage Garment Dye Graphic Hoodie Navy','인세인개러지 가먼트 다이 그래픽 후드 네이비',129000,'',' 105149','23-4-21',' Navy',129000,'Insane1.jpg',19,3,15,2),
       ('Insane Garage Garment Dye Graphic T-Shirt Navy','인세인개러지 가먼트 다이 그래픽 티셔츠 네이비',62000,'',' 105144','23-2-01',' Navy',62000,'Insane2.jpg',19,3,16,2),
       ('Insane Garage Garment Dye Graphic T-Shirt Navy','인세인개러지 가먼트 다이 그래픽 티셔츠 네이비',62000,'',' 105144','23-2-01',' Navy',62000,'Insane2.jpg',19,3,17,2),
       
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,4,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,5,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,6,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,7,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,1,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,2,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,3,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,4,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,5,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,6,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,7,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,8,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,9,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,10,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,11,1),
       ('Jordan 1 Retro High OG Chicago 2022','조던 1 레트로 하이 OG 시카고 2022',374000,'',' DZ5485-612','22-12-01',' VARSITY RED/BLACK/SAIL/MUSLIN',62000,'Jordan1.jpg',20,1,12,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,2,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,3,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,4,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,5,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,6,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,7,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,8,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,9,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,10,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,11,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,12,1),
       ('Jordan 1 Mid Light Smoke Grey','조던 1 미드 라이트 스모크 그레이',210000,'',' 554724-092','20-01-11',' LIGHT SMOKE GREY/BLACK-WHITE',210000,'Jordan2.jpg',20,1,13,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,1,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,2,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,3,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,4,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,5,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,6,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,7,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,8,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,9,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,10,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,11,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,12,1),
       ('Jordan 1 Retro High OG Black Mocha','조던 1 레트로 하이 OG 블랙 모카',418000,'',' 555088-105','20-11-13',' SAIL/DARK MOCHA-BLACK-BLACK',418000,'Jordan3.jpg',20,1,13,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,1,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,2,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,3,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,4,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,5,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,6,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,7,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,8,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,9,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,10,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,11,1),
       ('Jordan 1 Retro High OG Black and Lucky Green','조던 1 레트로 하이 OG 블랙 앤 럭키 그린',235000,'',' DZ5485-031','23-04-15','BLACK/LUCKY GREEN/WHITE',235000,'Jordan4.jpg',20,1,12,1),
       
       ('Joegush Dual Rave Windbreak Blue','조거쉬 듀얼 레이브 윈드브레이커 블루',319000,'','106708','23-05-01','Blue',319000,'JOEGUSH1.jpg',21,3,14,2),
       ('Joegush Dual Rave Windbreak Blue','조거쉬 듀얼 레이브 윈드브레이커 블루',319000,'','106708','23-05-01','Blue',319000,'JOEGUSH1.jpg',21,3,15,2),
       ('Joegush Dual Rave Windbreak Orange','조거쉬 듀얼 레이브 윈드브레이커 오렌지',319000,'','106707','23-05-01','Orange',319000,'JOEGUSH2.jpg',21,3,14,2),
       ('Joegush Dual Rave Windbreak Orange','조거쉬 듀얼 레이브 윈드브레이커 오렌지',319000,'','106707','23-05-01','Orange',319000,'JOEGUSH2.jpg',21,3,15,2);


insert into product_tb(eng_name, kor_name, purchase, gender, model_number, release_date, color, release_price, img_route, brand_id, category_id, size_id,size_category_id)
values('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 1,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 2,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 3,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 4,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 5,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 6,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 7,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 8,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 9,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 10,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 11,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 12,1),
('Keen x Ultra Heavy Yogui Silde Multi', '요기 슬라이드 멀티', 113000, '', '118300', '23-04-12', 'white', 113000, 'Keen1.jpg', 22, 1, 13,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 1,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 2,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 3,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 4,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 5,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 6,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 7,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 8,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 9,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 10,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 11,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 12,1),
('Keen x Skoloct Shanti Silde Light khaki', '킨 x Skoloct 샨티 슬라이트 라이트 카키', 113000, '', '118299', '23-04-12', '라이트 카키', 113000, 'Keen2.jpg', 22, 1, 13,1),

('Kanghyuk Gore-Tex Infinium Padded Jacket Black', '강혁 고어텍스 인피니움 패디드 자켓 블랙', 490000, '', '78289', '23-04-12', '블랙', 490000, 'kanghyuk1.jpg', 23, 2, 16,2),
('Kanghyuk Gore-Tex Infinium Padded Jacket Black', '강혁 고어텍스 인피니움 패디드 자켓 블랙', 490000, '', '78289', '23-04-12', '블랙', 490000, 'kanghyuk1.jpg', 23, 2, 17,2),
('Kanghyuk Gore-Tex Infinium Padded Jacket Black', '강혁 고어텍스 인피니움 패디드 자켓 블랙', 490000, '', '78289', '23-04-12', '블랙', 490000, 'kanghyuk1.jpg', 23, 2, 18,2),
('Kanghyuk Gore-Tex Infinium Cwtch Puffer Jacket Dark Red', '강혁 고어텍스 인피니움 쿼치 퍼퍼 자켓 다크 레드', 690000, '', '78287', '23-04-12', '레드', 690000, 'kanghyuk2.jpg', 23, 2, 16,2),
('Kanghyuk Gore-Tex Infinium Cwtch Puffer Jacket Dark Red', '강혁 고어텍스 인피니움 쿼치 퍼퍼 자켓 다크 레드', 690000, '', '78287', '23-04-12', '레드', 690000, 'kanghyuk2.jpg', 23, 2, 17,2),
('Kanghyuk Gore-Tex Infinium Cwtch Puffer Jacket Dark Red', '강혁 고어텍스 인피니움 쿼치 퍼퍼 자켓 다크 레드', 690000, '', '78287', '23-04-12', '레드', 690000, 'kanghyuk2.jpg', 23, 2, 18,2),

('Kindersalmon Large Canvas Tote Bag', '킨더살몬 라지 캔버스 토트백', 78000, '', '113010', '23-04-12', '화이트', 78000, 'kindersalmon1.png', 24, 5, 19,3),
('Kindersalmon Small Canvas Tote Bag', '킨더살몬 스몰 캔버스 토트백', 58000, '', '113010', '23-04-12', '화이트', 58000, 'kindersalmon2.png', 24, 5, 19,3),

('Louis Vuitton Double Card Holder Monogram Eclipse', '루이비통 더블 카드 홀더 모노그램 이클립스', 425000, '', 'M62170', '23-04-12', '블랙', 425000, 'louisvuitton1.jpg', 25, 6, 19,3),
('Louis Vuitton Slender Wallet Monogram Eclipse', '루이비통 슬렌더 월렛 모노그램 이클립스', 693000, '', 'M62170', '23-04-12', '블랙', 693000, 'louisvuitton2.jpg', 25, 6, 19,3),

('Leha Women Astia Trench Coat Cream', '레하 우먼 아스티아 트렌치코트 크림', 598000, '', '107102', '23-04-12', '크림', 598000, 'Leha1.jpg', 26, 3, 14,2),
('Leha Women Astia Trench Coat Cream', '레하 우먼 아스티아 트렌치코트 크림', 598000, '', '107102', '23-04-12', '크림', 598000, 'Leha1.jpg', 26, 3, 15,2),

('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 4,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 5,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 6,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 7,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 8,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 9,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 10,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 11,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 12,1),
('Last Resort Ab vm001 Suede Lo Dusty Green', '라스트리조트 에이비 vm001 스웨이드 로우 더스티 그린 화이트', 125100, '', '111046', '23-04-12', '그린 화이트', 125100, 'LastResortAB1.jpg', 27, 1, 13,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 8,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 9,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 10,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 11,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 12,1),
('Last Resort Ab vm003 Canvas Lo Cracked Black-White Black', '라스트리조트 에이비 vm003 컨버스 로우 크랙 블랙 화이트 블랙', 125100, '', '111044', '23-04-12', '화이트블랙', 125100, 'LastResortAB2.jpg', 27, 1, 13,1),

('Millo Bread Bag Black', '밀로 브레드 백 블랙', 125100, '', '120544', '23-04-12', '화이트블랙', 125100, 'Millo1.jpg', 29, 5, 19,3),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 1,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 2,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 3,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 4,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 5,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 6,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 7,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 8,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 9,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 10,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 11,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 12,1),
('Mizuno Wave Rider 10 Summer Sand Pale Lime Yellow Dusty Lavender', '미즈노 웨이브 라이더 10 썸머 샌드 페일 라임 옐로우 더스티 라벤더', 149000, '', '119545', '23-04-12', '라임 옐로우 더스티 라벤더', 149000, 'Mizuno1.jpg', 30, 1, 13,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 1,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 1,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 2,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 3,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 4,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 5,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 6,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 7,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 8,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 9,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 10,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 11,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 12,1),
('Mizuno Wave Mujin TL Summer Sand Dark Shadow Yellow Plum', '미즈노 웨이브 무진 TL 썸머 샌드 다크 쉐도우 옐로우 플럼', 179000, '', '119543', '23-04-12', '다크 쉐도우 옐로우 플럼', 179000, 'Mizuno2.jpg', 30, 1, 13,1),

('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 1,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 2,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 3,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 4,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 5,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 6,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 7,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 8,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 9,1),
('Nike Air Force 1 07 Low White', '나이키 에어포스 1 07 로우 화이트', 117000, '', '315122-111/CW2288-111', '23-04-12', 'WHITE/WHITE', 117000, 'Nike1.jpg', 31, 1, 10,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 1,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 2,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 3,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 4,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 5,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 6,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 7,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 8,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 9,1),
('Nike x Peaceminusone Kwondo1 Black and White', '나이키 x 피스마이너스원 퀀도1 블랙 앤 화이트', 242000, '', 'DH2482-101', '23-04-11', 'WHITE/BLACK', 242000, 'Nike2.jpg', 31, 1, 10,1),

('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 1,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 2,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 3,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 4,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 5,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 6,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 7,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 8,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 9,1),
('New Balance 530 Steel Grey', '뉴발란스 530 스틸 그레이', 164000, '', 'MR530KA', '21-01-08', 'STEEL GREY', 109000, 'NewBalance1.jpg', 32, 1, 10,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 1,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 2,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 3,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 4,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 5,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 6,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 7,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 8,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 9,1),
('New Balance 2002R Grey', '뉴발란스 2002R 그레이', 148000, '', 'ML2002RC', '20-09-25', 'GREY', 148000, 'NewBalance2.jpg', 32, 1, 10,1),

('Nonnod Mechanic Pants Black', '논노드 메카닉 팬츠 블랙', 279000, '', '107991', '23-04-12', 'BLACK', 279000, 'Nonnod1.jpg', 33, 4, 15,2),
('Nonnod Mechanic Pants Black', '논노드 메카닉 팬츠 블랙', 279000, '', '107991', '23-04-12', 'BLACK', 279000, 'Nonnod1.jpg', 33, 4, 16,2),
('Nonnod Mechanic Pants Black', '논노드 메카닉 팬츠 블랙', 279000, '', '107991', '23-04-12', 'BLACK', 279000, 'Nonnod1.jpg', 33, 4, 17,2),
('Nonnod Mechanic Pants Black', '논노드 메카닉 팬츠 블랙', 279000, '', '107991', '23-04-12', 'BLACK', 279000, 'Nonnod1.jpg', 33, 4, 18,2),
('Nonnod SS Cropped Rider Jacket Matt Black', '논노드 SS 크롭 라이더 자켓 매트 블랙', 289000, '', '107990', '23-04-12', 'BLACK', 289000, 'Nonnod2.jpg', 33, 2, 15,2),
('Nonnod SS Cropped Rider Jacket Matt Black', '논노드 SS 크롭 라이더 자켓 매트 블랙', 289000, '', '107990', '23-04-12', 'BLACK', 289000, 'Nonnod2.jpg', 33, 2, 16,2),
('Nonnod SS Cropped Rider Jacket Matt Black', '논노드 SS 크롭 라이더 자켓 매트 블랙', 289000, '', '107990', '23-04-12', 'BLACK', 289000, 'Nonnod2.jpg', 33, 2, 17,2),
('Nonnod SS Cropped Rider Jacket Matt Black', '논노드 SS 크롭 라이더 자켓 매트 블랙', 289000, '', '107990', '23-04-12', 'BLACK', 289000, 'Nonnod2.jpg', 33, 2, 18,2),

('Over The Pitch x KBO The 40th Anniversary Emblem Jersey White (with Marking)', '오버더피치 x KBO 40주년 엠블럼 저지 화이트 (마킹 포함)', 119000, '', '89488', '23-04-12', '화이트', 119000, 'OverThePitch1.jpg', 34, 3, 15,2),
('Over The Pitch x KBO The 40th Anniversary Emblem Jersey White (with Marking)', '오버더피치 x KBO 40주년 엠블럼 저지 화이트 (마킹 포함)', 119000, '', '89488', '23-04-12', '화이트', 119000, 'OverThePitch1.jpg', 34, 3, 16,2),
('Over The Pitch x KBO The 40th Anniversary Emblem Jersey White (with Marking)', '오버더피치 x KBO 40주년 엠블럼 저지 화이트 (마킹 포함)', 119000, '', '89488', '23-04-12', '화이트', 119000, 'OverThePitch1.jpg', 34, 3, 17,2),
('Over The Pitch x KBO The 40th Anniversary Emblem Jersey White (with Marking)', '오버더피치 x KBO 40주년 엠블럼 저지 화이트 (마킹 포함)', 119000, '', '89488', '23-04-12', '화이트', 119000, 'OverThePitch1.jpg', 34, 3, 18,2),
('Over The Pitch x KBO The 40th Anniversary Character Logo Jersey Navy (with Marking)', '오버더피치 x KBO 40주년 캐릭터 로고 저지 네이비 (마킹 포함)', 119000, '', '89489', '23-04-12', '네이비', 119000, 'OverThePitch2.jpg', 34, 3, 15,2),
('Over The Pitch x KBO The 40th Anniversary Character Logo Jersey Navy (with Marking)', '오버더피치 x KBO 40주년 캐릭터 로고 저지 네이비 (마킹 포함)', 119000, '', '89489', '23-04-12', '네이비', 119000, 'OverThePitch2.jpg', 34, 3, 16,2),
('Over The Pitch x KBO The 40th Anniversary Character Logo Jersey Navy (with Marking)', '오버더피치 x KBO 40주년 캐릭터 로고 저지 네이비 (마킹 포함)', 119000, '', '89489', '23-04-12', '네이비', 119000, 'OverThePitch2.jpg', 34, 3, 17,2),
('Over The Pitch x KBO The 40th Anniversary Character Logo Jersey Navy (with Marking)', '오버더피치 x KBO 40주년 캐릭터 로고 저지 네이비 (마킹 포함)', 119000, '', '89489', '23-04-12', '네이비', 119000, 'OverThePitch2.jpg', 34, 3, 18,2),

('Opening Project Team Play T Shirt White', '오프닝프로젝트 팀 플레이 티셔츠 화이트', 64000, '', '115503', '23-04-12', '화이트', 64000, 'OpeningProject1.jpg', 35, 3, 15,2),
('Opening Project Team Play T Shirt White', '오프닝프로젝트 팀 플레이 티셔츠 화이트', 64000, '', '115503', '23-04-12', '화이트', 64000, 'OpeningProject1.jpg', 35, 3, 16,2),
('Opening Project Team Play T Shirt White', '오프닝프로젝트 팀 플레이 티셔츠 화이트', 64000, '', '115503', '23-04-12', '화이트', 64000, 'OpeningProject1.jpg', 35, 3, 17,2),
('Opening Project Team Play T Shirt Black', '오프닝프로젝트 팀 플레이 티셔츠 블랙', 64000, '', '115502', '23-04-12', '블랙', 64000, 'OpeningProject2.jpg', 37, 3, 15,2),
('Opening Project Team Play T Shirt Black', '오프닝프로젝트 팀 플레이 티셔츠 블랙', 64000, '', '115502', '23-04-12', '블랙', 64000, 'OpeningProject2.jpg', 37, 3, 16,2),
('Opening Project Team Play T Shirt Black', '오프닝프로젝트 팀 플레이 티셔츠 블랙', 64000, '', '115502', '23-04-12', '블랙', 64000, 'OpeningProject2.jpg', 37, 3, 17,2),

('Ojos 2Way Allotherm Light Windshell Grey', '오호스 투웨이 알로덤 라이트 윈드쉘 그레이', 298000, '', '110979', '23-04-12', '그레이', 298000, 'OJOS1.jpg', 36, 2, 16,2),
('Ojos 2Way Allotherm Light Windshell White', '오호스 투웨이 알로덤 라이트 윈드쉘 화이트', 298000, '', '110978', '23-04-12', '화이트', 298000, 'OJOS2.jpg', 36, 2, 16,2),

('Polo Ralph Lauren Classic Fit Garment-Dyed Oxford Shirt White', '폴로 랄프 로렌 클래식핏 가먼트다이 옥스포드 셔츠 화이트', 170000, '', 'MNPOWOV16820357100/710729232003', '23-04-12', 'WHITE', 189000, 'Polo1.jpg', 37, 3, 15,2),
('Polo Ralph Lauren Classic Fit Garment-Dyed Oxford Shirt White', '폴로 랄프 로렌 클래식핏 가먼트다이 옥스포드 셔츠 화이트', 170000, '', 'MNPOWOV16820357100/710729232003', '23-04-12', 'WHITE', 189000, 'Polo1.jpg', 37, 3, 16,2),
('Polo Ralph Lauren Classic Fit Garment-Dyed Oxford Shirt White', '폴로 랄프 로렌 클래식핏 가먼트다이 옥스포드 셔츠 화이트', 170000, '', 'MNPOWOV16820357100/710729232003', '23-04-12', 'WHITE', 189000, 'Polo1.jpg', 37, 3, 17,2),
('Polo Ralph Lauren Classic Fit Garment-Dyed Oxford Shirt White', '폴로 랄프 로렌 클래식핏 가먼트다이 옥스포드 셔츠 화이트', 170000, '', 'MNPOWOV16820357100/710729232003', '23-04-12', 'WHITE', 189000, 'Polo1.jpg', 37, 3, 18,2),
('Polo Ralph Lauren Classic Fit Denim Shirt', '폴로 랄프 로렌 클래식핏 데님 셔츠', 156000, '', 'MNPOWOV16820204410/710548537001', '23-04-12', 'DENIM', 189000, 'Polo1.jpg', 37, 3, 15,2),
('Polo Ralph Lauren Classic Fit Denim Shirt', '폴로 랄프 로렌 클래식핏 데님 셔츠', 156000, '', 'MNPOWOV16820204410/710548537001', '23-04-12', 'DENIM', 189000, 'Polo1.jpg', 37, 3, 16,2),
('Polo Ralph Lauren Classic Fit Denim Shirt', '폴로 랄프 로렌 클래식핏 데님 셔츠', 156000, '', 'MNPOWOV16820204410/710548537001', '23-04-12', 'DENIM', 189000, 'Polo1.jpg', 37, 3, 17,2),
('Polo Ralph Lauren Classic Fit Denim Shirt', '폴로 랄프 로렌 클래식핏 데님 셔츠', 156000, '', 'MNPOWOV16820204410/710548537001', '23-04-12', 'DENIM', 189000, 'Polo1.jpg', 37, 3, 18,2),

('Punch Drunk Parties Hurt Logo Poncho Zip Hoodie BLACK', '펀치 드렁크 파티즈 헐트 로고 판초 집 후디 블랙', 179000, '', '118949', '23-04-12', 'BLACK', 179000, 'PunchDrunkParties1.jpg', 38, 3, 15,2),
('Punch Drunk Parties Hurt Logo Poncho Zip Hoodie BLACK', '펀치 드렁크 파티즈 헐트 로고 판초 집 후디 블랙', 179000, '', '118949', '23-04-12', 'BLACK', 179000, 'PunchDrunkParties1.jpg', 38, 3, 16,2),
('Punch Drunk Parties Hurt Logo Poncho Zip Hoodie BLACK', '펀치 드렁크 파티즈 헐트 로고 판초 집 후디 블랙', 179000, '', '118949', '23-04-12', 'BLACK', 179000, 'PunchDrunkParties1.jpg', 38, 3, 17,2),
('Punch Drunk Parties Hurt Logo Poncho Zip Hoodie BLACK', '펀치 드렁크 파티즈 헐트 로고 판초 집 후디 블랙', 179000, '', '118949', '23-04-12', 'BLACK', 179000, 'PunchDrunkParties1.jpg', 38, 3, 18,2),
('Punch Drunk Parties Knee Logo Sweatpants Grey', '펀치 드렁크 파티즈 니 로고 스웻팬츠 그레이', 89000, '', '99609', '23-04-12', 'GREY', 89000, 'PunchDrunkParties2.jpg', 38, 4, 15,2),
('Punch Drunk Parties Knee Logo Sweatpants Grey', '펀치 드렁크 파티즈 니 로고 스웻팬츠 그레이', 89000, '', '99609', '23-04-12', 'GREY', 89000, 'PunchDrunkParties2.jpg', 38, 4, 16,2),
('Punch Drunk Parties Knee Logo Sweatpants Grey', '펀치 드렁크 파티즈 니 로고 스웻팬츠 그레이', 89000, '', '99609', '23-04-12', 'GREY', 89000, 'PunchDrunkParties2.jpg', 38, 4, 17,2),
('Punch Drunk Parties Knee Logo Sweatpants Grey', '펀치 드렁크 파티즈 니 로고 스웻팬츠 그레이', 89000, '', '99609', '23-04-12', 'GREY', 89000, 'PunchDrunkParties2.jpg', 38, 4, 18,2),

('Polar Skate Co 92 Denim Washed Black', '폴라 스케이트 92 데님 워시드 블랙', 170100, '', '102692', '23-04-12', 'BLACK', 170100, 'PolarSkateCo1.jpg', 39, 4, 15,2),
('Polar Skate Co 92 Denim Washed Black', '폴라 스케이트 92 데님 워시드 블랙', 170100, '', '102692', '23-04-12', 'BLACK', 170100, 'PolarSkateCo1.jpg', 39, 4, 16,2),
('Polar Skate Co 92 Denim Washed Black', '폴라 스케이트 92 데님 워시드 블랙', 170100, '', '102692', '23-04-12', 'BLACK', 170100, 'PolarSkateCo1.jpg', 39, 4, 17,2),
('Polar Skate Co Lasse Track Pants Black', '폴라 스케이트 라세 트랙 팬츠 블랙', 219000, '', '102683', '23-04-12', 'BLACK', 219000, 'PolarSkateCo2.jpg', 39, 4, 14,2),
('Polar Skate Co Lasse Track Pants Black', '폴라 스케이트 라세 트랙 팬츠 블랙', 219000, '', '102683', '23-04-12', 'BLACK', 219000, 'PolarSkateCo2.jpg', 39, 4, 15,2),
('Polar Skate Co Lasse Track Pants Black', '폴라 스케이트 라세 트랙 팬츠 블랙', 219000, '', '102683', '23-04-12', 'BLACK', 219000, 'PolarSkateCo2.jpg', 39, 4, 16,2),
('Polar Skate Co Lasse Track Pants Black', '폴라 스케이트 라세 트랙 팬츠 블랙', 219000, '', '102683', '23-04-12', 'BLACK', 219000, 'PolarSkateCo2.jpg', 39, 4, 17,2),
('Polar Skate Co Lasse Track Pants Black', '폴라 스케이트 라세 트랙 팬츠 블랙', 219000, '', '102683', '23-04-12', 'BLACK', 219000, 'PolarSkateCo2.jpg', 39, 4, 18,2),

('Recto Women Summer Night Top Bluish Charcoal', '렉토 우먼 썸머 나잇 탑 블루이쉬 차콜', 258000, 'W', '120756', '23-04-12', '챠콜', 258000, 'Recto1.jpg', 40, 3, 14,2),
('Recto Women Summer Night Top Bluish Charcoal', '렉토 우먼 썸머 나잇 탑 블루이쉬 차콜', 258000, 'W', '120756', '23-04-12', '챠콜', 258000, 'Recto1.jpg', 40, 3, 15,2),
('Recto Women Summer Night Top Bluish Charcoal', '렉토 우먼 썸머 나잇 탑 블루이쉬 차콜', 258000, 'W', '120756', '23-04-12', '챠콜', 258000, 'Recto1.jpg', 40, 3, 16,2),
('Recto Women Summer Night Top Bluish Charcoal', '렉토 우먼 썸머 나잇 탑 블루이쉬 차콜', 258000, 'W', '120756', '23-04-12', '챠콜', 258000, 'Recto1.jpg', 40, 3, 17,2),
('Recto Women Summer Night Top Bluish Charcoal', '렉토 우먼 썸머 나잇 탑 블루이쉬 차콜', 258000, 'W', '120756', '23-04-12', '챠콜', 258000, 'Recto1.jpg', 40, 3, 18,2),

('Recto Womens Destroyed Wide Jeans Light Blue', '렉토 우먼 디스트로이드 와이드 진 라이트 블루', 298000, 'W', '120754', '23-04-12', '블루', 298000, 'Recto2.jpg', 40, 4, 15,2),
('Recto Womens Destroyed Wide Jeans Light Blue', '렉토 우먼 디스트로이드 와이드 진 라이트 블루', 298000, 'W', '120754', '23-04-12', '블루', 298000, 'Recto2.jpg', 40, 4, 16,2),
('Recto Womens Destroyed Wide Jeans Light Blue', '렉토 우먼 디스트로이드 와이드 진 라이트 블루', 298000, 'W', '120754', '23-04-12', '블루', 298000, 'Recto2.jpg', 40, 4, 17,2),
('Recto Womens Destroyed Wide Jeans Light Blue', '렉토 우먼 디스트로이드 와이드 진 라이트 블루', 298000, 'W', '120754', '23-04-12', '블루', 298000, 'Recto2.jpg', 40, 4, 18,2),

('Rootfinder Maneuver Hoody Vest Black', '루트파인더 메뉴버 후디 베스트 블랙', 229000, 'M', '120002', '23-04-12', '블랙', 229000, 'Rootfinder1.jpg', 41, 3, 17,2),
('Rootfinder Maneuver Hoody Vest Deep Sea', '루트파인더 메뉴버 후디 베스트 딥 씨', 229000, 'M', '120001', '23-04-12', '카키', 229000, 'Rootfinder2.jpg', 41, 3, 17,2),

('Stone Island B0943 Nylon Metal Swimming Trunk Black - 23SS', '스톤 아일랜드 B0943 나일론 메탈 스위밍 트렁크 블랙 - 23SS', 249000, '', '1015B0943-A0029', '23-04-12', 'BLACK', 249000, 'StoneIsland1.jpg', 42, 4, 14,2),
('Stone Island B0943 Nylon Metal Swimming Trunk Black - 23SS', '스톤 아일랜드 B0943 나일론 메탈 스위밍 트렁크 블랙 - 23SS', 249000, '', '1015B0943-A0029', '23-04-12', 'BLACK', 249000, 'StoneIsland1.jpg', 42, 4, 15,2),
('Stone Island B0943 Nylon Metal Swimming Trunk Black - 23SS', '스톤 아일랜드 B0943 나일론 메탈 스위밍 트렁크 블랙 - 23SS', 249000, '', '1015B0943-A0029', '23-04-12', 'BLACK', 249000, 'StoneIsland1.jpg', 42, 4, 16,2),
('Stone Island B0943 Nylon Metal Swimming Trunk Black - 23SS', '스톤 아일랜드 B0943 나일론 메탈 스위밍 트렁크 블랙 - 23SS', 249000, '', '1015B0943-A0029', '23-04-12', 'BLACK', 249000, 'StoneIsland1.jpg', 42, 4, 17,2),
('Stone Island B0943 Nylon Metal Swimming Trunk Black - 23SS', '스톤 아일랜드 B0943 나일론 메탈 스위밍 트렁크 블랙 - 23SS', 249000, '', '1015B0943-A0029', '23-04-12', 'BLACK', 249000, 'StoneIsland1.jpg', 42, 4, 18,2),
('Stone Island 63051 Cotton Fleece Garment Dyed Sweatshirt Black - 23SS', '스톤 아일랜드 63051 코튼 플리스 가먼트 다이드 스웨트셔츠 블랙 - 23SS', 320000, '', '101563051-A0029', '23-04-12', 'BLACK', 320000, 'StoneIsland2.jpg', 42, 3, 14,2),
('Stone Island 63051 Cotton Fleece Garment Dyed Sweatshirt Black - 23SS', '스톤 아일랜드 63051 코튼 플리스 가먼트 다이드 스웨트셔츠 블랙 - 23SS', 320000, '', '101563051-A0029', '23-04-12', 'BLACK', 320000, 'StoneIsland2.jpg', 42, 3, 15,2),
('Stone Island 63051 Cotton Fleece Garment Dyed Sweatshirt Black - 23SS', '스톤 아일랜드 63051 코튼 플리스 가먼트 다이드 스웨트셔츠 블랙 - 23SS', 320000, '', '101563051-A0029', '23-04-12', 'BLACK', 320000, 'StoneIsland2.jpg', 42, 3, 16,2),
('Stone Island 63051 Cotton Fleece Garment Dyed Sweatshirt Black - 23SS', '스톤 아일랜드 63051 코튼 플리스 가먼트 다이드 스웨트셔츠 블랙 - 23SS', 320000, '', '101563051-A0029', '23-04-12', 'BLACK', 320000, 'StoneIsland2.jpg', 42, 3, 17,2),
('Stone Island 63051 Cotton Fleece Garment Dyed Sweatshirt Black - 23SS', '스톤 아일랜드 63051 코튼 플리스 가먼트 다이드 스웨트셔츠 블랙 - 23SS', 320000, '', '101563051-A0029', '23-04-12', 'BLACK', 320000, 'StoneIsland2.jpg', 42, 3, 18,2),

('Stussy Built Tough T-Shirt Black', '스투시 빌트 터프 티셔츠 블랙', 156000, '', '1904893', '22-07-29', 'BLACK', 62000, 'Stussy1.jpg', 43, 3, 16,2),
('Stussy Fuzzy Dice T-Shirt White', '스투시 퍼지 다이스 티셔츠 화이트', 113000, '', '1904765', '23-04-12', 'WHITE', 62000, 'Stussy2.jpg', 43, 3, 16,2),

('Supreme Inside Out Box Logo Hooded Sweatshirt Heather Grey - 23SS', '슈프림 인사이드 아웃 박스 로고 후드 스웨트셔츠 헤더 그레이 - 23SS', 419000, '', '-', '23-03-23', 'HEATHER GREY', 225100, 'Supreme1.jpg', 44, 3, 16,2),
('Supreme Inside Out Box Logo Hooded Sweatshirt Heather Grey - 23SS', '슈프림 인사이드 아웃 박스 로고 후드 스웨트셔츠 헤더 그레이 - 23SS', 419000, '', '-', '23-03-23', 'HEATHER GREY', 225100, 'Supreme1.jpg', 44, 3, 17,2),
('Supreme Inside Out Box Logo Hooded Sweatshirt Heather Grey - 23SS', '슈프림 인사이드 아웃 박스 로고 후드 스웨트셔츠 헤더 그레이 - 23SS', 419000, '', '-', '23-03-23', 'HEATHER GREY', 225100, 'Supreme1.jpg', 44, 3, 18,2),
('Supreme Box Logo Crewneck Heather Grey - 22FW', '슈프림 박스로고 크루넥 헤더 그레이 - 22FW', 340000, '', '-', '22-12-08', 'HEATHER GREY', 211700, 'Supreme2.jpg', 44, 3, 16,2),

('s/e/o Women Cropped Hood Zip Up WHITE', '에스이오 우먼 크롭 후드 집업 화이트', 168000, 'W', '115440', '23-04-12', '화이트', 168000, 'seo1.jpg', 45, 3, 16,2),
('s/e/o Panel Nylon Half Top Cream', '에스이오 페널 나일론 하프 탑 크림', 198000, 'W', '115438', '23-04-12', '크림', 198000, 'seo2.jpg', 45, 3, 16,2),

('Thrasher PYRAMID tee BLACK', '트레셔 피라미드 티셔츠 블랙', 48000, '', '115438', '23-04-12', '블랙', 48000, 'Thrasher1.jpg', 46, 3, 16,2),
('Thrasher BAKER X THRASHER T-SHIRT RED', '트레셔 베이커X트레셔 티셔츠 레드', 58000, '', '116980', '23-04-12', '레드', 48000, 'Thrasher2.jpg', 46, 3, 16,2),

('The Identity Project Ancient Symbol Zipper Jacket Cream', '더 아이덴티티 프로젝트 에이션트 심볼 지퍼 자켓 크림', 198000, '', '101341', '23-04-12', '크림', 198000, 'TheIdentityProject1.jpg', 47, 3, 16,2),
('The Identity Project Gradation Denim Pants Asphalt black', '더 아이덴티티 프로젝트 그라데이션 데님 팬츠 아스팔트 블랙', 149000, '', '101341', '23-04-12', '블랙', 149000, 'TheIdentityProject2.jpg', 47, 4, 14,2),
('The Identity Project Gradation Denim Pants Asphalt black', '더 아이덴티티 프로젝트 그라데이션 데님 팬츠 아스팔트 블랙', 149000, '', '101341', '23-04-12', '블랙', 149000, 'TheIdentityProject2.jpg', 47, 4, 15,2),
('The Identity Project Gradation Denim Pants Asphalt black', '더 아이덴티티 프로젝트 그라데이션 데님 팬츠 아스팔트 블랙', 149000, '', '101341', '23-04-12', '블랙', 149000, 'TheIdentityProject2.jpg', 47, 4, 16,2),
('The Identity Project Gradation Denim Pants Asphalt black', '더 아이덴티티 프로젝트 그라데이션 데님 팬츠 아스팔트 블랙', 149000, '', '101341', '23-04-12', '블랙', 149000, 'TheIdentityProject2.jpg', 47, 4, 17,2),
('The Identity Project Gradation Denim Pants Asphalt black', '더 아이덴티티 프로젝트 그라데이션 데님 팬츠 아스팔트 블랙', 149000, '', '101341', '23-04-12', '블랙', 149000, 'TheIdentityProject2.jpg', 47, 4, 18,2),

('Theilma Women Spell Denim Vest Black', '더일마 우먼 스펠 데님 베스트 블랙', 189000, 'W', '121236', '23-04-12', '블랙', 189000, 'TheIlma1.jpg', 48, 3, 15,2),
('Theilma Women Spell Denim Vest Black', '더일마 우먼 스펠 데님 베스트 블랙', 189000, 'W', '121236', '23-04-12', '블랙', 189000, 'TheIlma1.jpg', 48, 3, 16,2),
('Theilma Women Spell Denim Vest Black', '더일마 우먼 스펠 데님 베스트 블랙', 189000, 'W', '121236', '23-04-12', '블랙', 189000, 'TheIlma1.jpg', 48, 3, 17,2),
('Theilma Women Millet Tuck Hem Shirt Sky Blue', '더일마 우먼 밀레 턱 헴 셔츠 스카이 블루', 249000, 'W', '121234', '23-04-12', '블루', 249000, 'TheIlma2.jpg', 48, 3, 16,2),
('Theilma Women Millet Tuck Hem Shirt Sky Blue', '더일마 우먼 밀레 턱 헴 셔츠 스카이 블루', 249000, 'W', '121234', '23-04-12', '블루', 249000, 'TheIlma2.jpg', 48, 3, 17,2),

('Typing Mistake 22 After Summer Graphic Hooded Jacket Black - 22FW', '타이핑미스테이크 22 애프터 썸머 그래픽 후드 자켓 블랙 - 22FW', 268000, '', '85692', '23-04-12', '블랙', 268000, 'TypingMistake1.jpg', 49, 2, 16,2),
('Typing Mistake 22 After Summer Graphic Hooded Jacket White - 22FW', '타이핑미스테이크 22 애프터 썸머 그래픽 후드 자켓 화이트 - 22FW', 268000, '', '85692', '23-04-12', '화이트', 268000, 'TypingMistake2.jpg', 49, 2, 16,2),

('UGG x Telfar Medium Shopping Bag Chestnut', '어그 x 텔파 미디움 쇼핑백 체스트넛', 498000, '', '91448', '23-04-12', '체스트넛', 498000, 'Ugg1.jpg', 50, 5, 19,3),
('UGG x Telfar Small Shopping Bag Chestnut', '어그 x 텔파 스몰 쇼핑백 체스트넛', 328000, '', '91447', '23-04-12', '체스트넛', 328000, 'Ugg2.jpg', 50, 5, 19,3),

('Ulika Sanctus Women Pleated Sweatshirt Mint', '울리카 상투스 우먼 플리티드 스웨트셔츠 민트', 89000, 'W', '91447', '23-04-12', '민트', 89000, 'Ulika1.jpg', 51, 3, 14,2),
('Ulika Sanctus Women Pleated Sweatshirt Mint', '울리카 상투스 우먼 플리티드 스웨트셔츠 민트', 89000, 'W', '91447', '23-04-12', '민트', 89000, 'Ulika1.jpg', 51, 3, 15,2),
('Ulika Sanctus Women Pleated Sweatshirt Mint', '울리카 상투스 우먼 플리티드 스웨트셔츠 민트', 89000, 'W', '91447', '23-04-12', '민트', 89000, 'Ulika1.jpg', 51, 3, 16,2),
('Ulika Sanctus Women Pleated Sweatshirt Mint', '울리카 상투스 우먼 플리티드 스웨트셔츠 민트', 89000, 'W', '91447', '23-04-12', '민트', 89000, 'Ulika1.jpg', 51, 3, 17,2),
('Ulika Sanctus Women Pleated Sweatshirt Mint', '울리카 상투스 우먼 플리티드 스웨트셔츠 민트', 89000, 'W', '91447', '23-04-12', '민트', 89000, 'Ulika1.jpg', 51, 3, 18,2),
('Ulika Sanctus Women Wingbone Shell Jacket Beige', '울리카 상투스 우먼 윙본 쉘 자켓 베이지', 278000, 'W', '85182', '23-04-12', '베이지', 278000, 'Ulika2.jpg', 51, 2, 14,2),
('Ulika Sanctus Women Wingbone Shell Jacket Beige', '울리카 상투스 우먼 윙본 쉘 자켓 베이지', 278000, 'W', '85182', '23-04-12', '베이지', 278000, 'Ulika2.jpg', 51, 2, 15,2),
('Ulika Sanctus Women Wingbone Shell Jacket Beige', '울리카 상투스 우먼 윙본 쉘 자켓 베이지', 278000, 'W', '85182', '23-04-12', '베이지', 278000, 'Ulika2.jpg', 51, 2, 16,2),
('Ulika Sanctus Women Wingbone Shell Jacket Beige', '울리카 상투스 우먼 윙본 쉘 자켓 베이지', 278000, 'W', '85182', '23-04-12', '베이지', 278000, 'Ulika2.jpg', 51, 2, 17,2),
('Ulika Sanctus Women Wingbone Shell Jacket Beige', '울리카 상투스 우먼 윙본 쉘 자켓 베이지', 278000, 'W', '85182', '23-04-12', '베이지', 278000, 'Ulika2.jpg', 51, 2, 18,2),

('Undermycar Legion.06 Multi Zipper Pocket Pants Black', '언더마이카 리전.06 멀티 지퍼 포켓 팬츠 블랙', 189000, '', '97164', '23-04-12', '블랙', 189000, 'UnderMyCar1.png', 52, 4, 11,2),
('Undermycar Legion.06 Multi Zipper Pocket Pants Black', '언더마이카 리전.06 멀티 지퍼 포켓 팬츠 블랙', 189000, '', '97164', '23-04-12', '블랙', 189000, 'UnderMyCar1.png', 52, 4, 12,2),
('Undermycar Legion.06 Multi Zipper Pocket Pants Black', '언더마이카 리전.06 멀티 지퍼 포켓 팬츠 블랙', 189000, '', '97164', '23-04-12', '블랙', 189000, 'UnderMyCar1.png', 52, 4, 13,2),
('Undermycar Legion.06 Multi Zipper Pocket Pants Black', '언더마이카 리전.06 멀티 지퍼 포켓 팬츠 블랙', 189000, '', '97164', '23-04-12', '블랙', 189000, 'UnderMyCar1.png', 52, 4, 14,2),
('Undermycar Legion.06 Multi Zipper Pocket Pants Black', '언더마이카 리전.06 멀티 지퍼 포켓 팬츠 블랙', 189000, '', '97164', '23-04-12', '블랙', 189000, 'UnderMyCar1.png', 52, 4, 15,2),
('Undermycar Legion.02 Balmacaan Oversized Wool Coat Black', '언더마이카 리전.02 발마칸 오버사이즈 울 코트 블랙', 339000, '', '85853', '23-04-12', '블랙', 339000, 'UnderMyCar2.jpg', 52, 2, 16,2),

('Vdr Classic Henley Neck Long Sleeve Light Beige', '비디알 클래식 헨리넥 롱슬리브 라이트 베이지', 69000, 'M', '85853', '23-04-12', '베이지', 69000, 'vdr1.jpg', 53, 3, 16,2),
('Vdr 118 Classic Straight Vintage Light Sanforized', '비디알 118 클래식 스트레이트 빈티지 라이트 샌포라이즈드', 149000, 'M', '109226', '23-04-12', '빈티지 라이트', 149000, 'vdr2.jpg', 53, 4, 16,2),

('Wnderkammer Women Coloration Collar Knit Top Cream', '분더캄머 우먼 컬러레이션 카라 니트 탑 크림', 198000, 'W', '99463', '23-04-12', '크림', 198000, 'WinderKammer1.jpg', 54, 3, 16,2),
('Wnderkammer Women Back Open Knit Top Pink', '분더캄머 우먼 백 오픈 니트 탑 핑크', 218000, 'W', '99452', '23-04-12', '핑크', 218000, 'WinderKammer2.jpg', 54, 3, 16,2),

('Won Chaser Chaser Hoodie Black', '원체이서 체이서 후드 블랙', 129000, '', '89852', '23-04-12', '블랙', 129000, 'WonChaser1.jpg', 55, 3, 14,2),
('Won Chaser Chaser Hoodie Black', '원체이서 체이서 후드 블랙', 129000, '', '89852', '23-04-12', '블랙', 129000, 'WonChaser1.jpg', 55, 3, 15,2),
('Won Chaser Chaser Hoodie Black', '원체이서 체이서 후드 블랙', 129000, '', '89852', '23-04-12', '블랙', 129000, 'WonChaser1.jpg', 55, 3, 16,2),
('Won Chaser Chaser Hoodie Black', '원체이서 체이서 후드 블랙', 129000, '', '89852', '23-04-12', '블랙', 129000, 'WonChaser1.jpg', 55, 3, 17,2),
('Won Chaser Chaser Hoodie Black', '원체이서 체이서 후드 블랙', 129000, '', '89852', '23-04-12', '블랙', 129000, 'WonChaser1.jpg', 55, 3, 18,2),
('Won Chaser Chaser Sweatpants Black', '원체이서 체이서 스웨트팬츠 블랙', 99000, '', '89851', '23-04-12', '블랙', 99000, 'WonChaser2.jpg', 55, 4, 14,2),
('Won Chaser Chaser Sweatpants Black', '원체이서 체이서 스웨트팬츠 블랙', 99000, '', '89851', '23-04-12', '블랙', 99000, 'WonChaser2.jpg', 55, 4, 15,2),
('Won Chaser Chaser Sweatpants Black', '원체이서 체이서 스웨트팬츠 블랙', 99000, '', '89851', '23-04-12', '블랙', 99000, 'WonChaser2.jpg', 55, 4, 16,2),
('Won Chaser Chaser Sweatpants Black', '원체이서 체이서 스웨트팬츠 블랙', 99000, '', '89851', '23-04-12', '블랙', 99000, 'WonChaser2.jpg', 55, 4, 17,2),
('Won Chaser Chaser Sweatpants Black', '원체이서 체이서 스웨트팬츠 블랙', 99000, '', '89851', '23-04-12', '블랙', 99000, 'WonChaser2.jpg', 55, 4, 18,2),

('Waviness Multi Purpose Zipper Bag Black', '웨이비니스 멀티 퍼포즈 지퍼백 블랙', 179000, '', '106912', '23-04-12', '블랙', 179000, 'Waviness1.jpg', 56, 5, 16,2),
('Waviness Oblique Racer Jacket Moss Green', '웨이비니스 오블리크 레이서 자켓 모스 그린', 368000, '', '106927', '23-04-12', '그린', 368000, 'Waviness2.jpg', 56, 2, 16,2),

('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 1,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 2,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 3,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 4,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 5,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 6,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 7,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 8,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 9,1),
('Yieyie Billy Sneakers White', '이에이에 빌리 스니커즈 화이트', 178000, '', '117533', '23-04-12', '화이트', 178000, 'Yieyie1.jpg', 57, 1, 10,1),
('Yieyie Women Sierra Bag Opal', '이에이에 우먼 시에라 백 오팔', 98000, 'W', '117533', '23-04-12', '오팔', 98000, 'Yieyie2.jpg', 57, 5, 19,3);




-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- size_tb
alter table size_tb AUTO_INCREMENT=1;
alter table size_tb add column size_category_id int;
alter table size_tb add foreign key (size_category_id) references size_category_tb(id);
insert into size_tb(name, size_category_id)
values('215', 1),('220', 1),('225', 1),('230', 1),('235', 1),('240', 1),('245', 1),('250', 1),('255', 1),
	  ('260', 1),('265', 1),('270', 1),('280', 1),('XS', 2),('S', 2),('M', 2),('L', 2),('XL', 2),('One', 3); 
select * from cart_tb;
select * 
from size_tb as s
inner join size_category_tb as sc
on s.size_category_id = sc.id
where sc.id = 1;
