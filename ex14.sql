create table size_category_tb (
   id int primary key auto_increment,
    name varchar(10) not null
);

insert into size_category_tb(name)
values
   ('S'),
    ('C'),
    ('O');
select * from order_tb;
select count(*) AS count
		from product_tb
		where kor_name LIKE '2' OR
		eng_name LIKE
		'1' ;
         select count(*) as count
      from (select * from product_tb
      group by eng_name)a;
select count(*) as count
from (
	select * from product_tb
		where kor_name LIKE '울리카%' OR
		eng_name LIKE
		'Ulika%'
        GROUP BY eng_name
) as a;

select p.*, s.name as size_name
		from product_tb as p
		inner join size_tb as s
		on p.size_id = s.id
		where p.model_number = '108634';
select * from size_tb;

 select p.id, p.eng_name, p.kor_name, p.purchase,
      p.img_route, b.name as
      brand_name
      from product_tb as p
      inner join
      brand_tb as b
      on p.brand_id =
      b.id
      group by eng_name
      limit 1,
      8;
      
select count(*)
		from
		product_tb as p
		join category_tb as c
		on
		p.category_id = c.id
		where c.name
		like '';


alter table size_tb add column size_category_id int;
alter table size_tb add foreign key (size_category_id) references size_category_tb(id);

select * from product_tb;

alter table product_tb AUTO_INCREMENT=1;
