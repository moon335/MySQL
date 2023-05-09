delete from liketo_tb;
alter table liketo_tb drop foreign key liketo_tb_ibfk_2;
alter table liketo_tb add foreign key (review_id) references review_tb (id) on delete cascade;

select * from liketo_tb;

create table liketo_tb(
   id int auto_increment primary key,
    review_id int not null,
    user_id int not null,
    foreign key (user_id) references user_tb(id),
    foreign key(review_id) references review_tb(id) on delete cascade
);