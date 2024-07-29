create database foodInformation;
use foodInformation;

create table food_info(f_id int,f_name varchar(20),f_price bigint,constraint f_price_chk check(f_price>100),f_preparer_id bigint not null ,f_table_id bigint primary key);

alter table food_info add constraint f_name_uni unique(f_name);

alter table food_info drop index f_name_uni;
alter table food_info add column f_prepare_name varchar(20);
alter table food_info drop column f_prepare_name;

select * from food_info;
desc food_info;
insert into food_info values(1,'palav',300,1,50);
insert into food_info values(2,'ricebath',250,2,51);
insert into food_info values(3,'pizza',340,3,52);
insert into food_info values(4,'burger',436,4,54);
insert into food_info values(5,'chicken',346,5,55);


alter table food_info add constraint f_preparer_id_chk check(f_preparer_id>0 and f_preparer_id<50000);

alter table food_info drop constraint f_preparer_id_chk;

alter table food_info drop constraint f_table_id;
