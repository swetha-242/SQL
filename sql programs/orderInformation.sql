/*primary key and foreign key usage */
create database orderInformation;
use orderInformation;

create table orrder_info(o_id int,o_name varchar(20),order_id int primary key,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20));

select * from orrder_info;

insert into orrder_info values(1,'milkshakes',21,'2024-07-25 11:20:30','manish','2024-07-28 02:40:50','ganesh'); 
insert into orrder_info values(2,'steel plates',22,'2024-05-12 01:33:10','hema','2024-05-03 12:40:55','veer'); 
insert into orrder_info values(3,'pendrive',23,'2024-04-10 06:32:45','kala','2024-06-11 05:04:12','prema'); 
insert into orrder_info values(4,'biscuit',24,'2024-06-24 08:46:42','girija','2024-07-25 05:45:37','gamya'); 
insert into orrder_info values(5,'pizza',25,'2024-02-02 09:32:29','suresh','2024-04-23 09:50:54','sema'); 


create table payment_info(p_id int,payment_price bigint,payment_id int primary key,p_order_id int,payment_status boolean,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(p_order_id) references orrder_info(order_id));

select * from payment_info;
desc payment_info;
drop table payment_info;
insert into payment_info values(1,23000,31,21,true,'2024-07-25 11:20:30','farroq','2024-07-28 02:40:50','siyana'); 
insert into payment_info values(2,23000,32,22,false,'2024-05-12 01:33:10','danush','2024-05-03 12:40:55','kiya'); 
insert into payment_info values(3,23000,33,23,true,'2024-04-10 06:32:45','geetha','2024-06-11 05:04:12','sonu'); 
insert into payment_info values(4,23000,34,24,true,'2024-06-24 08:46:44','paal','2024-07-25 05:45:37','saha'); 
insert into payment_info values(5,23000,35,25,false,'2024-02-02 09:32:29','neema','2024-04-23 09:50:54','siya'); 

create table restaurant_info(r_id int,r_name varchar(20),resto_id int primary key,r_location varchar(20),r_order_id int,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20));

select * from orrder_info;

insert into orrder_info values(1,'milkshakes',21,'2024-07-25 11:20:30','manish','2024-07-28 02:40:50','ganesh'); 
insert into orrder_info values(2,'steel plates',22,'2024-05-12 01:33:10','hema','2024-05-03 12:40:55','veer'); 
insert into orrder_info values(3,'pendrive',23,'2024-04-10 06:32:45','kala','2024-06-11 05:04:12','prema'); 
insert into orrder_info values(4,'biscuit',24,'2024-06-24 08:46:42','girija','2024-07-25 05:45:37','gamya'); 
insert into orrder_info values(5,'pizza',25,'2024-02-02 09:32:29','suresh','2024-04-23 09:50:54','sema'); 


create table payment_info(p_id int,payment_price bigint,payment_id int primary key,p_order_id int,payment_status boolean,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(p_order_id) references orrder_info(order_id));

select * from payment_info;
desc payment_info;
drop table payment_info;
insert into payment_info values(1,23000,31,21,true,'2024-07-25 11:20:30','farroq','2024-07-28 02:40:50','siyana'); 
insert into payment_info values(2,23000,32,22,false,'2024-05-12 01:33:10','danush','2024-05-03 12:40:55','kiya'); 
insert into payment_info values(3,23000,33,23,true,'2024-04-10 06:32:45','geetha','2024-06-11 05:04:12','sonu'); 
insert into payment_info values(4,23000,34,24,true,'2024-06-24 08:46:44','paal','2024-07-25 05:45:37','saha'); 
insert into payment_info values(5,23000,35,25,false,'2024-02-02 09:32:29','neema','2024-04-23 09:50:54','siya'); 

create table resto_info(id int,resto_name varchar(20),resto_id int primary key,r_location varchar(20),res_order_id int,r_ratings varchar(20),res_payment_id int,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(res_order_id) references orrder_info(order_id),foreign key(res_payment_id) references payment_info(payment_id));

desc resto_info;

insert into resto_info values(1,'bangalore tiffin',501,'rajajinagara',21,5,31,now(),'amith',now(),'shreyas');
insert into resto_info values(2,'south indian tiffin',502,'vijayanagara',22,4,32,'2024-01-10 10:20:30','anand','2024-01-10 10:50:30','shreya');
insert into resto_info values(3,'mysore cafe',503,'hampinagara',21,4,31,'2023-10-16 06:10:20','ankith','2023-10-16 07:10:20','aadi');
insert into resto_info values(4,'sukruth tiffin',504,'banashankari',23,3,33,now(),'kishan',now(),'kishor');
insert into resto_info values(5,'lakshmi tiffin',505,'kengeri',24,2,35,'2024-3-18 19:20:30','kala','2024-3-18 19:40:30','radika');


create table deliivery_id(id int,person_name varchar(20),mode_of_payment enum('online','offline'),deli_resto_id int,deli_order_id int,created_at timestamp,
created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(deli_resto_id) references resto_info(resto_id),foreign key(deli_order_id) references orrder_info(order_id));

desc deliivery_id;
insert into deliivery_id values(31,'archana','online',501,21,'2024-09-16 05:30:00','bhuvan','2024-09-16 06:30:00','soundarya');
insert into deliivery_id values(32,'ravi','online',502,22,now(),'ramya',now(),'shalini');
insert into deliivery_id values(33,'shashi','online',503,23,'2024-06-27 09:20:30','sharmila','2024-06-27 09:50:30','amrutha');
insert into deliivery_id values(34,'akshitha','online',505,24,'2023-10-16 06:10:20','sanjana','2023-10-16 07:10:20','dhananjay');
insert into deliivery_id values(35,'preethi','online',504,25,now(),'khushi',now(),'anitha');