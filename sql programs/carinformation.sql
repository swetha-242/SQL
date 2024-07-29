create database carinformation;
use carinformation;

create table car_info(c_id int,c_name varchar(20),c_price bigint,constraint c_price_chk check(c_price>50000),car_plate_id bigint not null ,car_owner_id bigint primary key);

alter table car_info add constraint c_name_uni unique(c_name);

alter table car_info drop index c_name_uni;

select * from car_info;
desc car_info;
insert into car_info values(1,'BMW',60000,1,50);
insert into car_info values(2,'Fortuner',1000000,2,51);
insert into car_info values(3,'breeza',89000,3,52);
insert into car_info values(4,'audi',76000,4,54);
insert into car_info values(5,'suzuki',8800000,5,55);

alter table car_info add constraint car_plate_id_chk check(car_plate_id>0 and car_plate_id<5436);

alter table car_info drop constraint car_plate_id_chk;

alter table car_info drop constraint car_owner_id;
