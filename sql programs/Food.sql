create database Food;
use Food;

create table foood_info(id int not null unique,f_name varchar(20),food_id int primary key,f_pricee bigint,f_chef_name varchar(20),
constraint f_pricee_chk check(f_pricee>100));

select * from foood_info;
desc foood_info;

 drop table hotel_info;
 
create table hotell_info(id int not null,h_name varchar(20),hotel_id int primary key,h_location varchar(20),h_food_id int,no_of_hotels bigint,
constraint no_of_hotels_chk check(no_of_hotels>=100),foreign key(h_food_id)references foood_info(food_id));

insert into foood_info values(1,'idli',11,150,'umesh');
insert into foood_info values(2,'dose',12,200,'ganesh');
insert into foood_info values(3,'puri',13,180,'gyanesh');
insert into foood_info values(4,'rotti',14,259,'kala');
insert into foood_info values(5,'kulcha',15,120,'usha');
insert into foood_info values(6,'dal kichidi',16,140,'deepa');
insert into foood_info values(7,'pongal',17,143,'radha');
insert into foood_info values(8,'palav',18,134,'hema');
insert into foood_info values(9,'rice bath',19,160,'hitha');
insert into foood_info values(10,'biriyani',20,230,'nayana');

select * from hotell_info;
desc hotel_info;

insert into hotell_info values(1,'hitha',21,'shimoga',11,100);
insert into hotell_info values(2,'hima',22,'bengaluru',12,150);
insert into hotell_info values(3,'payal',23,'bidar',13,200);
insert into hotell_info values(4,'kishor',24,'kalburgi',14,210);
insert into hotell_info values(5,'kshama',25,'chitradurga',15,230);
insert into hotell_info values(6,'gagana',26,'hampi',16,180);
insert into hotell_info values(7,'gamya',27,'kolar',17,250);
insert into hotell_info values(8,'rohith',28,'davangere',18,320);
insert into hotell_info values(9,'manog',29,'peenya',19,210);
insert into hotell_info values(10,'seema',30,'badravathi',20,256);

select * from hotell_info;

/*BETWEEN*/

select * from foood_info where food_id between 12 and 16;
select * from hotell_info where id between 2 and 8;

/* like operator8*/

select * from foood_info where f_name like '%a';
select * from foood_info where f_name like 's%am%';
select * from foood_info where f_name like '_a%';

select * from hotell_info where h_location like '%a';
select * from hotell_info where h_location like 's%am%';
select * from hotell_info where h_location like '_a%';

/* order by*/

select * from foood_info order by f_name desc;
select * from hotell_info order by no_of_hotels;

/* UPPER */

select upper(f_name) from foood_info;
select upper(h_location) from hotell_info;

/* LOWER */

select lower(f_name) from foood_info;
select lower(h_location) from hotell_info;

/* length */

select length(f_name) from foood_info;
select length(h_location) from hotell_info;

/* CONCAT */

select concat(f_name,food_id) from foood_info;
select concat(no_of_hotels,h_location) from hotell_info;

/* INDEX */

show indexes from foood_info;
show indexes from hotell_info;
explain select * from foood_info where f_name='palav';
