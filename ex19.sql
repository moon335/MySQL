리뷰 카테고리 테이블 추가했어요 !!

-- 리뷰 카테고리 테이블 생성 
create table review_category_tb (
   id int primary key auto_increment,
    name varchar(20) unique not null    
);

select * from review_tb;

alter table review_tb add column review_category_id int not null;
set foreign_key_checks=0;
alter table review_tb add constraint FOREIGN key(review_category_id) references review_category_tb(id);

desc review_tb;
select * from review_tb;
update review_tb 
set review_category_id =1
where id =1;

desc review_tb;
select * from review_tb;
update review_tb 
set review_category_id =2
where id =2;

desc review_tb;
select * from review_tb;
update review_tb 
set review_category_id =3
where id =3;

desc review_tb;
select * from review_tb;
update review_tb 
set review_category_id =4
where id =4;

desc review_tb;
select * from review_tb;
update review_tb 
set review_category_id =5
where id =5;

select * from review_category_tb;

insert into review_category_tb (name)
values('상의'), ('하의'), ('신발'), ('모자'), ('가방'), ('액세서리');