insert into product_tb(eng_name, kor_name, purchase, gender, model_number, release_date, color, release_price, img_route, brand_id, category_id, size_id)
values
	('aaaa', '가나다라', 100, 'M', 'ABC-123y72313', '1999-12-22', 'white', 300, 'img1.png', 1, 1, 1);
    
    
select *
      from product_tb 
      where model_number = 'ABC-123y72313' and size_id = 1;
      
 select p.*, s.name as size_name
      from product_tb as p
      inner join size_tb as s
      on p.size_id = s.id
      where p.model_number = 'ABC-123y72313' and s.name = 215;
update product_tb
set model_number = 'aaaaaaaaaa'
where id = 2;

select * 
from cart_tb
where id = 63;